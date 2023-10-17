#!/usr/bin/env python3

# -*- coding: utf-8 -*-

import argparse as AP
from coverage.mapreader import MapReader
import sys
import re
from functools import partial
from typing import TextIO, BinaryIO, Callable, Any

SymbolType = dict[str, int]


def calculate_checksum(save_file: BinaryIO, start_address: int, many_bytes: int) -> int:
    chksum = 0
    save_file.seek(start_address)
    for i in range(many_bytes):
        chksum += save_file.read(1)[0]
        if chksum > 0xffff:
            chksum -= 0xffff
    return chksum


def sram_addr_to_save_addr(bank_num: int, offset: int) -> int:
    return (offset - 0xa000) + (bank_num * 0x2000)


def savefile_symbols_from_map(map_file: TextIO) -> SymbolType:
    symbols: SymbolType = {}

    mr = MapReader()
    lines = map_file.readlines()
    mr.read_map_data(lines)
    for bank_num, bank_items in mr.bank_data["sram bank"].items():
        for section in bank_items["sections"]:
            for symbol in section["symbols"]:
                address = symbol["address"]
                name = symbol["name"]

                symbols[name] = sram_addr_to_save_addr(bank_num, address)

    return symbols


def load_from_constfile(grab_item: re.Pattern[str], file_name: str) -> dict[int, str]:
    items: dict[int, str] = {}
    i = [0]

    def add_to_item_table(items: dict[int, str], i: list[int], m: re.Match):
        items[i[0]] = m.group(1)
        i[0] += 1
        return m.group(0)

    with open(file_name, "r") as iconst:
        for line in iconst.readlines():
            grab_item.sub(partial(add_to_item_table, items, i), line)
        return items

def cksum_verify_section(title: str,
                         cksum_section: str, cksum_target: str, length: int,
                         save_file: BinaryIO, symbols: SymbolType,
                         args: AP.Namespace):
    print("\n*** %s ***\n" % title)

    save_file.seek(symbols[cksum_section])
    cksum_actual = int.from_bytes(
        save_file.read(2), "little"
    )
    if length > 0:
        cksum_calculated = calculate_checksum(
            save_file,
            symbols[cksum_target],
            length
        )
    else:
        cksum_calculated = calculate_checksum(
            save_file,
            symbols[cksum_target],
            symbols["%sEnd" % cksum_target] - symbols[cksum_target]
        )
    print("Actual: %04x, calculated: %04x" % (
        cksum_actual, cksum_calculated
    ))
    if cksum_actual == cksum_calculated:
        print("Checksum equal!")
    else:
        print("Checksum DIFFERS!")
        if args.fix:
            save_file.seek(symbols[cksum_section])
            save_file.write(cksum_calculated.to_bytes(2, "little"))
            print("Corrected...")

def seek_through_table(save_file: BinaryIO, start_from: int,
                       item_names: dict[int, str],
                       num_items: int, num_locked: int, num_cached: int,
                       num_saved_recent: int):
    assert (
            ((num_items * 2) + num_locked + num_cached + num_saved_recent + 2) % 0x100 == 0
    ), "length of table must be divisible by 0x100?"

    save_file.seek(start_from)

    items: list[int] = []

    print("Used slots: %d" % int.from_bytes(save_file.read(1), "little"))
    print("Last index: %d" % int.from_bytes(save_file.read(1), "little"))

    actual_used_entries = 0

    print("---peeking through entries---")
    for i in range(num_items):
        item_num = int.from_bytes(save_file.read(2), "little")
        print("%3d (0x%02x): %s" % (
            i, i,
            ("%04x -> %s" % (
                item_num,
                item_names[item_num]) if item_num > 0 else "---"
             )
        ))
        items.append(item_num)
        if item_num > 0:
            actual_used_entries += 1

    print("\nslots indeed used: %d" % actual_used_entries)

    print("\n---peeking through cache entries---")
    for i in range(num_cached):
        item_num = int.from_bytes(save_file.read(1), "little")
        try:
            print("%2d: %s" % (
                i,
                ("%02x -> %04x -> %s" % (
                    item_num,
                    items[item_num],
                    (item_names[items[item_num]]) if items[item_num] > 0 else "---")
                 if item_num > 0 else "---"
                 )
            ))
        except IndexError:
            print("%2d: %s" % (
                i,
                ("%02x -> ??" % (
                    item_num)
                 if item_num > 0 else "---"
                 )
            ))

    print("\n---peeking through locked entries---")
    for i in range(num_locked):
        item_num = int.from_bytes(save_file.read(1), "little")
        try:
            print("%2d: %s" % (
                i,
                ("%02x -> %04x -> %s" % (
                    item_num,
                    items[item_num],
                    (item_names[items[item_num]]) if items[item_num] > 0 else "---")
                 if item_num > 0 else "---"
                 )
            ))
        except IndexError:
            print("%2d: %s" % (
                i,
                ("%02x -> ??" % (
                    item_num)
                 if item_num > 0 else "---"
                 )
            ))

    print("\n---peeking through recent entries---")
    for i in range(num_saved_recent):
        item_num = int.from_bytes(save_file.read(1), "little")
        try:
            print("%2d: %s" % (
                i,
                ("%02x -> %04x -> %s" % (
                    item_num,
                    items[item_num],
                    (item_names[items[item_num]]) if items[item_num] > 0 else "---")
                 if item_num > 0 else "---"
                 )
            ))
        except IndexError:
            print("%2d: %s" % (
                i,
                ("%02x -> ??" % (
                    item_num)
                 if item_num > 0 else "---"
                 )
            ))
def command_cksum_verify(save_file: BinaryIO, symbols: SymbolType, args: AP.Namespace):
    cksum_verify_section(
        "Main game checksum",
        "sChecksum", "sSaveData", 0,
        save_file, symbols, args
    )
    cksum_verify_section(
        "Backup game checksum",
        "sBackupChecksum", "sBackupSaveData", 0,
        save_file, symbols, args
    )
    cksum_verify_section(
        "Move index table checksum",
        "sConversionTableChecksum", "sMoveIndexTable", 0x200,
        save_file, symbols, args
    )
    cksum_verify_section(
        "Backup move index table checksum",
        "sBackupConversionTableChecksum", "sBackupMoveIndexTable", 0x200,
        save_file, symbols, args
    )


def command_check_items(save_file: BinaryIO, symbols: SymbolType, args: AP.Namespace):
    print("Main item index table...")

    item_names = load_from_constfile(
        re.compile("^\s+const\s+([A-Z_0-9]+)"), "constants/item_constants.asm"
    )

    seek_through_table(
        save_file, symbols["sItemIndexTable"], item_names,
        num_items=100, num_locked=30, num_cached=16, num_saved_recent=8
    )

def command_check_moves(save_file: BinaryIO, symbols: SymbolType, args: AP.Namespace):
    print("Main move index table...")

    item_names = load_from_constfile(
        re.compile("^\s+const\s+([A-Z_0-9]+)"), "constants/move_constants.asm"
    )

    seek_through_table(
        save_file, symbols["sMoveIndexTable"], item_names,
        num_items=230, num_locked=18, num_cached=16, num_saved_recent=16
    )

commands: dict[str, Callable[[BinaryIO, SymbolType, AP.Namespace], None]] = {
    # used by reg_subparsers

    "cksum_verify": command_cksum_verify,
    "check_items": command_check_items,
    "check_moves": command_check_moves,
}


def reg_subparsers(sp: Any):  # can't import _SubParsersAction :(
    global commands
    for command_name, command_func in commands.items():
        if command_func == command_cksum_verify:
            ps: AP.ArgumentParser = sp.add_parser(
                name=command_name,
                help="Verify checksum"
            )
            ps.add_argument(
                "--fix", "-f",
                help="Automatically fix checksums",
                action="store_true"
            )
        elif command_func == command_check_items:
            ps = sp.add_parser(
                name=command_name,
                help="Check item index table. Better used with zero-initialized save files (Uninitialized RAM -> fill "
                     "with value: 00 in BGB)"
            )
        elif command_func == command_check_moves:
            ps = sp.add_parser(
                name=command_name,
                help="Check move index table. Better used with zero-initialized save files (Uninitialized RAM -> fill "
                     "with value: 00 in BGB)"
            )
        else:
            raise Exception("I shouldn't be here")


if __name__ == "__main__":
    parser = AP.ArgumentParser(
        description="Verify save data"
    )
    sp = parser.add_subparsers(
        dest="command",
        help="action to take"
    )
    parser.add_argument(
        "romname",
        help="Basename. There must be a file with this name ending in .sav and .map (lowercase)."
    )
    reg_subparsers(sp)
    args = parser.parse_args()

    try:
        savfile = open(args.romname + ".sav", "r+b")
    except FileNotFoundError:
        print(
            "Need a save file with the name \"%s.sav\"!" % args.romname,
            file=sys.stderr
        )
        exit(1)

    try:
        mapfile = open(args.romname + ".map", "r")
        savsymbols = savefile_symbols_from_map(mapfile)
    except FileNotFoundError:
        print(
            "Need a map file with the name \"%s.map\"!" % args.romname,
            file=sys.stderr
        )
        exit(1)

    commands[args.command](savfile, savsymbols, args)

    mapfile.close()
    savfile.close()
