; with help from PC
; XXX: what if i can fit all of this inside the main battle bank

CheckFinalMon:
	push af
	; is not wild battle?
		ld a, [wBattleMode]
		dec a
		jr z, .done
	; is not linked?
		ld a, [wLinkMode]
		and a
		jr nz, .done
	; is last pokemon?
		farcall CheckAnyOtherAliveEnemyMons
		jr nz, .done
	; has text?
		call GetFinalMonTxtPointer
		jr c, .done
	; copy text pointer
		ld a, l
		ld [wBattleFinalMonTextPointer], a
		ld a, h
		ld [wBattleFinalMonTextPointer + 1], a
	; init stuff
		farcall EmptyBattleTextbox
		ld c, 20
		call DelayFrames
; punch it
	; slide enemy mon away
		call SlideEnemyPicOut2
	; do music
		ld de, MUSIC_FINAL_POKEMON
		call PlayMusic
		
		ld a, [wTempEnemyMonSpecies]
		push af
	; slide trainer pic in
			farcall BattleWinSlideInEnemyTrainerFrontpic
	; read in text pointer
			ld a, [wBattleFinalMonTextPointer]
			ld l, a
			ld a, [wBattleFinalMonTextPointer + 1]
			ld h, a
			call BattleTextbox
		pop af
		ld [wTempEnemyMonSpecies], a
	; slide trainer pic out
		farcall EmptyBattleTextbox
		call SlideEnemyPicOut2
		ld c, 10
		call DelayFrames
	; slide pokemon pic in
		call SlideBackInMonPic
.done
	pop af
	ret

SlideEnemyPicOut2:
	hlcoord 18, 0
	ld a, 8
	ldh [hMapObjectIndexBuffer], a
	ld c, a
.loop
	push bc
	push hl
	ld b, $7
.loop2
	push hl
	call .DoFrame
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .loop2
	ld c, 3
	call DelayFrames
	pop hl
	pop bc
	dec c
	jr nz, .loop
	ret
.DoFrame:
	ldh a, [hMapObjectIndexBuffer]
	ld c, a
	cp $8
	jr nz, .back
.forward
	ld a, [hli]
	ld [hld], a
	dec hl
	dec c
	jr nz, .forward
	ret
.back
	ld a, [hld]
	ld [hli], a
	inc hl
	dec c
	jr nz, .back
	ret

SlideBackInMonPic:
	farcall FinishBattleAnim
	farcall GetEnemyMonFrontpic
	hlcoord 19, 0
	ld c, 0

.outer_loop
	inc c
	ld a, c
	cp 9
	ret z
	xor a
	ldh [hBGMapMode], a
	ldh [hBGMapThird], a
	ld d, $0
	push bc
	push hl

.inner_loop
	call .CopyColumn
	inc hl
	ld a, 7
	add d
	ld d, a
	dec c
	jr nz, .inner_loop

	ld a, $1
	ldh [hBGMapMode], a
	ld c, 4
	call DelayFrames
	pop hl
	pop bc
	dec hl
	jr .outer_loop

.CopyColumn:
	push hl
	push de
	push bc
	ld e, 7

.loop
; add: check if we're going out of bounds
	ld a, d
	cp 7 * 7
	jr c, .move_as_is
	ld d, " " ; if we are, insert a blank tile instead
.move_as_is
	ld [hl], d
	ld bc, SCREEN_WIDTH
	add hl, bc
	inc d
	dec e
	jr nz, .loop

	pop bc
	pop de
	pop hl
	ret

SlidePlayerPicIn::
	ld a, 7
	ldh [hMapObjectIndexBuffer], a
	hlcoord 0, 6
	ld a, $4f
	ld c, 6
	ld de, SCREEN_WIDTH
.loop1
	ld [hl], a
	add hl, de
	inc a
	dec c
	jr nz, .loop1
	call WaitBGMap
	hlcoord 6, 6
	ldh a, [hMapObjectIndexBuffer]
	ld c, a
.loop
	push bc
	push hl
	ld b, 6
.loop2
	push hl
	call .DoFrame
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .loop2
	ld c, 2
	call DelayFrames
	pop hl
	pop bc
	dec c
	jr nz, .loop
	hlcoord 0, 6
	ld a, $7f
	ld c, 6
	ld de, SCREEN_WIDTH
.loop3
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop3
	jp WaitBGMap
.DoFrame:
	ldh a, [hMapObjectIndexBuffer]
	ld c, a
.forward
	ld a, [hli]
	ld [hld], a
	cp " "
	jr z, .skip
	sub 6
	cp $30
	jr nc, .do
	ld a, " "
.do
	ld [hl], a
.skip
	dec hl
	dec c
	jr nz, .forward
	ret

SlideBattlePicOut2::
	hlcoord 1, 6
	ld a, 8 
	ldh [hMapObjectIndexBuffer], a
	ld c, a
.loop
	push bc
	push hl
	ld b, $7
.loop2
	push hl
	call .DoFrame
	pop hl
	ld de, SCREEN_WIDTH
	add hl, de
	dec b
	jr nz, .loop2
	ld c, 2
	call DelayFrames
	pop hl
	pop bc
	dec c
	jr nz, .loop
	ret
.DoFrame:
	ldh a, [hMapObjectIndexBuffer]
	ld c, a
.forward
	ld a, [hld]
	ld [hli], a
	inc hl
	dec c
	jr nz, .forward
	ret

GetFinalMonTxtPointer:
; Returns the pointer at HL if succeeded and carry is cleared.
; Otherwise, clobbers registers and carry is set.
	ld hl, FinalMonTexts
	ld de, wOtherTrainerClass

; place value to compare to
	ld a, [de]
	ld c, a

.keep_searching
	ld a, [hli]

; end of list?
	cp -1
	jr z, .not_found ; terminate immediately

; is correct value?
	cp c
	jr nz, .advance

; complement (clear) flag
	scf
	ccf
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr .done

.advance
	inc hl
	inc hl
	jr .keep_searching

.not_found
	scf
.done
	ret
	
INCLUDE "data/trainers/final_mon_txt.asm"
