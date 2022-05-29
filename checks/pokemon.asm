; data/pokemon/base_stats.asm
assert _NUM_BASE_STATS == NUM_POKEMON, "\n\t\tNumber of base stats defines must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_BASE_STATS} defined)"

; data/pokemon/names.asm
assert _NUM_POKEMON_NAMES == NUM_POKEMON, "\n\t\tNumber of names must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_POKEMON_NAMES} defined)"

; data/pokemon/dex_entry_pointers.asm
assert _NUM_POKEDEX_ENTRIES == NUM_POKEMON, "\n\t\tNumber of dex entries must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_POKEDEX_ENTRIES} defined)"

; data/pokemon/dex_order_new.asm
assert _NUM_NEW_DEX_ORDER == NUM_POKEMON, "\n\t\tNumber of dex order (new) must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_NEW_DEX_ORDER} defined)"

; data/pokemon/menu_icons.asm
assert _NUM_MON_MENU_ICONS == NUM_POKEMON, "\n\t\tNumber of mon icon assignments must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_MON_MENU_ICONS} defined)"

; data/icon_pointers.asm
assert _NUM_MON_ICON_POINTERS == NUM_MON_ICONS, "\n\t\tNumber of mon icon pointers must match the number of constants ({d:NUM_MON_ICONS}).\n\t\t({d:_NUM_MON_ICON_POINTERS} defined)"

; data/pokemon/palettes.asm
assert _NUM_POKEMON_PALETTES == NUM_POKEMON, "\n\t\tNumber of palette assignments must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_POKEMON_PALETTES} defined)"

; data/pokemon/follow_sprite_pointers.asm
assert _NUM_FOLLOW_SPRITES == NUM_POKEMON, "\n\t\tNumber of follower sprite assignments must match the number of Pokemon ({d:NUM_POKEMON}).\n\t\t({d:_NUM_FOLLOW_SPRITES} defined)"
