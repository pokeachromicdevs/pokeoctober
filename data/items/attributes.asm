item_attribute: MACRO
; price, held effect, parameter, property, pocket, field menu, battle menu
	dw \1
	db \2, \3, \4, \5
	dn \6, \7
ENDM

ItemAttributes:
	indirect_table ITEMATTR_STRUCT_LENGTH, 1
	indirect_entries NUM_ITEM_POCKET, ItemAttributes1
	indirect_entries FIRST_KEY_ITEM - 1 ; sparse table
	indirect_entries NUM_KEY_ITEM_POCKET + (FIRST_KEY_ITEM - 1), ItemKeyAttributes
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse table
	indirect_entries NUM_BALL_ITEM_POCKET + (FIRST_BALL_ITEM - 1), ItemBallAttributes
	indirect_table_end

INCLUDE "sheets/generated/item/attributes.gen.asm"
