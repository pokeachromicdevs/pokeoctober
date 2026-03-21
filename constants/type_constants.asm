; TypeNames indexes (see data/types/names.asm)
; also used in:
; - PokedexTypeSearchConversionTable (see data/types/search_types.asm)
; - PokedexTypeSearchStrings (see data/types/search_strings.asm)
; - TypeMatchups (see data/types/type_matchups.asm)
; - TypeBoostItems (see data/types/type_boost_items.asm)
	const_def

PHYSICAL EQU const_value
INCLUDE "sheets/generated/type/constants_physical.gen.asm"

SPECIAL EQU const_value
INCLUDE "sheets/generated/type/constants_special.gen.asm"
TYPES_END EQU const_value

NUM_TYPES EQU TYPES_END
