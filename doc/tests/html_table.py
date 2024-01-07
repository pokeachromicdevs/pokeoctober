#!/usr/bin/env python3

# not actually a table yet, sorry

import sys
import os

_dirname_ = os.path.dirname(os.path.realpath(__file__))

sys.path.append(
    os.path.dirname(_dirname_)
)

from subtools.get_pkmn_data import get_pokemon_data

import jinja2
from jinja_markdown import MarkdownExtension

import pprint
import random

if __name__ == "__main__":
    env = jinja2.Environment(
        loader=jinja2.FileSystemLoader(
            searchpath=os.path.join(_dirname_, "html")
        ),
        extensions=[MarkdownExtension]
    )
    test = get_pokemon_data()

    # reduce data by X fold for easier testing
    # for x in range(5):
    #     for i in list(test.keys()):
    #         if random.randint(0, 1) == 0:
    #             test.pop(i)
    
    with open(os.path.join(_dirname_, "html", "the_whole_thing.html"), "r") as tplfile:
        template = env.from_string(tplfile.read())
        print(template.render(data=test))