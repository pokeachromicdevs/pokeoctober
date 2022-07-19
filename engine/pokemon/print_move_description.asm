UpdateTMHMDescription::
	ld a, [wMenuSelection]
	ld [wTempTMHM], a
	predef GetTMHMMove
	ld a, [wTempTMHM]
	ld [wCurSpecies], a
	hlcoord 0, 12
	ld b, 4
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wMenuSelection]
	cp -1
	ret z
	hlcoord 1, 14
PrintMoveDesc:
	push hl
	ld a, [wCurSpecies]
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(MoveDescriptions)
	ld hl, MoveDescriptions
	call LoadDoubleIndirectPointer
	jr nz, .ok
	ld a, BANK(InvalidMoveDescription)
	ld hl, InvalidMoveDescription
.ok
	ld d, h
	ld e, l
	pop hl
	jp FarPlaceString
