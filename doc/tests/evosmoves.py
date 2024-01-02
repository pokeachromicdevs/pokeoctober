import os
import re

import pprint

evosmoves_db = {}
# { ? : {"evos": ?, "moves": ?, "evolves from": ?} }

# TODO: use a filter() function to find out
# the X in "<Species> evolves from X", add it to
# the "evolves from" key

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
                            extract.replace("dbbw ", "")
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

pprint.pprint(evosmoves_db)
            
