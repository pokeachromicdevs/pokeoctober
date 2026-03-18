; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - end_party_def ; end

__party_open__  = 0
next_party: MACRO
IF __party_open__  == 1
fail "\tPrevious party definition has not been closed yet!\n\t(add 'end_party' to the previous line to fix this)"
ENDC
	next_list_item
__party_open__  = 1
ENDM
end_party_list: MACRO
	end_list_items
IF __party_open__  == 1
fail "\tParty list ended without ending the previous party defs!\n\t(add 'end_party' to the previous line to fix this)"
ENDC
ENDM
end_party: MACRO
	db -1
__party_open__  = 0
ENDM

INCLUDE "sheets/generated/trainer/trainer_parties.gen.asm"
