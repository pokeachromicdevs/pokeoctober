#!/usr/bin/python3

import re
import os
import pprint

from collections import OrderedDict
from pathlib import Path

PKMN_CONSTANTS = Path("constants/pokemon_constants.asm")
EVOS_ATTACKS_LIST = [
    Path("data/pokemon/evos_attacks_kanto.asm"),
    Path("data/pokemon/evos_attacks_johto.asm"),
    Path("data/pokemon/evos_attacks_beytah.asm"),
]
BASE_STATS_FILE_TEMPL = "data/pokemon/base_stats/%s.asm"
WILD_MAPS = [
    Path("data/wild/johto_grass.asm"),
    Path("data/wild/kanto_grass.asm"),
    Path("data/wild/johto_water.asm"),
    Path("data/wild/kanto_water.asm"),
]

def _const_to_label (name: str) -> str:
    '''
    CONST_STYLE to LabelStyle
    '''
    return name.replace('_', ' ').title().replace(' ','')

def _label_to_const (name: str) -> str:
    '''
    LabelStyle to CONST_STYLE
    '''
    return re.sub(r"([a-z])([A-Z])", r"\1_\2", name).upper()

def _label_to_lower (name: str) -> str:
    '''
    LabelStyle to lower_style
    '''
    return _label_to_const(name).lower()

def _init_data (pokemon_data: OrderedDict):
    with open(PKMN_CONSTANTS, "r") as pkconsts:
        for name_ in re.finditer(r"const\s+(\w+)", pkconsts.read()):
            name = name_.group(1)

            ## TODO: unown exempt for now
            if name.startswith("UNOWN"): continue
            
            #print("constant: %s\tfile name: %s\tlabel: %s" % (
            #    name, name.lower(), _const_to_label(name)
            #))

            # check if some stuff is available
            assert os.path.isfile('data/pokemon/base_stats/%s.asm' % name.lower())
            assert os.path.isfile('data/pokemon/dex_entries/%s.asm' % name.lower())
            pokemon_data[name] = {
                "base stats": {}, "evos moves": {}, "maps": []}

def _add_evos_moves (pokemon_data: OrderedDict):
    for fname in EVOS_ATTACKS_LIST:
        with open(fname, "r") as evosfile:
            for single_entry in re.finditer(
                r"(\w+)EvosAttacks:(.+?)\n\n",
                evosfile.read(),
                re.MULTILINE | re.DOTALL
            ):
                monname = single_entry.group(1)
                
                ## TODO: unown exempt for now
                if monname == "Unown": continue

                evosmoves = {"evos": [], "moves": [], "evolves from": []}
                rawdata = iter(
                    single_entry.group(2)
                    .replace('\t','')
                    .strip()
                    .split('\n')
                )
                try:
                    # evos
                    extract = next(rawdata)
                    while extract:
                        if re.match(r"^db\s+0.+$", extract): break
                        evosmoves["evos"].append(
                            tuple(
                                extract
                                .replace("dbbw ", "")
                                .replace("dbbbw ", "")
                                .split(", ")
                            )
                        )
                        extract = next(rawdata)
                    # moves
                    extract = next(rawdata)
                    while extract:
                        if re.match(r"^db\s+0.+$", extract): break
                        extract = re.sub(";.+$", "", extract) # remove comments
                        evosmoves["moves"].append(
                            tuple(
                                extract.replace("dbw ", "")
                                .split(", ")
                            )
                        )
                        extract = next(rawdata)
                except StopIteration: pass
                
                pokemon_data[_label_to_const(monname)]["evos moves"] = evosmoves

    # reflect evos moves to find the "evolves from" param
    def find_evolves_from(string):
        def _(item):
            has = False
            evos = item[1].get("evos moves").get("evos")
            if evos is None: return False
            for i in evos:
                has = has or (i[2] == string.upper())
                if len(i) == 4:
                    has = has or (i[3] == string.upper())
            return has
        return _
    for k, v in pokemon_data.items():
        for k2, v2 in filter(
                find_evolves_from(k), pokemon_data.items()):
            pokemon_data[k]["evos moves"]["evolves from"].append(k2)

def _add_base_stats (pokemon_data: OrderedDict):
    for i in pokemon_data.keys():
        with open(BASE_STATS_FILE_TEMPL % i.lower(), 'r') as basestatfile:
            # I am assuming all the basestats follow the exact
            # same format in the source code!
            entries = re.finditer(
                r'^\s*(db|dw|dn|tmhm)\s*((.+,?)(;.+)$|(.+,?)$)',
                basestatfile.read(),
                re.MULTILINE
            )
            get_entry = lambda x: x.group(3) or x.group(5)
            new_pokemon = {
                "hp": None, "atk": None, "def": None, "spd": None,
                "special atk": None, "special def": None,
                "types": None, "catch rate": None,
                "base exp": None, "items": None,
                "gender ratio": None, "step cycles": None,
                "growth rate": None, "egg groups": None,
                "learnset": None, "dex number": None
            }
            # TODO: get dex number?
            new_pokemon["dex number"] = get_entry(next(entries))
            new_pokemon["hp"], new_pokemon["atk"], \
            new_pokemon["def"], new_pokemon["spd"], \
            new_pokemon["special atk"], new_pokemon["special def"] = [
                int(i.strip()) for i in get_entry(next(entries)).split(',')
            ]
            new_pokemon["types"] = list(set([
                i.strip() for i in get_entry(next(entries)).split(',')
            ]))
            new_pokemon["catch rate"] = int(get_entry(next(entries)))
            new_pokemon["base exp"] = int(get_entry(next(entries)))
            new_pokemon["items"] = list(set([
                i.strip() for i in get_entry(next(entries)).split(',')
            ]))
            if "NO_ITEM" in new_pokemon["items"]:
                new_pokemon["items"].pop(
                    new_pokemon["items"].index("NO_ITEM")
                )
            new_pokemon["gender ratio"] = get_entry(next(entries)).strip()
            next(entries) # unknown 1
            new_pokemon["step cycles"] = int(get_entry(next(entries)))
            next(entries) # unknown 2
            next(entries) # padding
            new_pokemon["growth rate"] = get_entry(next(entries)).strip()
            new_pokemon["egg groups"] = list(set([
                i.strip() for i in get_entry(next(entries)).split(',')
            ]))
            new_pokemon["learnset"] = [
                i.strip() for i in get_entry(next(entries)).split(',')
            ]
            pokemon_data[i]["base stats"] = new_pokemon

def _add_encounters (pokemon_data: OrderedDict):
    maps = {}
    current_map = ""
    for datafile in WILD_MAPS:
        with open(datafile, "r") as mapfile:
            for i in re.finditer(
                    r"map_id\s+(\w+)|dbw\s+\d+,\s+(\w+)",
                    mapfile.read()):
                # i assume map_id is only set once
                if i.group(1) is not None:
                    current_map = i.group(1)
                    maps[current_map] = set()
                if i.group(2) is not None:
                    maps[current_map].add(i.group(2))
    def find_has_encounter(string: str):
        def _(item):
            return string in item[1]
        return _
    for pkmn in pokemon_data.keys():
        for i in filter(find_has_encounter("MAGIKARP"), maps.items()):
            pokemon_data[pkmn]["maps"].append(i[0])
        
def get_pokemon_data () -> OrderedDict:
    # ordereddict so can be referred by both key and dex order
    pokemon_data = OrderedDict()
    _init_data(pokemon_data)
    _add_evos_moves(pokemon_data)
    _add_base_stats(pokemon_data)
    _add_encounters(pokemon_data)
    #name_dex_order = list(pokemon_data.keys())
    return pokemon_data

if __name__ == "__main__":
    # get_pokemon_data()
    pprint.pprint(get_pokemon_data())