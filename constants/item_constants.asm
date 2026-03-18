; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM
INCLUDE "sheets/generated/item/normal_item_constants.gen.asm"
NUM_ITEM_POCKET EQU const_value - 1

; Key items assume the value of HIGH(FIRST_KEY_ITEM) when storing in bag
	const_align 8 
FIRST_KEY_ITEM EQU const_value
INCLUDE "sheets/generated/item/key_item_constants.gen.asm"
NUM_KEY_ITEM_POCKET EQU const_value - FIRST_KEY_ITEM

; Ball items assume the value of HIGH(FIRST_BALL_ITEM) when storing in bag
	const_align 8 
FIRST_BALL_ITEM EQU const_value
INCLUDE "sheets/generated/item/ball_item_constants.gen.asm"
NUM_BALL_ITEM_POCKET EQU const_value - FIRST_KEY_ITEM

NUM_ITEMS EQU const_value - 1

USE_SCRIPT_VAR EQU 0
ITEM_FROM_MEM  EQU -1

