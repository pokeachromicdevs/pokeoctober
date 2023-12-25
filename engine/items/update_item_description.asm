UpdateItemDescription:
	ld a, [wMenuSelection]
UpdateItemDescriptionCommon:
	ld [wCurSpecies], a
	hlcoord 0, 12
	ld b, 4
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wMenuSelection]
	cp -1
	ret z
	decoord 1, 14
	farcall PrintItemDescription
	ret

UpdateItemBallDescription:
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_BALL_ITEM)
	ld l, a
	call GetItemIDFromIndex
	jr UpdateItemDescriptionCommon

UpdateKeyItemDescription:
	ld a, [wMenuSelection]
	ld h, HIGH(FIRST_KEY_ITEM)
	ld l, a
	call GetItemIDFromIndex
	jr UpdateItemDescriptionCommon
