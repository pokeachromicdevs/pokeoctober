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
	call GetFollowingPokemonSpeciesID
	ret z
	jp GetPokemonIndexFromID

GetFollowingPokemonSpeciesID::
; output:
;	a = pokemon 8-bit ID
	ld a, [wWhichPartyFollower]
	and a
	ret z
	ld a, [wCurPartyMon]
	push af
		ld a, [wWhichPartyFollower]
		dec a
		ld [wCurPartyMon], a
		ld a, MON_SPECIES
		call GetPartyParamLocation
	pop af
	scf
	ccf
	ld [wCurPartyMon], a
	ld a, [hl]
	ret

LoadFollowingPokemonPalette:
; input:
;	hl = Pokemon ID (starts at 1)
	push bc
	push de

	call GetFollowingSprite ; c contains color to use

	ld a, [hROMBank]
	ld [hSavedROMBank], a

	ld a, BANK(FollowSpritePalettes)
	rst Bankswitch

	ld hl, FollowSpritePalettes
	ld b, 0
	add hl, bc
	add hl, bc

	ld a, [hli]
	ld h, [hl]
	ld l, a

	; palette found, do copy
	; in this case we don't care about time of day
	ld de, wOBPals1 palette PAL_OW_FOLLOWER
	ld a, BANK(wOBPals1)
	call FarCopyWRAM

	ld a, [hSavedROMBank]
	rst Bankswitch

	pop de
	pop bc
	ret

LoadFollowerPalette::
	call GetFollowingPokemon
	ret z
	jp LoadFollowingPokemonPalette
