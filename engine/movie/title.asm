InitTitleScreen::
	call ClearBGPalettes
	call ClearSprites
	farcall ClearSpriteAnims
	call ClearTileMap

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a
	ldh [hMapAnims], a
	ldh [hSCY], a
	ldh [hSCX], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wIntroSceneFrameCounter
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer + 1

; Turn LCD off
	call DisableLCD

; clear tiles
	ld hl, vTiles0
	ld bc, $200 tiles
	xor a
	call ByteFill

; title screen GFX
	ld hl, G98T
	ld de, vTiles1
	call Decompress

; copy hooh
	ld hl, TitleHoohGFX
	ld de, vTiles0
	call Decompress

; copy sparkles
	ld hl, TitleBetaSparklesGFX
	ld de, vTiles0 tile $60
	ld bc, TitleBetaSparklesGFX_End - TitleBetaSparklesGFX
	call CopyBytes

; copy map
	debgcoord 0, 0
	ld hl, G98M
	ld bc, G98M_End - G98M
	call CopyBytes

	ld a, 1
	ldh [rVBK], a
; copy map
	debgcoord 0, 0
	ld hl, G98M_A
	ld bc, G98M_A_End - G98M_A
	call CopyBytes

; Restore WRAM bank
	xor a
	ldh [rVBK], a

; Save WRAM bank
	ldh a, [rSVBK]
	push af
; WRAM bank 5
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

; Update palette colors
	ld hl, TitleScreenPalettes
	ld de, wBGPals2
	ld bc, 6 palettes
	call CopyBytes

	ld hl, TitleScreenPalettes palette 6
	ld de, wOBPals2
	ld bc, 2 palettes
	call CopyBytes

; Restore WRAM bank
	pop af
	ldh [rSVBK], a

; Reset audio
	call ChannelsOff

	call EnableLCD
	ld hl, rLCDC
	set rLCDC_SPRITE_SIZE, [hl] ; 8x8

	ld a, $1
	ldh [hCGBPalUpdate], a

	ld a, LOW(rSCX)
	ld [hLCDCPointer], a

; Update BG Map 0 (bank 0)
	;ldh [hBGMapMode], a

	ld de, $7058
	ld a, SPRITE_ANIM_INDEX_GS_INTRO_HO_OH
	call _InitSpriteAnimStruct

	ld de, MUSIC_TITLE
	call PlayMusic

	ret

DrawTitleGraphic:
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

RunTitleScreen::
	call ScrollTitleScreenClouds	; new

	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .done_title
	call TitleScreenScene
	farcall PlaySpriteAnimations
	call UpdateTitleTrailSprite
	call DelayFrame
	and a
	ret

.done_title
	scf
	ret

ScrollTitleScreenClouds:
	ldh a, [hVBlankCounter]
	and $7
	ret nz
	ld hl, wLYOverrides + $5f
	ld a, [hl]
	dec a
	ld bc, $28
	call ByteFill
	ret

UpdateTitleTrailSprite:
	; If bit 0 or 1 of [wTitleScreenTimer] is set, we don't need to be here.
	ld a, [wTitleScreenTimer]
	and %00000011
	ret nz
;IF DEF(_GOLD)
	ld bc, wSpriteAnim2
	ld hl, SPRITEANIMSTRUCT_FRAME
	add hl, bc
	ld l, [hl]
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, .TitleTrailCoords
	add hl, de
	; If bit 2 of [wTitleScreenTimer] is set, get the second coords; else, get the first coords
	ld a, [wTitleScreenTimer]
	and %00000100
	srl a
	srl a
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	and a
	ret z
	ld e, a
	ld d, [hl]
;ELIF DEF(_SILVER)
;	depixel 15, 11, 4, 0
;ENDC
	ld a, SPRITE_ANIM_INDEX_GS_TITLE_TRAIL
	call _InitSpriteAnimStruct
	ret


.TitleTrailCoords:
trail_coords: MACRO
rept _NARG / 2
_dx = 4
if \1 == 0 && \2 == 0
_dx = 0
endc
	dbpixel \1, \2, _dx, 0
	shift
	shift
endr
ENDM
	; frame 0 y, x; frame 1 y, x
	trail_coords 11, 10,  0,  0
	trail_coords 11, 13, 11, 11
	trail_coords 11, 13, 11, 15
	trail_coords 11, 17, 11, 15
	trail_coords  0,  0, 11, 15
	trail_coords  0,  0, 11, 11



TitleScreenScene:
	ld e, a
	ld d, 0
	ld hl, .scenes
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.scenes
	dw TitleScreenTimer
	dw TitleScreenMain
	dw TitleScreenEnd

TitleScreenTimer:
; Next scene
	ld hl, wJumptableIndex
	inc [hl]

; Start a timer
	ld hl, wTitleScreenTimer
	ld de, 82 * 60 + 30
	ld [hl], e
	inc hl
	ld [hl], d
	ret

TitleScreenMain:
; Run the timer down.
	ld hl, wTitleScreenTimer
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, e
	or d
	jr z, .end

	dec de
	ld [hl], d
	dec hl
	ld [hl], e

; Save data can be deleted by pressing Up + B + Select.
	call GetJoypad
	ld hl, hJoyDown
	ld a, [hl]
	and D_UP + B_BUTTON + SELECT
	cp  D_UP + B_BUTTON + SELECT
	jr z, .delete_save_data

; To bring up the clock reset dialog:

; Hold Down + B + Select to initiate the sequence.
	ldh a, [hClockResetTrigger]
	cp $34
	jr z, .check_clock_reset

	ld a, [hl]
	and D_DOWN + B_BUTTON + SELECT
	cp  D_DOWN + B_BUTTON + SELECT
	jr nz, .check_start

	ld a, $34
	ldh [hClockResetTrigger], a
	jr .check_start

; Keep Select pressed, and hold Left + Up.
; Then let go of Select.
.check_clock_reset
	bit SELECT_F, [hl]
	jr nz, .check_start

	xor a
	ldh [hClockResetTrigger], a

	ld a, [hl]
	and D_LEFT + D_UP
	cp  D_LEFT + D_UP
	jr z, .clock_reset

; Press Start or A to start the game.
.check_start
	ld a, [hl]
	and START | A_BUTTON
	jr nz, .incave
	ret

.incave
	ld a, 0
	jr .done

.delete_save_data
	ld a, 1

.done
	ld [wIntroSceneFrameCounter], a

; Return to the intro sequence.
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

.end
; Next scene
	ld hl, wJumptableIndex
	inc [hl]

; Fade out the title screen music
	xor a
	ld [wMusicFadeID], a
	ld [wMusicFadeID + 1], a
	ld hl, wMusicFade
	ld [hl], 8 ; 1 second

	ld hl, wTitleScreenTimer
	inc [hl]
	ret

.clock_reset
	ld a, 4
	ld [wIntroSceneFrameCounter], a

; Return to the intro sequence.
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

TitleScreenEnd:
; Wait until the music is done fading.

	ld hl, wTitleScreenTimer
	inc [hl]

	ld a, [wMusicFade]
	and a
	ret nz

	ld a, 2
	ld [wIntroSceneFrameCounter], a

; Back to the intro.
	ld hl, wJumptableIndex
	set 7, [hl]
	ret


G98T:
INCBIN "gfx/title/98/gold98title.2bpp.lz"

G98M:
INCBIN "gfx/title/98/g98title_english.tilemap"
G98M_End:

G98M_A:
INCBIN "gfx/title/98/g98title_english.attrmap"
G98M_A_End:

TitleHoohGFX:
INCLUDE "gfx/title/98/HOUOUOBJ.DAT"

TitleBetaSparklesGFX:
INCLUDE "gfx/title/98/beta_sparkles.asm"
TitleBetaSparklesGFX_End:

TitleScreenPalettes:
INCLUDE "gfx/title/title.pal"
