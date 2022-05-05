DebugColorPicker::
	ldh a, [hJoyDown]
	and SELECT
	jp nz, DebugMenu_TrainerPics
DebugMenu_PokePics:
	ld a, LOW(BULBASAUR)
	ldh [hDebugMenuDataBuffer + 1], a
	xor a
	ld [wMenuCursorY], a
	ldh [hDebugMenuCursorPos], a
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 2], a
	hlcoord 0, 0
	lb bc, 16, 18
	call Textbox
	hlcoord 0, 0
	lb bc, 7, 7
	call Textbox
	hlcoord 1, 9
	lb bc, 6, 6
	call Textbox
	hlcoord 1, 1
	lb bc, 7, 7
	xor a
	ldh [hGraphicStartTile], a
	predef PlaceGraphic
	hlcoord 2, 10
	lb bc, 6, 6
	ld a, $31
	ldh [hGraphicStartTile], a
	predef PlaceGraphic
	hlcoord 1, 1, wAttrMap
	lb bc, 7, 7
	ld a, 1
	call FillBoxWithByte
	hlcoord 2, 10, wAttrMap
	lb bc, 6, 6
	ld a, 1
	call FillBoxWithByte
	call WaitBGMap2
	call .change_pic
	call .put_color_labels

.input
	call JoyTextDelay
	call GetMenuJoypad
	ldh a, [hJoyDown]
	bit A_BUTTON_F, a
	jr nz, .a_held
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .left
	bit D_RIGHT_F, a
	jr nz, .right
	bit D_DOWN_F, a
	jr nz, .down
	bit D_UP_F, a
	jr nz, .up
	bit START_F, a	; START = play anim
	call nz, .play_animation
	bit B_BUTTON_F, a	; exit
	ret nz
	jr .input
.a_held
	ldh a, [hJoyPressed]
	bit START_F, a
	jr nz, .toggle_edit_mode	; A + START = edit/view
	bit B_BUTTON_F, a	; exit
	ret nz
	bit D_LEFT_F, a
	jr nz, .left
	bit D_RIGHT_F, a
	jr nz, .right
	bit D_DOWN_F, a
	jr nz, .down
	bit D_UP_F, a
	jr nz, .up
	bit SELECT_F, a
	jr nz, .swap_pals
	jr .input

.toggle_edit_mode
	ldh a, [hDebugMenuCursorPos]
	xor 1
	ldh [hDebugMenuCursorPos], a
	call .update_edit_display
	jr .input

.up
	ld a, [wMenuCursorY]
	and a
	jr nz, .up_ok
	ld a, 12
.up_ok
	dec a
	ld [wMenuCursorY], a
	jp .update_pal_cursor

.down
	ld a, [wMenuCursorY]
	inc a
	cp 12
	jr nz, .down_ok
	xor a
.down_ok
	ld [wMenuCursorY], a
	jp .update_pal_cursor

.left
	ldh a, [hDebugMenuCursorPos]
	and a
	jp nz, .left_pal
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	dec hl
	ld a, h
	or l
	jr nz, .cont
	ld hl, NUM_POKEMON
	jr .cont

.right
	ldh a, [hDebugMenuCursorPos]
	and a
	jp nz, .right_pal
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	inc hl
	ld a, h
	cp HIGH(NUM_POKEMON)
	jr c, .cont
	ld a, l
	cp LOW(NUM_POKEMON) + 1
	jr c, .cont
	ld hl, 1
.cont
	ld a, h
	ldh [hDebugMenuDataBuffer], a
	ld a, l
	ldh [hDebugMenuDataBuffer + 1], a
	call .change_pic
	jp .input

.swap_pals
	ld hl, hDebugMenuDataBuffer + 2
	ld a, 1
	xor [hl]
	ld [hl], a
	call .load_pal
	call .print_all_colors
	jp .input

.change_pic
	call DisableLCD
	call .print_all_colors
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	ld de, vTiles2
	predef GetMonFrontpic
	ld de, vTiles2 tile $31
	predef GetMonBackpic
.load_pal
	farcall DebugMenuPokePicColors
	hlcoord 9, 1
	ld bc, 3
	ld a, " "
	call ByteFill
	ld de, hDebugMenuDataBuffer
	lb bc, 2, 3
	hlcoord 9, 1
	call PrintNum
	hlcoord 9, 2
	ld bc, 10
	ld a, " "
	call ByteFill
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 9, 2
	call PlaceString
	call EnableLCD
	call DelayFrame
	ret

.play_animation
	ld de, vTiles2
	predef GetAnimatedFrontpic
	hlcoord 1, 1
	lb de, $0, ANIM_MON_MENU
	predef LoadMonAnimation
	ld hl, wcf64
	set 6, [hl]
.anim_loop
	callba StatsScreen_WaitAnim
	ld a, [wcf64]
	bit 6, a
	jr nz, .anim_loop
	ld a, 1
	ld [hBGMapMode], a
	ret

.left_pal
	call .get_pal_color
	and a
	jp z, .input
	xor a
	call .set_pal_color
	jr .update_pal_edit

.right_pal
	call .get_pal_color
	cp $1f
	jp z, .input
	ld a, 3
	call .set_pal_color
	jr .update_pal_edit

.update_pal_edit
	call .get_pal_color
	ldh [hDebugMenuDataBuffer + 4], a
	ld bc, SCREEN_WIDTH
	hlcoord 14, 5
	ld a, [wMenuCursorY]
	call AddNTimes
	ld de, hDebugMenuDataBuffer + 4
	lb bc, $81, 2
	call PrintNum
	farcall DebugMenuPokePicApplyPal
	jp .input

.update_pal_cursor
	call ._update_pal_cursor
	jp .input

._update_pal_cursor
	ld a, " "
	hlcoord 9, 5
	ld bc, SCREEN_WIDTH
	ld d, 12
.update_pal_cursor_loop
	ld [hl], a
	add hl, bc
	dec d
	jr nz, .update_pal_cursor_loop
	hlcoord 9, 5
	ld a, [wMenuCursorY]
	call AddNTimes
	ld a, "▶"
	ld [hl], a
	ret

.get_pal_color
	call .get_pal_addr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, d
	and a
	jr z, .get_pal_done
	call .hl_r_5
	dec a
	jr z, .get_pal_done
	call .hl_r_5
.get_pal_done
	ld a, l
	and $1f
	ret

.set_pal_color
	push af
	call .get_pal_addr
	pop af
	add d
	push af
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop af
	add a
	push hl
	ld hl, .color_delta
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld h, d
	ld l, e
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld [hl], d
	dec hl
	ld [hl], e
	ret

.print_all_colors
	hlcoord 14, 5
	xor a
	ld [wMenuCursorY], a
	ld d, 12
.print_color_loop
	push de
	push hl
	call .get_pal_color
	pop hl
	ldh [hDebugMenuDataBuffer + 4], a
	lb bc, $81, 2
	push hl
	ld de, hDebugMenuDataBuffer + 4
	call PrintNum
	ld hl, wMenuCursorY
	inc [hl]
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop de
	dec d
	jr nz, .print_color_loop
	xor a
	ld [wMenuCursorY], a
	call ._update_pal_cursor
	ret

.get_pal_addr
	ld a, [wMenuCursorY]
	ld c, 3
	call SimpleDivide
	ld d, a
	ld a, b
	ld hl, wDebugColorPickerPal
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ret

.hl_r_5
	ld d, 5
	and a
.hl_r_5_loop
	rr h
	rr l
	dec d
	ret z
	jr .hl_r_5_loop

.try_l_bc
	ld a, d
	and a
	ret z
	call .bc_l_5
	dec a
	ret z
.bc_l_5
	ld d, 5
	and a
.bc_l_5_loop
	rl c
	rl b
	dec d
	jr nz, .bc_l_5_loop
	ret

.color_delta
	dw -1
	dw -32
	dw -1024
	dw 1
	dw 32
	dw 1024

.put_color_labels
	hlcoord 10, 5
	ld a, "1"
	ld [hl], a
	hlcoord 10, 8
	ld a, "2"
	ld [hl], a
	hlcoord 10, 11
	ld a, "3"
	ld [hl], a
	hlcoord 10, 14
	ld a, "4"
	ld [hl], a
	hlcoord 12, 5
	ld bc, SCREEN_WIDTH
	ld d, 4
.loop
	ld a, "R"
	ld [hl], a
	add hl, bc
	ld a, "G"
	ld [hl], a
	add hl, bc
	ld a, "B"
	ld [hl], a
	add hl, bc
	dec d
	jr nz, .loop
	ret

.update_edit_display
	ldh a, [hDebugMenuCursorPos]
	and a
	jr z, .clear_edit
	hlcoord 17, 5
	ld bc, SCREEN_WIDTH
	ld a, "E"
	ld [hl], a
	add hl, bc
	ld a, "D"
	ld [hl], a
	add hl, bc
	ld a, "I"
	ld [hl], a
	add hl, bc
	ld a, "T"
	ld [hl], a
	ret

.clear_edit
	hlcoord 17, 5
	ld bc, SCREEN_WIDTH
	ld a, " "
	ld [hl], a
	add hl, bc
	ld [hl], a
	add hl, bc
	ld [hl], a
	add hl, bc
	ld [hl], a
	ret

DebugMenu_TrainerPics:
	ld a, 1
	ld [wMenuCursorY], a
	hlcoord 0, 0
	lb bc, 16, 18
	call Textbox
	hlcoord 1, 8
	lb bc, 7, 7
	call Textbox
	hlcoord 2, 9
	lb bc, 7, 7
	xor a
	ldh [hGraphicStartTile], a
	predef PlaceGraphic
	hlcoord 2, 9, wAttrMap
	lb bc, 7, 7
	ld a, 1
	call FillBoxWithByte
	call WaitBGMap2
	call .change_pic

.input
	call JoyTextDelay
	call GetMenuJoypad
	ldh a, [hJoyDown]
	bit A_BUTTON_F, a
	jr nz, .a_held
	ldh a, [hJoyPressed]
.a_held
	bit B_BUTTON_F, a
	ret nz
	bit D_LEFT_F, a
	jr nz, .left
	bit D_RIGHT_F, a
	jr nz, .right
	jr .input

.left
	ld a, [wMenuCursorY]
	dec a
	jr nz, .cont
	ld a, NUM_TRAINER_CLASSES - 1
	jr .cont

.right
	ld a, [wMenuCursorY]
	inc a
	cp NUM_TRAINER_CLASSES
	jr nz, .cont
	ld a, 1
.cont
	ld [wMenuCursorY], a
	call .change_pic
	jr .input

.change_pic
	ld a, [wMenuCursorY]
	ld [wTrainerClass], a
	ld [wCurSpecies], a
	ld de, vTiles2
	farcall GetTrainerPic
	farcall DebugMenuTrainerPicColors
	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	call GetName
	hlcoord 1, 1
	ld bc, 3
	ld a, " "
	call ByteFill
	ld de, wMenuCursorY
	lb bc, 1, 3
	hlcoord 1, 1
	call PrintNum
	hlcoord 1, 2
	ld bc, 15
	ld a, " "
	call ByteFill
	ld de, wStringBuffer1
	hlcoord 1, 2
	call PlaceString
	ret
