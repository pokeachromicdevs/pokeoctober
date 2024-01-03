import os
import re

import pprint

evosmoves_db = {}
# { ? : {"evos": ?, "moves": ?, "evolves from": ?} }

for fname in [
    "../../data/pokemon/evos_attacks_kanto.asm",
    "../../data/pokemon/evos_attacks_johto.asm",
    "../../data/pokemon/evos_attacks_beytah.asm",
]:
    with open(fname, "r") as evosfile:
        for single_entry in re.finditer(
            r"(\w+)EvosAttacks:(.+?)\n\n",
            evosfile.read(),
            re.MULTILINE | re.DOTALL
        ):
            monname = single_entry.group(1)
            
            evosmoves = {
                "evos": [],
                "moves": [],
                "evolves from": []
            }
            
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
                    evosmoves["moves"].append(
                        tuple(
                            extract.replace("dbw ", "")
                            .split(", ")
                        )
                    )
                    extract = next(rawdata)
            except StopIteration:
                pass
            
            evosmoves_db[monname] = evosmoves

# reflection on evos → find "evolves from"

def find_evolves_from(string):
    def _find_evolves_from(item):
        has = False
        evos = item[1].get("evos")
        for i in evos:
            has = has or (i[2] == string.upper())
            if len(i) == 4:
                has = has or (i[3] == string.upper())
        return has
    return _find_evolves_from

for k, v in evosmoves_db.items():
    for k2, v2 in filter(
        find_evolves_from(k), evosmoves_db.items()
    ):
        evosmoves_db[k]['evolves from'].append(k2)
    
pprint.pprint(evosmoves_db)