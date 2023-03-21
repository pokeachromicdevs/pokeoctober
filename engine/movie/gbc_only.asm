GBCOnlyScreen:
	ldh a, [hCGB]
	and a
	ret nz

	; set palette
	ld a, $e4
	ldh [rOBP0], a
	
	ld de, MUSIC_NONE
	call PlayMusic

	call ClearTileMap

	ld hl, GBCOnlyGFX
	ld de, wGBCOnlyDecompressBuffer
	ldh a, [rSVBK]
	push af
	ld a, 0 ; this has the same effect as selecting bank 1
	ldh [rSVBK], a
	call Decompress
	pop af
	ldh [rSVBK], a

	ld de, wGBCOnlyDecompressBuffer
	ld hl, vTiles2
	lb bc, BANK(GBCOnlyGFX), $70
	call Get2bpp

	ld de, Font
	ld hl, vTiles1
	lb bc, BANK(Font), $80
	call Get1bpp
	
	ld de, GBCOnlyFireGFX
	ld hl, vTiles0
	lb bc, BANK(GBCOnlyFireGFX), 8
	call Get2bpp
	
	ld de, GBCOnlyDecorGFX
	ld hl, vTiles2 tile $70
	lb bc, BANK(GBCOnlyDecorGFX), 8
	call Get2bpp
	
	call SetupGBCOnlyParticles

	call DrawGBCOnlyScreen
	
	call WaitBGMap

; better luck next time
.loop
	call DelayFrame
	farcall PlaySpriteAnimations
	jr .loop

DrawGBCOnlyScreen:
	call DrawGBCOnlyBorder

	; Pokemon
	hlcoord 2, 1
	ld b, 16
	ld c, 7
	ld a, 0
	call DrawGBCOnlyGraphic

	ld de, GBCOnlyString
	hlcoord 1, 11
	call PlaceString

	ret

SetupGBCOnlyParticles:
	ld hl, FirePositionTable
	ld c, 6 ; Load 6 flying objects on the screen.
.set_fire_note_loop
	push bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl
	push hl
	ld a, SPRITE_ANIM_INDEX_GBC_SCREEN_FLAMES
	call _InitSpriteAnimStruct
	pop hl
	pop bc
	dec c
	jr nz, .set_fire_note_loop
	ret
FirePositionTable::
	dbpixel 28,  9,  0,  4
	dbpixel 20, 11,  0,  0
	dbpixel 18, 12,  0,  4
	dbpixel 26, 14,  0,  0
	dbpixel 22, 15,  0,  4
	dbpixel  0, 17,  0,  0

DrawGBCOnlyBorder:
; top
	hlcoord 0, 9
	ld c, 5
.t_l
	ld a, $70
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	dec c
	jr nz, .t_l
	
; bottom
	hlcoord 0, 17
	ld c, 5
.r_l
	ld a, $74
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	dec c
	jr nz, .r_l
	ret

DrawGBCOnlyGraphic:
	ld de, SCREEN_WIDTH
.y
	push bc
	push hl
.x
	ld [hli], a
	inc a
	dec b
	jr nz, .x
	pop hl
	add hl, de
	pop bc
	dec c
	jr nz, .y
	ret

GBCOnlyString:
	db   "This Game Pak is"
	next "designed only for"
	next "use on the GBC.@"

GBCOnlyGFX:
INCBIN "gfx/sgb/gbc_only.2bpp.lz"

GBCOnlyFireGFX:
INCBIN "gfx/sgb/fire.2bpp"

GBCOnlyDecorGFX:
INCBIN "gfx/sgb/titlebgdecoration.2bpp"
