PrintItemDescription:
; Print the description for item [wCurSpecies] at de.

	push de
	ld a, [wCurSpecies]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemDescriptions)
	ld hl, ItemDescriptions
	call LoadDoubleIndirectPointer
	jr nz, .ok
; wrong item
	ld a,  BANK(InvalidItemDesc)
	ld hl, InvalidItemDesc
.ok
	ld d, h
	ld e, l
	pop hl
	jp FarPlaceString

INCLUDE "data/items/descriptions.asm"
