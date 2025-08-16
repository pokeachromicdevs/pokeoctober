LoadBattleAnimGFX:
	push hl
	cp BATTLE_ANIM_GFX_POKE_BALL
	call z, .LoadBallPalette
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, AnimObjGFX
	add hl, de
	ld c, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de
	push bc
	call DecompressRequest2bpp
	pop bc
	ret

.LoadBallPalette:
	; save the current WRAM bank
	ld a, [rSVBK]
	push af
	; switch to the WRAM bank of wCurItem so we can read it
	ld a, BANK(wCurItem)
	ld [rSVBK], a
	; store the current item in b
	ld a, [wCurItem]
	call GetItemIndexFromID
	; seek for the BallColors entry matching the current item
	ld de, BallColors
.loop
	ld a, [de]
	inc de
	cp l
	jr nz, .skip_entry
	ld a, [de]
	inc de
	cp -1 ; no balls above $ff00
	jr z, .done
	cp h
.got_ball_color
	jr z, .done
rept PAL_COLOR_SIZE * 2
	inc de
endr
	jr .loop
.skip_entry
rept (PAL_COLOR_SIZE * 2) + 1
	inc de
endr
	jr .loop
.done
	; switch to the WRAM bank of wOBPals2 so we can write to it
	ld a, BANK(wOBPals2)
	ld [rSVBK], a
	; load the RGB colors into the middle two colors of PAL_BATTLE_OB_RED
	ld hl, wOBPals2 palette PAL_BATTLE_OB_RED color 1
rept PAL_COLOR_SIZE * 2 - 1
	ld a, [de]
	inc de
	ld [hli], a
endr
	ld a, [de]
	ld [hl], a
	; apply the updated colors to the palette RAM
	ld a, $1
	ldh [hCGBPalUpdate], a
	; restore the previous WRAM bank
	pop af
	ld [rSVBK], a
	; restore the graphics index to be loaded
	ld a, BATTLE_ANIM_GFX_POKE_BALL
	ret

INCLUDE "data/battle_anims/ball_colors.asm"
