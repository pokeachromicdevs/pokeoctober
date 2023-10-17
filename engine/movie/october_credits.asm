SECTION "October Credits", ROMX

CREDITS_FINISHED EQU -5

OctoberCredits::
; set spawn
	ld a, SPAWN_RED
	ld [wSpawnAfterChampion], a

	ldh a, [rSVBK]
	push af

; make sure all attrs are *CLEAR*
	call DisableLCD
	ld a, 1
	ldh [rVBK], a
	debgcoord 0, 0
	xor a
	ld hl, $9800
	ld bc, $9c00 - $9800
	call ByteFill
	call EnableLCD

	ld a, BANK(wGBCPalettes)
	ldh [rSVBK], a

	call ClearBGPalettes
	call ClearTileMap
	call ClearSprites

	ld hl, wLYOverrides
	ld bc, $100
	xor a
	call ByteFill

	ld a, LOW(rSCY)
	ldh [hLCDCPointer], a

	ldh a, [hVBlank]
	push af
	ld a, $5
	ldh [hVBlank], a
	ld a, $1
	ldh [hInMenu], a
	xor a
	ldh [hBGMapMode], a
	ld [wCreditsPos], a
	ld [wCreditsScrollY], a
	ld [wCreditsTimer], a
	ld [wCreditsAlreadyPlayed], a

	ld c, 60
	call DelayFrames

	ld b, SCGB_GAMEFREAK_LOGO
	call GetSGBLayout
	call SetPalettes

	ld a, 1
	ldh [hBGMapMode], a
; first line of credits
	hlcoord 0, 8
	ld de, OctoberCredits_HeaderText
	call PlaceString
	ld c, 3
	call DelayFrames
	xor a
	ldh [hBGMapMode], a

; did we have credits played?
	ld a, BANK(sCreditsPlayed)
	call GetSRAMBank
	ld a, [sCreditsPlayed]
	ld [wCreditsAlreadyPlayed], a
	call CloseSRAM

; wait a bit until we start scrolling
	ld c, 120
	call DelayFrames

	ld de, MUSIC_CREDITS_G1
	call PlayMusic

; init bgmap location
	hlbgcoord 0, $13
	ld a, l
	ld [wIntroBGMapPointer + 0], a
	ld a, h
	ld [wIntroBGMapPointer + 1], a

.execution_loop
	call OctoberCredits_ScrollScreen
	call DelayFrame ; slow down a bit
	call OctoberCredits_ApplyScroll
	;ld hl, hSCY
	;inc [hl]
	call OctoberCredits_HandleAButton
	jr c, .exit_credits
	call DelayFrame
	jr .execution_loop

.exit_credits
	ld a, [wCreditsAlreadyPlayed]
	and a
	jr nz, .normal
	
; fade music out
	ld a, 10
	ld [wMusicFade], a
	xor a
	ld [wMusicFadeID], a
	ld [wMusicFadeID + 1], a

	call OctoberCredits_FadeToBlack
	
; setup new screen
	xor a
	ld [wCreditsScrollY], a
	call OctoberCredits_ApplyScroll

	ld a, 1
	ldh [hBGMapMode], a
	
	call ClearScreen
	
	hlcoord 0, 6
	ld de, OctoberCredits_RIPText
	call PlaceString
	ld c, 3
	call DelayFrames

	call OctoberCredits_FadeBackIn

; 5 seconds
	ld c, 60 * 4
	call DelayFrames
	ld c, 60
	call DelayFrames
	
	call OctoberCredits_FadeToBlack
	
	call ClearScreen
	
	ld c, 60
	call DelayFrames
	
; let us know that the credits have already been played at least once
	ld a, BANK(sCreditsPlayed)
	call GetSRAMBank
	ld a, 1
	ld [sCreditsPlayed], a
	call CloseSRAM
	jr .abrupt_cut

.normal
	call OctoberCredits_FadeToWhiteQuick
.abrupt_cut
	call ClearBGPalettes
	xor a
	ldh [hLCDCPointer], a
	ldh [hBGMapAddress], a
	pop af
	ldh [hVBlank], a
	pop af
	ldh [rSVBK], a
	ret

OctoberCredits_HandleAButton:
; carry flag set when credits is skipped
	ld a, [wCreditsAlreadyPlayed]
	and a
	jr nz, .always_skippable
	
	ld a, [wCreditsPos]
	cp CREDITS_FINISHED
	jr nz, .no_skip

.always_skippable
	ldh a, [hJoypadDown]
	and START | A_BUTTON | B_BUTTON | SELECT
	jr nz, .yes_skip
.no_skip ; carry == 0
	scf
	ccf
	ret
.yes_skip
	scf
	ret

OctoberCredits_ScrollScreen:
	ld a, [wCreditsPos] ; end
	cp CREDITS_FINISHED
	ret z

	ld a, [wCreditsScrollY]
	inc a
	ld [wCreditsScrollY], a
	ld a, [wCreditsTimer]
	inc a
	cp 8
	jr z, .scrollCredits
	ld [wCreditsTimer], a
	call DelayFrame
	ret

.scrollCredits
	ld a, [wCreditsPos]
	inc a
	ld [wCreditsPos], a
	ld a, [wIntroBGMapPointer + 0]
	ld l, a
	ld a, [wIntroBGMapPointer + 1]
	ld h, a
	ld de, $20
; hl == $9be0?
	ld a, h
	cp $9b
	jr z, .is_end_1
	jr .do_add
.is_end_1
	ld a, l
	cp $e0
	jr z, .is_end_2
	jr .do_add
.is_end_2
	ld hl, $9800
	jr .got_bg_map_address
.do_add
	add hl, de
.got_bg_map_address
	ld a, l
	ld [wIntroBGMapPointer + 0], a
	ld a, h
	ld [wIntroBGMapPointer + 1], a
; continue here
	call OctoberCredits_LoadNextString
	xor a
	ld [wCreditsTimer], a
	call DelayFrame
	ret

OctoberCredits_ApplyScroll:
	ld a, [wCreditsScrollY]
	ld hl, wLYOverrides
	ld bc, 144
	call ByteFill
	ret

INCLUDE "data/october_credits_strings.asm"

MAX_OCTOBER_CREDITS equ (OctoberCredits_StringTable.End - OctoberCredits_StringTable)/2

OctoberCredits_LoadNextString:
	ld a, [wCreditsPos]
	cp MAX_OCTOBER_CREDITS
	jr c, .load
	ld a, CREDITS_FINISHED
	ld [wCreditsPos], a
	ret

.load
	ld hl, OctoberCredits_StringTable
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld [wRequested2bppSource + 0], a
	ld a, [hl]
	ld [wRequested2bppSource + 1], a
	ld a, [wIntroBGMapPointer + 0]
	ld [wRequested2bppDest + 0], a
	ld a, [wIntroBGMapPointer + 1]
	ld [wRequested2bppDest + 1], a
	ld a, 2
	ld [wRequested2bpp], a
	call DelayFrame
	ret

OctoberCredits_HeaderText:
	db   "   #MON OCTOBER"
	next "     (GOLD 1998)"
	next "   DEMO 1 CREDITS@"

OctoberCredits_RIPText:
	db   "    in memory of"
	next ""
	next "      NIECHELLE"
	next "     (2002-2023)@"

OctoberCredits_FadeToWhiteQuick:: ; copy of ConvertTimePalsDecHL
	ld hl, .Table

	ld b, 4

.loop
	push de
	ld a, [hli]
	call DmgToCgbBGPals
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	call DmgToCgbObjPals
	ld c, 2
	call DelayFrames
	pop de
	dec b
	ret z
	jr .loop

.Table
	dc 3,2,1,0, 3,2,1,0, 3,2,1,0
	dc 3,3,2,1, 3,3,2,1, 3,3,2,1
	dc 3,3,3,2, 3,3,3,2, 3,3,3,2
	dc 3,3,3,3, 3,3,3,3, 3,3,3,3

OctoberCredits_FadeToBlack::
; we aren't considering DMG
	ld hl, .gradTable
	ld b, 10
	jp RotatePalettesRight
.gradTable
	dc 3,2,1,0, 3,2,1,0, 3,2,1,0
	dc 3,2,1,0, 3,2,1,0, 3,2,1,0
	dc 3,2,1,0, 3,2,1,0, 3,2,1,0
	
	dc 2,1,0,0, 2,1,0,0, 2,1,0,0
	dc 2,1,0,0, 2,1,0,0, 2,1,0,0
	dc 2,1,0,0, 2,1,0,0, 2,1,0,0
	
	dc 1,0,0,0, 1,0,0,0, 1,0,0,0
	dc 1,0,0,0, 1,0,0,0, 1,0,0,0
	dc 1,0,0,0, 1,0,0,0, 1,0,0,0
	
	dc 0,0,0,0, 0,0,0,0, 0,0,0,0

OctoberCredits_FadeBackIn::
	ld hl, .gradTable
	ld b, 10
	jp RotatePalettesRight
.gradTable
	dc 0,0,0,0, 0,0,0,0, 0,0,0,0
	dc 0,0,0,0, 0,0,0,0, 0,0,0,0
	dc 0,0,0,0, 0,0,0,0, 0,0,0,0
	
	dc 1,0,0,0, 1,0,0,0, 1,0,0,0
	dc 1,0,0,0, 1,0,0,0, 1,0,0,0
	dc 1,0,0,0, 1,0,0,0, 1,0,0,0
	
	dc 2,1,0,0, 2,1,0,0, 2,1,0,0
	dc 2,1,0,0, 2,1,0,0, 2,1,0,0
	dc 2,1,0,0, 2,1,0,0, 2,1,0,0
	
	dc 3,2,1,0, 3,2,1,0, 3,2,1,0
