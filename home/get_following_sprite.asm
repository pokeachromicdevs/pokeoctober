GetFollowingSprite::
; input:
; 	hl = Pokemon ID (starts at 1)
; output:
;	b  = sprite bank
;	c  = sprite color
;	de = sprite address

	ld a, [hROMBank]
	ld [hSavedROMBank], a
	
	ld a, BANK(FollowSpritePointers)
	rst Bankswitch

	dec hl
	ld b, h
	ld c, l

	ld hl, FollowSpritePointers
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc

	ld b, [hl] ; bank
	inc hl
	ld e, [hl] ; address
	inc hl
	ld d, [hl]
	inc hl
	ld c, [hl]

	ld a, [hSavedROMBank]
	rst Bankswitch
	ret

GetFollowingPokemon::
; output:
;	hl = pokemon index

	ld a, [wFollowerFlags]
	and a
	ret z
	ld a, [wCurPartyMon]
	push af
		ld a, [wFollowerFlags]
		dec a
		ld [wCurPartyMon], a
		ld a, MON_SPECIES
		call GetPartyParamLocation
	pop af
	scf
	ccf
	ld [wCurPartyMon], a
	ld a, [hl]
	jp GetPokemonIndexFromID
