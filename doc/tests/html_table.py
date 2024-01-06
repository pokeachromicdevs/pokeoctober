#!/usr/bin/python3

# not actually a table yet, sorry

import sys
import os

_dirname_ = os.path.dirname(os.path.realpath(__file__))

sys.path.append(
    os.path.dirname(_dirname_)
)

from subtools.get_pkmn_data import get_pokemon_data
import jinja2
import pprint

if __name__ == "__main__":
    env = jinja2.Environment(
        loader=jinja2.FileSystemLoader(
            searchpath=os.path.join(_dirname_, "html")
        )
    )
    with open(os.path.join(_dirname_, "html", "template.html"), "r") as tplfile:
        template = env.from_string(tplfile.read())
        print(template.render(data=get_pokemon_data()))