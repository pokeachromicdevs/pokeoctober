TMHMPocket:
	ld a, $1
	ldh [hInMenu], a
	call TMHM_PocketLoop
	ld a, $0
	ldh [hInMenu], a
	ret nc
	call PlaceHollowCursor
	call WaitBGMap
	ld a, [wCurTMHM]
	scf
	ret

TMHM_PocketLoop:
	xor a
	ldh [hBGMapMode], a
	call TMHM_DisplayPocketItems
	ld a, 3
	ld [w2DMenuCursorInitY], a
	ld a, 2
	;ld a, 7
	ld [w2DMenuCursorInitX], a
	ld a, 1
	ld [w2DMenuNumCols], a
	ld a, 5
	sub d
	inc a
	cp 6
	jr nz, .okay
	dec a
.okay
	ld [w2DMenuNumRows], a
	ld a, $c
	ld [w2DMenuFlags1], a
	xor a
	ld [w2DMenuFlags2], a
	ld a, $20
	ld [w2DMenuCursorOffsets], a
	ld a, A_BUTTON | B_BUTTON | D_UP | D_DOWN | D_LEFT | D_RIGHT
	ld [wMenuJoypadFilter], a
	ld a, [wTMHMPocketCursor]
	inc a
	ld [wMenuCursorY], a
	ld a, $1
	ld [wMenuCursorX], a
	jr TMHM_ShowTMMoveDescription

TMHM_JoypadLoop:
	call TMHM_DisplayPocketItems
	call StaticMenuJoypad
	ld b, a
	ld a, [wMenuCursorY]
	dec a
	ld [wTMHMPocketCursor], a
	xor a
	ldh [hBGMapMode], a
	ld a, [w2DMenuFlags2]
	bit 7, a
	jp nz, TMHM_ScrollPocket
	ld a, b
	ld [wMenuJoypad], a
	bit A_BUTTON_F, a
	jp nz, TMHM_ChooseTMorHM
	bit B_BUTTON_F, a
	jp nz, TMHM_ExitPack
	bit D_RIGHT_F, a
	jp nz, TMHM_ExitPocket
	bit D_LEFT_F, a
	jp nz, TMHM_ExitPocket
TMHM_ShowTMMoveDescription:
	call TMHM_CheckHoveringOverCancel
	jp nc, TMHM_ExitPocket
	hlcoord 0, 12
	ld b, 4
	ld c, SCREEN_WIDTH - 2
	call Textbox
	ld a, [wCurTMHM]
	cp NUM_TMS + NUM_HMS + 1
	jr nc, TMHM_JoypadLoop
	ld [wTempTMHM], a
	predef GetTMHMMove
	ld a, [wTempTMHM]
	ld [wCurSpecies], a
	hlcoord 1, 14
	call PrintMoveDesc
	jp TMHM_JoypadLoop

TMHM_ChooseTMorHM:
	call TMHM_PlaySFX_ReadText2
	call CountwTMsHMs ; This stores the count to wTempTMHM.
	ld a, [wMenuCursorY]
	dec a
	ld b, a
	ld a, [wTMHMPocketScrollPosition]
	add b
	ld b, a
	ld a, [wTempTMHM]
	cp b
	jr z, _TMHM_ExitPack ; our cursor was hovering over CANCEL
TMHM_CheckHoveringOverCancel:
	call TMHM_GetCurrentPocketPosition
	ld a, [wMenuCursorY]
	ld b, a
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .okay
	call CheckTMHM
	jr z, .loop
	dec b
	jr nz, .loop
	ld a, c
.okay
	ld [wCurTMHM], a
	cp -1
	ret

TMHM_ExitPack:
	call TMHM_PlaySFX_ReadText2
_TMHM_ExitPack:
	ld a, $2
	ld [wMenuJoypad], a
	and a
	ret

TMHM_ExitPocket:
	and a
	ret

TMHM_ScrollPocket:
	ld a, b
	bit 7, a
	jr nz, .skip
	ld hl, wTMHMPocketScrollPosition
	ld a, [hl]
	and a
	jp z, TMHM_JoypadLoop
	dec [hl]
	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

.skip
	call TMHM_GetCurrentPocketPosition
	ld b, 5
.loop
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jp nc, TMHM_JoypadLoop
	call CheckTMHM
	jr z, .loop
	dec b
	jr nz, .loop
	ld hl, wTMHMPocketScrollPosition
	inc [hl]
	call TMHM_DisplayPocketItems
	jp TMHM_ShowTMMoveDescription

TMHM_DisplayPocketItems:
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jp z, Tutorial_TMHMPocket

	hlcoord 0, 2
	lb bc, 10, 15
	ld a, " "
	call ClearBox

	call TMHM_GetCurrentPocketPosition
	ld d, $5
.loop2
	inc c
	ld a, c
	cp NUM_TMS + NUM_HMS + 1
	jr nc, .NotTMHM
	call CheckTMHM
	jr z, .loop2
	ld b, a
	ld a, c
	ld [wTempTMHM], a
	push hl
	push de
	push bc
	call TMHMPocket_GetCurrentLineCoord
	push hl
	ld a, [wTempTMHM]
	cp NUM_TMS + 1
	jr nc, .HM
	ld de, wTempTMHM
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	jr .okay

.HM:
	push af
	sub NUM_TMS
	ld [wTempTMHM], a
	ld [hl], "H"
	inc hl
	ld de, wTempTMHM
	lb bc, PRINTNUM_RIGHTALIGN | 1, 2
	call PrintNum
	pop af
	ld [wTempTMHM], a
.okay
	predef GetTMHMMove
	ld a, [wNamedObjectIndexBuffer]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	pop hl
	ld bc, 3
	add hl, bc
	push hl
	call PlaceString
	pop hl
	pop bc
	pop de
	pop hl
	dec d
	jr nz, .loop2
	jr .done

.NotTMHM:
	call TMHMPocket_GetCurrentLineCoord
	inc hl
	inc hl
	inc hl
	push de
	ld de, TMHM_String_Cancel
	call PlaceString
	pop de
.done
	ret

TMHMPocket_GetCurrentLineCoord:
	;hlcoord 5,0
	hlcoord 0, 1
	ld bc, 2 * SCREEN_WIDTH
	ld a, 6
	sub d
	ld e, a
	; AddNTimes
.loop
	add hl, bc
	dec e
	jr nz, .loop
	ret

Unreferenced_Function2ca95:
	pop hl
	ld bc, 3
	add hl, bc
	predef GetTMHMMove
	ld a, [wTempTMHM]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	push hl
	call PlaceString
	pop hl
	ret

TMHM_String_Cancel:
	db "CANCEL@"

TMHM_GetCurrentPocketPosition:
	ld a, [wTMHMPocketScrollPosition]
	ld b, a
	inc b
	ld c, -1
.loop
	inc c
	ld a, c
	call CheckTMHM
	jr z, .loop
	dec b
	jr nz, .loop
	dec c
	ret

Tutorial_TMHMPocket:
	hlcoord 9, 3
	push de
	ld de, TMHM_String_Cancel
	call PlaceString
	pop de
	ret

TMHM_PlaySFX_ReadText2:
	push de
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	pop de
	ret

.NoRoomText:
	; You have no room for any more @ S.
	text_far UnknownText_0x1c03fa
	text_end

.ReceivedText:
	; You received @ !
	text_far UnknownText_0x1c0421
	text_end

.CheckHaveRoomForTMHM:
	ld a, [wTempTMHM]
	dec a
	ld hl, wTMsHMs
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	inc a
	cp NUM_TMS * 2
	ret nc
	ld [hl], a
	ret

CountwTMsHMs: ; 2cb2a (b:4b2a)
	ld hl, wTMsHMs
	ld b, 0
	ld c, ((NUM_TMS + NUM_HMS) + 7) / 8
.loop
	ld a, [hli]
	call CountSetBitsInByte
	add b
	ld b, a
	dec c
	jr nz, .loop
	ld a, b
	ld [wd265], a
	pop de
	ret

CountSetBitsInByte:
	push hl
	push bc
	ld hl, .SetBitsInByte
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	pop bc
	pop hl
	ret

.SetBitsInByte:
	db 0, 1, 1, 2, 1, 2, 2, 3
	db 1, 2, 2, 3, 2, 3, 3, 4
	db 1, 2, 2, 3, 2, 3, 3, 4
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 1, 2, 2, 3, 2, 3, 3, 4
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 1, 2, 2, 3, 2, 3, 3, 4
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 4, 5, 5, 6, 5, 6, 6, 7
	db 1, 2, 2, 3, 2, 3, 3, 4
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 4, 5, 5, 6, 5, 6, 6, 7
	db 2, 3, 3, 4, 3, 4, 4, 5
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 4, 5, 5, 6, 5, 6, 6, 7
	db 3, 4, 4, 5, 4, 5, 5, 6
	db 4, 5, 5, 6, 5, 6, 6, 7
	db 4, 5, 5, 6, 5, 6, 6, 7
	db 5, 6, 6, 7, 6, 7, 7, 8

CheckTMHM:
	and a
	ret z
	push bc
	push de
	dec a
	ld e, a
	ld d, 0
	ld b, CHECK_FLAG
	ld hl, wTMsHMs
	call FlagAction
	ld a, c
	pop de
	pop bc
	and a
	ret
	
AskTeachTMHM: ; 2c7bf (b:47bf)
	ld hl, wOptions
	ld a, [hl]
	push af
	res NO_TEXT_SCROLL, [hl]
	ld a, [wCurTMHM]
	ld [wCurTMHM], a
	predef GetTMHMMove
	ld a, [wCurTMHM]
	ld [wPutativeTMHMMove], a
	call GetMoveName
	call CopyName1
	ld hl, Text_BootedTM ; Booted up a TM
	ld a, [wCurTMHM]
	cp HM01
	jr c, .TM
	ld hl, Text_BootedHM ; Booted up an HM
.TM:
	call PrintText
	ld hl, Text_ItContained
	call PrintText
	call YesNoBox
	pop bc
	ld a, b
	ld [wOptions], a
	ret

ChooseMonToLearnTMHM: ; 2c7fb
	ld hl, wStringBuffer2
	ld de, wTMHMMoveNameBackup
	ld bc, 12
	call CopyBytes
	call ClearBGPalettes
ChooseMonToLearnTMHM_NoRefresh: ; 2c80a
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX
	ld a, $3 ; TeachWhichPKMNString
	ld [wPartyMenuActionText], a
.loopback
	farcall WritePartyMenuTilemap
	farcall PrintPartyMenuText
	call WaitBGMap
	call SetPalettes
	call DelayFrame
	farcall PartyMenuSelect
	push af
	ld a, [wCurPartySpecies]
	cp EGG
	pop bc ; now contains the former contents of af
	jr z, .egg
	push bc
	ld hl, wTMHMMoveNameBackup
	ld de, wStringBuffer2
	ld bc, 12
	call CopyBytes
	pop af ; now contains the original contents of af
	ret

.egg
	push hl
	push de
	push bc
	push af
	ld de, SFX_WRONG
	call PlaySFX
	call WaitSFX
	pop af
	pop bc
	pop de
	pop hl
	jr .loopback
; 2c867

TeachTMHM: ; 2c867
	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	pop bc

	ld a, c
	and a
	jr nz, .compatible
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld hl, Text_TMHMNotCompatible
	call PrintText
	jr .nope

.compatible
	farcall KnowsMove
	jr c, .nope

	predef LearnMove
	ld a, b
	and a
	jr z, .nope

	ld a, [wCurTMHM]
	call IsHM
	ret c

	ld c, HAPPINESS_LEARNMOVE
	farcall ChangeHappiness
	jr .learned_move

.nope
	and a
	ret

.learned_move
	scf
	ret
; 2c8bf (b:48bf)

Text_BootedTM: ; 0x2c8bf
	; Booted up a TM.
	text_jump UnknownText_0x1c0373
	db "@"
; 0x2c8c4

Text_BootedHM: ; 0x2c8c4
	; Booted up an HM.
	text_jump UnknownText_0x1c0384
	db "@"
; 0x2c8c9

Text_ItContained: ; 0x2c8c9
	; It contained @ . Teach @ to a #MON?
	text_jump UnknownText_0x1c0396
	db "@"
; 0x2c8ce

Text_TMHMNotCompatible: ; 0x2c8ce
	; is not compatible with @ . It can't learn @ .
	text_jump UnknownText_0x1c03c2
	db "@"
; 0x2c8d3
