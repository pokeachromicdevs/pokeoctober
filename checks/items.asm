; constants/item_constants.asm
assert NUM_ITEMS < 255, "\n\t\tCan't have 255 items! ({d:NUM_ITEMS} defined)"

; data/items/attributes.asm
assert _NUM_ITEM_ATTRIBUTES == NUM_ITEMS, "\n\t\tNumber of item attributes must match the constants ({d:NUM_ITEMS}).\n\t\t({d:_NUM_ITEM_ATTRIBUTES} defined)"

; data/items/names.asm
assert _NUM_ITEM_NAMES == NUM_ITEMS, "\n\t\tNumber of item names must match the constants ({d:NUM_ITEMS}).\n\t\t({d:_NUM_ITEM_NAMES} defined)"

; data/items/descriptions.asm
assert _NUM_ITEM_DESCRIPTIONS == NUM_ITEMS, "\n\t\tNumber of item descriptions must match the constants ({d:NUM_ITEMS}).\n\t\t({d:_NUM_ITEM_DESCRIPTIONS} defined)"

; engine/items/item_effects.asm
assert _NUM_ITEM_FX == NUM_ITEMS, "\n\t\tNumber of item effects must match the constants ({d:NUM_ITEMS}).\n\t\t({d:_NUM_ITEM_FX} defined)"

