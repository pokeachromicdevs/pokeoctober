import os
import re

import pprint

base_stat_db = {}
# "pokemon": {
#    "hp": ?, "atk": ?, "def": ?, "spd": ?, "special atk": ?, "special def": ?,
#    "types": [?, ?], "catch rate": ?, "base exp": ?, "items": [?, ?],
#    "gender ratio": ?, "step cycles": ?, "growth rate": ?, "egg groups": [?, ?],
#    "learnset": [?, ?, ?, ...], "dex number": ?
# }

for dirname, subdirs, filenames in os.walk('../../data/pokemon/base_stats'):
    for filename in filenames:
        with open(os.path.join(dirname, filename), "r") as basestatfile:
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

            base_stat_db[
                filename
                .replace(".asm","")
                .title()
            ] = new_pokemon

pprint.pprint(base_stat_db)