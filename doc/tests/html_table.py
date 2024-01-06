#!/usr/bin/python3

# not actually a table yet, sorry

import sys
import os
sys.path.append(
    os.path.dirname(
        os.path.dirname(os.path.realpath(__file__))
    )
)

from subtools.get_pkmn_data import get_pokemon_data
import pprint

if __name__ == "__main__":
    for pkmn_name, pkmn_data in get_pokemon_data().items():
        # pprint.pprint(pkmn_data)
        print(f"""
        <h2>{pkmn_name}</h2>
        <h3>Base Stats</h3>
        <table>
            <tr>
                <th>HP</th> <th>ATK</th>
                <th>DEF</th> <th>SPD</th>
                <th>SP. ATK</th> <th>SP. DEF</th>
            </tr>
            <tr>
                <td>{pkmn_data["base stats"]["hp"]}</td>
                <td>{pkmn_data["base stats"]["atk"]}</td>
                <td>{pkmn_data["base stats"]["def"]}</td>
                <td>{pkmn_data["base stats"]["spd"]}</td>
                <td>{pkmn_data["base stats"]["special atk"]}</td>
                <td>{pkmn_data["base stats"]["special def"]}</td>
            </tr>
        </table>
        <h3>Can be found in</h3>
        <ul>
            {' '.join(["<li>%s</li>" % i for i in pkmn_data["maps"]])}
        </ul>
        """)