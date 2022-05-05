smartcp: MACRO
IF \1 == 0
	and a
ELSE
	cp \1
ENDC
ENDM

cphl16: MACRO
; arg1: 16 bit register
; arg2: value to compare to
	ld a, h
	smartcp HIGH(\1)
	jr c, .done\@
	jr nz, .done\@
	ld a, l
	smartcp LOW(\1)
.done\@
ENDM

DebugMenu::
	call ClearWindowData

	ld de, SFX_MENU
	call PlaySFX

	farcall ReanchorBGMap_NoOAMUpdate
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	lb bc, SCREEN_HEIGHT - 2, 11
	hlcoord 0, 0
	call Textbox
	call SafeUpdateSprites
	call _OpenAndCloseMenu_HDMATransferTileMapAndAttrMap
	farcall LoadFonts_NoOAMUpdate
	call UpdateTimePals
	call .GetInput
	jr c, .Exit
	ld a, [wMenuSelection]
	ld hl, .Jumptable
	rst JumpTable
.Exit:
	ldh a, [hOAMUpdate]
	push af
	ld a, 1
	ldh [hOAMUpdate], a
	call LoadFontsExtra
	pop af
	ldh [hOAMUpdate], a
	call ExitMenu
	call CloseText
	call UpdateTimePals
	ret

.GetInput:
	xor a
	ldh [hBGMapMode], a
	ld hl, .MenuHeader
	call LoadMenuHeader
	call ScrollingMenu
	and B_BUTTON
	jr nz, .b
	and a
	ret

.b
	scf
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, 11, SCREEN_HEIGHT - 2
	dw .MenuData
	db 1 ; default selection

.MenuData:
	db 0, 8, 0
	db SCROLLINGMENU_ITEMS_NORMAL
	dba .MenuItems
	dba .PlaceMenuStrings
	dba NULL

.PlaceMenuStrings:
	push de
	ld a, [wMenuSelection]
	ld hl, .Strings
	call GetNthString
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	ret

.Strings:
	db "SOUND TEST@"
	db "SUBGAME (SOON)@"
	db "WARP!@"
	db "COLOR@"
	db "FILL DEX@"
	db "TEACH MOVE@"
	db "GIVE #@"
	db "MAX ¥@"
	db "WARP ANY@"
	db "PC@"
	db "FILL BAG@"
	db "FILL TM/HM@"
	db "PLAY CRY@"
	db "TRAINERS@"
	db "HELP@"

.MenuItems
;	db 14
;	db 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13
	db 14
	db 14, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13
	db -1

.Jumptable
	dw Debug_SoundTest
	dw Debug_SubgameMenu
	dw Debug_Warp
	dw Debug_ColorPicker
	dw Debug_FillDex
	dw Debug_TeachMove
	dw Debug_GivePoke
	dw Debug_MaxMoney
	dw Debug_WarpAny
	dw Debug_PC
	dw Debug_FillBag
	dw Debug_FillTMHM
	dw Debug_PlayCry
	dw Debug_Trainer
	dw Debug_Help

Debug_Help:
; load header only once so we don't allocate
; too much memory and corrupt shit
	ld hl, .MenuHeader
	call LoadMenuHeader
.loop
	lb bc, SCREEN_HEIGHT - 2, SCREEN_WIDTH - 2
	hlcoord 0, 0
	call Textbox
	call ScrollingMenu
	and B_BUTTON
	ret nz
	ld a, [wMenuSelection]
	cp -1
	ret z
	dec a
	ld e, a
	ld d, 0
	ld hl, .Dialogs
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call PrintText
	jr .loop

.Dialogs:
	dw .MenuOpen
	dw .SoundTest
	dw .ColorMenu
	dw .TrainerMenu
.Dialogs_End:

DEBUG_NUM_HELP_ITEMS EQU (Debug_Help.Dialogs_End - Debug_Help.Dialogs) / 2

.MenuOpen:
	text "If you're reading"
	line "this, you've most"
	para "certainly got it"
	line "figured out."

	para "But for reference,"
	line "it's B plus START."

	para "While you're in the"
	line "overworld, hold B"
	cont "to run."

	para "Hold START while a"
	line "textbox is open to"
	cont "advance instantly."
	prompt
.SoundTest:
	text "1st line is MUSIC,"
	line "2nd line is SFX."
	prompt
.ColorMenu:
	text "Press START to"
	line "play a #MON's"
	cont "animation."

	para "Hold A, then press"
	line "START to edit the"
	cont "palette."

	para "Press B to exit."
	prompt
.TrainerMenu:
	text "1st line is class,"
	line "2nd line is which"
	cont "party to set."
	prompt

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 1, 1, SCREEN_WIDTH - 2, SCREEN_HEIGHT - 2
	dw .MenuData
	db 1

.MenuData:
	db 0
	db 8, 0
	db SCROLLINGMENU_ITEMS_NORMAL
	dba .Items
	dba .DrawItem
	dba NULL

.Items:
	db DEBUG_NUM_HELP_ITEMS
x = 1
rept DEBUG_NUM_HELP_ITEMS
	db x
x = x + 1
endr
	db -1

.DrawItem:
	push de
	ld a, [wMenuSelection]
	dec a
	ld hl, .ItemNames
	ld bc, 13
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	ret

.ItemNames:
	db "MENU@@@@@@@@@"
	db "SOUND TEST@@@"
	db "COLOR@@@@@@@@"
	db "TRAINERS@@@@@"

Debug_SoundTest:
	ld de, MUSIC_NONE
	call PlayMusic
	xor a
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 1], a
	ldh [hDebugMenuDataBuffer + 2], a
	ldh [hDebugMenuDataBuffer + 3], a
	hlcoord 0, 0
	lb bc, 6, SCREEN_WIDTH - 2
	call Textbox
	call WaitBGMap2
	ld a, 1
	ldh [hDebugMenuCursorPos], a
	call .update_display
	xor a
	ldh [hDebugMenuCursorPos], a
	call .update_display
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	cp B_BUTTON
	jp z, .end
	cp D_LEFT
	jr z, .left
	cp D_RIGHT
	jr z, .right
	cp A_BUTTON
	jp z, .play
	and D_UP | D_DOWN
	jr nz, .change
	jr .loop

.change
	ldh a, [hDebugMenuCursorPos]
	inc a
	and 1
	ldh [hDebugMenuCursorPos], a
	call .update_display
	jr .loop

.left
	call .get_value
.left_loop
	push af
	ld a, e
	or d
	jr nz, .dec_music
	ld de, NUM_MUSIC_TRACKS - 1
	jr .left_cont
.dec_music
	dec de
.left_cont
	pop af
	dec a
	jr nz, .left_loop
	call .put_value
	call .update_display
	jr .loop

.right
	call .get_value
.right_loop
	inc de

	push af
	ld a, d
	cp HIGH(NUM_MUSIC_TRACKS)
	jr c, .right_cont
	jr nz, .right_cont
	ld a, e
	cp LOW(NUM_MUSIC_TRACKS)
	jr c, .right_cont
	xor a
	ld d, a
	ld e, a
.right_cont
	pop af
	dec a
	jr nz, .right_loop
	call .put_value
	call .update_display
	jr .loop

.update_display
	hlcoord 1, 2
	ld a, " "
	ld [hl], a
	hlcoord 1, 5
	ld a, " "
	ld [hl], a
	ldh a, [hDebugMenuCursorPos]
	and a
	jr z, .update_music
	hlcoord 1, 5
	ld a, "▶"
	ldi [hl], a
	inc hl
	ld a, " "
	ldi [hl], a
	ldi [hl], a
	ldi [hl], a
	ldi [hl], a
	ld [hl], a
	hlcoord 3, 5
	ld de, hDebugMenuDataBuffer + 2
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	ret

.update_music
	hlcoord 1, 2
	ld a, "▶"
	ldi [hl], a
	inc hl
	ld a, " "
	ldi [hl], a
	ldi [hl], a
	ldi [hl], a
	ldi [hl], a
	ld [hl], a
	hlcoord 3, 2
	ld de, hDebugMenuDataBuffer
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 1, 3
	ld bc, 18
	ld a, " "
	call ByteFill
	ld hl, Debug_MusicNames
	ld bc, 18
	ldh a, [hDebugMenuDataBuffer + 1]
	cp a, NUM_MUSIC_TRACKS
	jp nc, .loop
	call AddNTimes
	ld d, h
	ld e, l
	hlcoord 1, 3
	call PlaceString
	ret

.play
	ldh a, [hDebugMenuCursorPos]
	and a
	jr z, .play_music
	call .get_value
	call PlaySFX
	;call WaitSFX
	jp .loop

.play_music
	ld de, 0
	call PlayMusic
	call DelayFrame
	call .get_value
	call PlayMusic
	jp .loop

.end
	ret

.get_value
	ldh a, [hDebugMenuCursorPos]
	ld hl, hDebugMenuDataBuffer
	add a
	add l
	ld l, a
	ldi a, [hl]
	ld e, [hl]
	ld d, a
	ldh a, [hJoyDown]
	and SELECT
	ld a, 1
	ret z
	ld a, 10
	ret

.put_value
	ldh a, [hDebugMenuCursorPos]
	ld hl, hDebugMenuDataBuffer
	add a
	add l
	ld l, a
	ld a, d
	ldi [hl], a
	ld [hl], e
	ret

INCLUDE "engine/debug/music_names.asm"

Debug_SubgameMenu:
	ret ; TODO
	ld hl, .MenuHeader
	call LoadMenuHeader
	call VerticalMenu
	ret c
	ld a, [wMenuCursorY]
	dec a
	ld bc, 3
	ld hl, .Jumptable
	call AddNTimes
	ldi a, [hl]
	ld b, a
	ldi a, [hl]
	ld h, [hl]
	ld l, a
	ld a, b
	rst $08
	ret

.Jumptable:
	dba SlotMachine
	dba CardFlip
	dba UnownPuzzle

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 10, 0, SCREEN_WIDTH - 1, 9
	dw .MenuData
	db 1 ; default

.MenuData:
	db STATICMENU_CURSOR
	db 4 ; # items
	db "Slots@"
	db "Card@"
	db "Unown@"

Debug_Warp:
	lb bc, SCREEN_HEIGHT - 2, SCREEN_WIDTH - 2
	hlcoord 0, 0
	call Textbox
	ld hl, .MenuHeader
	call LoadMenuHeader
	call ScrollingMenu
	and B_BUTTON
	ret nz
	ld a, [wMenuSelection]
	cp -1
	ret z
	dec a
	ld c, a
	ld b, 0
	ld hl, .SpawnTable
	add hl, bc
	ld a, [hl]
	cp -1
	ret z
	ld [wDefaultSpawnpoint], a
	farcall FlyFunction.DoFly
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	ret

.LocNames:
	db "HOME@@@@@@@@@"
	db "DEBUG@@@@@@@@"
	db " -- JOHTO --@"
	db "SILENT@@@@@@@"
	db "CG WOODS@@@@@"
	db "CHERRYGROVE@@"
	db "CG SHRINE@@@@"
	db "VIOLET@@@@@@@"
	db "ROUTE 32@@@@@"
	db "ALDER@@@@@@@@"
	db "AZALEA@@@@@@@"
	db "GOLDENROD@@@@"
	db "ECRUTEAK@@@@@"
	db "OLIVINE@@@@@@"
	db "MAHOGANY@@@@@"
	db "LAKE BIWAKO@@"
	db "BLACKTHORN@@@"
	db "MOUNT FUJI@@@"
	db " -- KANTO --@"
	db "PALLET@@@@@@@"
	db "VIRIDIAN@@@@@"
	db "PEWTER@@@@@@@"
	db "CERULEAN@@@@@"
	db "ROCK TUNNEL@@"
	db "VERMILION@@@@"
	db "LAVENDER@@@@@"
	db "SAFFRON@@@@@@"
	db "CELADON@@@@@@"
	db "FUCHSIA@@@@@@"
	db "CINNABAR@@@@@"
	db "INDIGO@@@@@@@"

.SpawnTable:
	db SPAWN_HOME
	db SPAWN_DEBUG
	db -1
	db SPAWN_NEW_BARK
	db SPAWN_CHERRYGROVE_WOODS
	db SPAWN_CHERRYGROVE
	db SPAWN_CHERRYGROVE_SHRINE
	db SPAWN_VIOLET
	db SPAWN_ROUTE_32
	db SPAWN_ALDER
	db SPAWN_AZALEA
	db SPAWN_GOLDENROD
	db SPAWN_ECRUTEAK
	db SPAWN_OLIVINE
	db SPAWN_MAHOGANY
	db SPAWN_LAKE_OF_RAGE
	db SPAWN_BLACKTHORN
	db SPAWN_MT_SILVER
	db -1
	db SPAWN_PALLET
	db SPAWN_VIRIDIAN
	db SPAWN_PEWTER
	db SPAWN_CERULEAN
	db SPAWN_ROCK_TUNNEL
	db SPAWN_VERMILION
	db SPAWN_LAVENDER
	db SPAWN_SAFFRON
	db SPAWN_CELADON
	db SPAWN_FUCHSIA
	db SPAWN_CINNABAR
	db SPAWN_INDIGO
.SpawnTableEnd:

NUM_DEBUG_SPAWNS EQU Debug_Warp.SpawnTableEnd - Debug_Warp.SpawnTable

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 1, 1, SCREEN_WIDTH - 2, SCREEN_HEIGHT - 2
	dw .MenuData
	db 1

.MenuData:
	db 0
	db 8, 0
	db SCROLLINGMENU_ITEMS_NORMAL
	dba .Items
	dba .DrawItem
	dba NULL

.Items:
	db NUM_DEBUG_SPAWNS
x = 1
rept NUM_DEBUG_SPAWNS
	db x
x = x + 1
endr
	db -1

.DrawItem:
	push de
	ld a, [wMenuSelection]
	dec a
	ld hl, .LocNames
	ld bc, 13
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	ret

Debug_ColorPicker:
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a
	farcall DebugColorPicker
	pop af
	ldh [hMapAnims], a
	call ReloadTilesetAndPalettes
	ret

INCLUDE "engine/debug/color_picker.asm"

Debug_FillDex:
; give pokedex
	ld de, ENGINE_POKEDEX
	ld b, SET_FLAG
	farcall EngineFlagAction
; set flags
	ld hl, 0
.loop
	inc hl
	ld a, h
	cp HIGH(NUM_POKEMON)
	jr nz, .setflag
	ld a, l
	cp LOW(NUM_POKEMON)
	ret z
.setflag
	push hl
	call GetPokemonIDFromIndex
	call SetSeenAndCaughtMon
	pop hl
	jr .loop

Debug_TeachMove:
	ld a, [wPartyCount]
	and a
	jp z, .no_pokes

	xor a
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 1], a
	hlcoord 0, 0
	lb bc, 6, SCREEN_WIDTH - 2
	call Textbox
	call WaitBGMap2
	call .update_display
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	cp B_BUTTON
	ret z
	cp A_BUTTON
	jr z, .teach
	ld b, a
	ldh a, [hJoyDown]
	and $f
	or b
	cp D_LEFT
	jr z, .left1
	cp D_RIGHT
	jr z, .right1
	cp D_DOWN
	jr z, .left10
	cp D_UP
	jr z, .right10
	cp D_LEFT | SELECT
	jr z, .left100
	cp D_RIGHT | SELECT
	jr z, .right100
	jr .loop

.left1
	call .left
	call .update_display
	jr .loop

.right1
	call .right
	call .update_display
	jr .loop

.left100
	ld c, 100
	jr .left10loop

.right100
	ld c, 100
	jr .right10loop

.left10
	ld c, 10
.left10loop
	call .left
	dec c
	jr nz, .left10loop
	call .update_display
	jr .loop

.right10
	ld c, 10
.right10loop
	call .right
	dec c
	jr nz, .right10loop
	call .update_display
	jr .loop

.teach
	xor a
	ld [wCurPartyMon], a
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	call GetMoveIDFromIndex
	ld [wTempTMHM], a
	ld [wPutativeTMHMMove], a
	call GetMoveName
	ld de, wStringBuffer2
	ld hl, wStringBuffer1
	ld bc, 13
	call CopyBytes
	predef LearnMove
	ret

.left
	ldh a, [hDebugMenuDataBuffer + 1]
	and a
	jr nz, .go_left
	ldh a, [hDebugMenuDataBuffer]
	and a
	jr nz, .go_left2
	ld a, HIGH(NUM_ATTACKS)
	ldh [hDebugMenuDataBuffer], a
	ld a, LOW(NUM_ATTACKS)
	ldh [hDebugMenuDataBuffer + 1], a
	ret

.go_left2
	dec a
	ldh [hDebugMenuDataBuffer], a
	xor a
.go_left
	dec a
	ldh [hDebugMenuDataBuffer + 1], a
	ret

.right
	ldh a, [hDebugMenuDataBuffer + 1]
	cp LOW(NUM_ATTACKS)
	jr nz, .go_right
	ldh a, [hDebugMenuDataBuffer]
	cp HIGH(NUM_ATTACKS)
	jr nz, .go_right
	xor a
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 1], a
	ret

.go_right
	ldh a, [hDebugMenuDataBuffer + 1]
	inc a
	ldh [hDebugMenuDataBuffer + 1], a
	ret nz
	ldh a, [hDebugMenuDataBuffer]
	inc a
	ldh [hDebugMenuDataBuffer], a
	ret

.update_display
	hlcoord 3, 2
	ld a, " "
	ldi [hl], a
	ldi [hl], a
	ldi [hl], a
	ldi [hl], a
	ld [hl], a
	hlcoord 3, 2
	ld de, hDebugMenuDataBuffer
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 1, 3
	ld a, " "
	ld bc, 18
	call ByteFill
	ld hl, hDebugMenuDataBuffer
	ld a, [hli]
	ld l, [hl]
	ld h, a
	and a
	jr nz, .doname
	ld a, l
	and a
	ret z
.doname
	call GetMoveIDFromIndex
	ld [wNamedObjectIndexBuffer], a
	call GetMoveName
	hlcoord 1, 3
	ld de, wStringBuffer1
	call PlaceString
	ret

.no_pokes
	ld hl, .NoPokesText
	jp PrintText

.NoPokesText:
	text "No #MON in"
	line "party!"
	prompt

Debug_GivePoke:
	xor a
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 1], a
	ldh [hDebugMenuDataBuffer + 2], a
	ldh [hDebugMenuDataBuffer + 3], a
	ldh [hDebugMenuDataBuffer + 4], a
	ldh [hDebugMenuDataBuffer + 5], a
	hlcoord 0, 0
	lb bc, 8, SCREEN_WIDTH - 2
	call Textbox
	call WaitBGMap2
	ld a, 2
	ldh [hDebugMenuCursorPos], a
	call .update_display
	ld a, 1
	ldh [hDebugMenuCursorPos], a
	call .update_display
	xor a
	ldh [hDebugMenuCursorPos], a
	call .update_display

.loop
	call JoyTextDelay
	ldh a, [hJoyDown]
	and $e
	ld b, a
	ldh a, [hJoyLast]
	or b
	bit A_BUTTON_F, a
	jp nz, .givepoke
	bit B_BUTTON_F, a
	ret nz
	bit D_DOWN_F, a
	jr nz, .down
	bit D_UP_F, a
	jr nz, .up
	ld b, 1
	bit START_F, a
	jr nz, .start
	bit SELECT_F, a
	jr z, .select
	ld b, 10
	jr .select
.start
	ld b, 100
.select
	bit D_LEFT_F, a
	jr nz, .left
	bit D_RIGHT_F, a
	jr nz, .right
	jr .loop

.up
	ldh a, [hDebugMenuCursorPos]
	and a
	jr nz, .do_up
	ld a, 3
.do_up
	dec a
	jr .curchange

.down
	ldh a, [hDebugMenuCursorPos]
	cp 2
	jr nz, .do_down
	ld a, -1
.do_down
	inc a
.curchange
	ldh [hDebugMenuCursorPos], a
	call .update_display
	jr .loop

.left
	call .getdat
.leftloop
; cursor == 0?
	ld a, [hDebugMenuCursorPos]
	and a
	jr nz, .dec_value
; hl == 0?
	ld a, h
	or l
	jr nz, .dec_value
	ld hl, NUM_POKEMON
	jr .left_cont
.dec_value
	dec hl
.left_cont
	dec b
	jr nz, .leftloop
	call .putdat
	call .update_display
	jr .loop

.right
	call .getdat
.rightloop
; cursor == 0?
	ld a, [hDebugMenuCursorPos]
	and a
	jr nz, .inc_value
; hl == max poke?
	cphl16 NUM_POKEMON
	jr c, .inc_value
	ld hl, 1
	jr .right_cont
.inc_value
	inc hl
.right_cont
	dec b
	jr nz, .rightloop
	call .putdat
	call .update_display
	jp .loop

.getdat
	ldh a, [hDebugMenuCursorPos]
	add a
	add LOW(hDebugMenuDataBuffer)
	ld c, a
	ldh a, [c]
	ld h, a
	inc c
	ldh a, [c]
	ld l, a
	dec c
	ret

.putdat
	ld a, h
	ldh [c], a
	inc c
	ld a, l
	ldh [c], a
	ret

.givepoke
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	cphl16 0
	jp z, .loop
	cphl16 NUM_POKEMON + 1
	jp nc, .loop
	ldh a, [hDebugMenuDataBuffer + 5]
	and a
	jp z, .loop
	cp 101
	jp nc, .loop
	ld [wCurPartyLevel], a
	ldh a, [hDebugMenuDataBuffer + 3]
	ld [wCurItem], a
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	ld b, 0
	farcall GivePoke
	ret

.update_display
	ld a, " "
	hlcoord 1, 2
	ld [hl], a
	hlcoord 1, 5
	ld [hl], a
	hlcoord 1, 8
	ld [hl], a
	ldh a, [hDebugMenuCursorPos]
	and a
	jr z, .put_mon
	dec a
	jr z, .put_item

; fallthrough
.put_level
	hlcoord 1, 8
	ld a, "▶"
	ld [hl], a
	hlcoord 3, 8
	ld a, "L"
	ld [hli], a
	ld a, "v"
	ld [hli], a
	inc hl
	ld de, hDebugMenuDataBuffer + 5
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
	ret

.put_mon
	hlcoord 1, 2
	ld a, "▶"
	ld [hl], a
	hlcoord 3, 2
	ld de, hDebugMenuDataBuffer
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	cphl16 0
	ret z
	cphl16 NUM_POKEMON + 1
	ret nc
	push hl
	hlcoord 1, 3
	ld a, " "
	ld bc, 18
	call ByteFill
	pop hl
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 1, 3
	call PlaceString
	ret

.put_item
	hlcoord 1, 5
	ld a, "▶"
	ld [hl], a
	hlcoord 3, 5
	ld de, hDebugMenuDataBuffer + 3
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
	hlcoord 1, 6
	ld bc, 18
	ld a, " "
	call ByteFill
	ldh a, [hDebugMenuDataBuffer + 3]
	and a
	jr z, .no_item_name
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld de, wStringBuffer1
	hlcoord 1, 6
	call PlaceString
	ret

.no_item_name
	hlcoord 1, 6
	ld de, .BlankItemName
	jp PlaceString

.BlankItemName:
	db "------@"

Debug_MaxMoney:
	ld hl, wMoney
	ld a, HIGH(MAX_MONEY >> 8)
	ld [hli], a
	ld a, LOW(MAX_MONEY >> 8)
	ld [hli], a
	ld a, LOW(MAX_MONEY)
	ld [hl], a
	ld hl, wCoins
	ld a, HIGH(MAX_COINS)
	ld [hli], a
	ld a, LOW(MAX_COINS)
	ld [hl], a
	ret

Debug_WarpAny:
	ld a, 1
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 1], a
	ldh [hDebugMenuDataBuffer + 2], a
	hlcoord 0, 0
	lb bc, 3, SCREEN_WIDTH - 2
	call Textbox
	call WaitBGMap2
	ld a, 2
	ldh [hDebugMenuCursorPos], a
	call .update_display
	ld a, 1
	ldh [hDebugMenuCursorPos], a
	call .update_display
	xor a
	ldh [hDebugMenuCursorPos], a
	call .update_display

.loop
	call JoyTextDelay
	ldh a, [hJoyDown]
	and $e
	ld b, a
	ldh a, [hJoyLast]
	or b
	bit A_BUTTON_F, a
	jr nz, .warp
	bit B_BUTTON_F, a
	ret nz
	bit D_DOWN_F, a
	jr nz, .down
	bit D_UP_F, a
	jr nz, .up
	ld b, 1
	bit START_F, a
	jr nz, .start
	bit SELECT_F, a
	jr z, .select
	ld b, 10
	jr .select
.start
	ld b, 100
.select
	bit D_LEFT_F, a
	jr nz, .left
	bit D_RIGHT_F, a
	jr nz, .right
	jr .loop

.up
	ldh a, [hDebugMenuCursorPos]
	and a
	jr nz, .do_up
	ld a, 3
.do_up
	dec a
	jr .curchange

.down
	ldh a, [hDebugMenuCursorPos]
	cp 2
	jr nz, .do_down
	ld a, -1
.do_down
	inc a
.curchange
	ldh [hDebugMenuCursorPos], a
	call .update_display
	jr .loop

.left
	call .getdat
.leftloop
	dec a
	dec b
	jr nz, .leftloop
	call .putdat
	call .update_display
	jr .loop

.right
	call .getdat
.rightloop
	inc a
	dec b
	jr nz, .rightloop
	call .putdat
	call .update_display
	jr .loop

.getdat
	ldh a, [hDebugMenuCursorPos]
	add LOW(hDebugMenuDataBuffer)
	ld c, a
	ldh a, [c]
	ret

.putdat
	ldh [c], a
	ret

.warp
	ld hl, hDebugMenuDataBuffer
	ld de, wNextWarp
	ld bc, 3
	call CopyBytes
	ld a, BANK(dig_incave.UsedDigOrEscapeRopeScript)
	ld hl, dig_incave.UsedDigOrEscapeRopeScript + 1
	call FarQueueScript
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	ret

.update_display
	ld a, " "
	hlcoord 1, 1
	ld [hl], a
	hlcoord 1, 2
	ld [hl], a
	hlcoord 1, 3
	ld [hl], a
	ldh a, [hDebugMenuCursorPos]
	and a
	ld c, a
	ld b, 0
	ld hl, hDebugMenuDataBuffer
	add hl, bc
	ld d, h
	ld e, l
	hlcoord 1, 1
	ld bc, SCREEN_WIDTH
	call AddNTimes
	ld a, "▶"
	ld [hli], a
	inc hl
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
	ret

Debug_PC:
	farcall PokemonCenterPC
	ret

Debug_FillBag:
	ld hl, wNumItems
	ld bc, wItemsEnd - wNumItems
	xor a
	call ByteFill

	ld a, -1
	ld hl, wItems
	ld [hl], a
	ld hl, wKeyItems
	ld [hl], a
	ld hl, wBalls
	ld [hl], a

	ld a, 1
.loop
	push af
	ld [wCurItem], a
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld a, [wStringBuffer1]
	cp "?"
	jr z, .next
	farcall CheckItemPocket
	ld a, [wItemAttributeParamBuffer]
	cp KEY_ITEM
	jr z, .give_key_item

	ld a, 99
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem

	call nc, .full_break

	jr .next

.give_key_item
	ld a, 1
	ld [wItemQuantityChangeBuffer], a
	ld hl, wNumItems
	call ReceiveItem

	call nc, .full_break

.next
	pop af
	inc a
	cp -1
	jr nz, .loop
	ret

.full_break
; set breakpoint to check if full
	ret

Debug_FillTMHM:
	ld e, NUM_TMS + NUM_HMS
	ld d, 0
.fill_loop
	push de
		call .give_tm
	pop de
	dec e
	jr z, .give_tm
	jr .fill_loop
.give_tm
	ld b, SET_FLAG
	ld hl, wTMsHMs
	jp FlagAction

Debug_PlayCry:
	ld de, MUSIC_NONE
	call PlayMusic
	xor a
	ld hl, hDebugMenuDataBuffer
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hDebugMenuCursorPos], a
	ld a, LOW(hDebugMenuDataBuffer)
	ld [hl], a
	hlcoord 0, 0
	lb bc, 7, SCREEN_WIDTH - 2
	call Textbox
	call WaitBGMap2
	call .update_numbers
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	cp B_BUTTON
	ret z
	cp D_LEFT
	jr z, .left
	cp D_RIGHT
	jr z, .right
	cp A_BUTTON
	jr z, .play
	cp D_UP
	jr z, .up
	cp D_DOWN
	jr z, .down
	jr .loop
	ret

.left
	ldh a, [hDebugMenuDataBuffer + 8]
	ld c, a
	ldh a, [c]
	ld h, a
	inc c
	ldh a, [c]
	ld l, a
	call .updateleft
	ld a, l
	ldh [c], a
	dec c
	ld a, h
	ldh [c], a
	call .update_numbers
	jr .loop

.right
	ldh a, [hDebugMenuDataBuffer + 8]
	ld c, a
	ldh a, [c]
	ld h, a
	inc c
	ldh a, [c]
	ld l, a
	call .updateright
	ld a, l
	ldh [c], a
	dec c
	ld a, h
	ldh [c], a
	call .update_numbers
	jr .loop

.up
	ldh a, [hDebugMenuDataBuffer + 8]
	cp LOW(hDebugMenuDataBuffer)
	jr z, .underflow
	dec a
	dec a
	jr .set_cursor
.underflow
	ld a, LOW(hDebugMenuDataBuffer + 6)
	jr .set_cursor

.down
	ldh a, [hDebugMenuDataBuffer + 8]
	cp LOW(hDebugMenuDataBuffer + 6)
	jr z, .overrflow
	inc a
	inc a
	jr .set_cursor
.overrflow
	ld a, LOW(hDebugMenuDataBuffer)

.set_cursor
	ldh [hDebugMenuDataBuffer + 8], a
	call .update_numbers
	jr .loop

.play
	ld a, [hJoyDown]
	and SELECT
	jr nz, .copyvanilla
	ld hl, hDebugMenuDataBuffer + 2
	ld d, [hl]
	inc hl
	ld e, [hl]
	inc hl
	ld a, [hli]
	ld [wCryPitch + 1], a
	ld a, [hli]
	ld [wCryPitch], a
	ld a, [hli]
	ld [wCryLength + 1], a
	ld a, [hl]
	ld [wCryLength], a
	farcall _PlayCry
	jp .loop

.copyvanilla
	ld hl, hDebugMenuDataBuffer
	ld d, [hl]
	inc hl
	ld e, [hl]
	dec de
	ld a, d
	and a
	ld hl, PokemonCries
	ld a, BANK(PokemonCries)
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld de, hDebugMenuDataBuffer + 2
	ld bc, 6
	call FarCopyBytes
	ld c, LOW(hDebugMenuDataBuffer + 2)
REPT 3
	ldh a, [c]
	inc c
	ld d, a
	ldh a, [c]
	ld e, a
	ld a, d
	ldh [c], a
	dec c
	ld a, e
	ldh [c], a
	inc c
	inc c
ENDR
	call .update_numbers
	jp .loop

.update_numbers
	hlcoord 8, 1
	ld bc, 11
	ld a, " "
	call ByteFill
	hlcoord 1, 1
	ld bc, SCREEN_WIDTH * 2
	ld [hl], a
	add hl, bc
	ld [hl], a
	add hl, bc
	ld [hl], a
	add hl, bc
	ld [hl], a
	ldh a, [hDebugMenuDataBuffer + 8]
	sub LOW(hDebugMenuDataBuffer)
	hlcoord 1, 1
	ld bc, SCREEN_WIDTH
	call AddNTimes
	ld a, "▶"
	ld [hl], a
	hlcoord 2, 3
	ld de, .basecry
	call PlaceString
	hlcoord 2, 5
	ld de, .pitch
	call PlaceString
	hlcoord 2, 7
	ld de, .length
	call PlaceString
	hlcoord 8, 3
	ld de, hDebugMenuDataBuffer + 2
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 8, 5
	ld de, hDebugMenuDataBuffer + 4
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 8, 7
	ld de, hDebugMenuDataBuffer + 6
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 15, 3
	ld de, hDebugMenuDataBuffer + 2
	ld b, 2
	call PrintHexNum
	hlcoord 15, 5
	ld de, hDebugMenuDataBuffer + 4
	ld b, 2
	call PrintHexNum
	hlcoord 15, 7
	ld de, hDebugMenuDataBuffer + 6
	ld b, 2
	call PrintHexNum
	hlcoord 2, 1
	ld de, hDebugMenuDataBuffer
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	ldh a, [hDebugMenuDataBuffer]
	cp HIGH(NUM_POKEMON)
	jr c, .show_name
	ldh a, [hDebugMenuDataBuffer + 1]
	cp LOW(NUM_POKEMON) + 1
	ret nc
.show_name
	ldh a, [hDebugMenuDataBuffer]
	ld h, a
	ldh a, [hDebugMenuDataBuffer + 1]
	ld l, a
	call GetPokemonIDFromIndex
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 8, 1
	call PlaceString
	ret

.basecry
	db "BASE@"
.pitch
	db "PITCH@"
.length
	db "LENGTH@"

.updateleft
	call .getupdateamt
.leftloop
	dec hl
	dec de
	ld a, d
	or e
	jr nz, .leftloop
	ret

.updateright
	call .getupdateamt
.rightloop
	inc hl
	dec de
	ld a, d
	or e
	jr nz, .rightloop
	ret

.getupdateamt
	ldh a, [hJoyDown]
	and START | SELECT
	and a
	jr z, .neither
	cp START
	jr z, .start
	cp SELECT
	jr z, .select
; both
	ld de, 1000
	ret
.select
	ld de, 10
	ret
.start
	ld de, 100
	ret
.neither
	ld de, 1
	ret

PrintHexNum:
	ld a, [de]
	inc de
	call .print_byte
	dec b
	jr nz, PrintHexNum
	ret

.print_byte
	push af
	swap a
	call .print_digit
	pop af
.print_digit
	and $f
	cp $a
	jr c, .ok
	add "A"
.ok
	add "0"
	ld [hli], a
	ret

Debug_Trainer:
	xor a
	ldh [hDebugMenuDataBuffer], a
	ldh [hDebugMenuDataBuffer + 1], a
	ldh [hDebugMenuCursorPos], a
	hlcoord 0, 0
	lb bc, 6, SCREEN_WIDTH - 2
	call Textbox
	call WaitBGMap2
	call .update_display
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	cp B_BUTTON
	jp z, .end
	cp D_LEFT
	jr z, .left
	cp D_RIGHT
	jr z, .right
	cp A_BUTTON
	jp z, .fight
	and D_UP | D_DOWN
	jr nz, .change
	jr .loop

.change
	ldh a, [hDebugMenuCursorPos]
	inc a
	and 1
	ldh [hDebugMenuCursorPos], a
	call .update_display
	jr .loop

.left
	call .get_value
.left_loop
	dec d
	dec a
	jr nz, .left_loop
	call .put_value
	ldh a, [hDebugMenuCursorPos]
	and a
	call z, .reset_trainer_num
	call .update_display
	jr .loop

.right
	call .get_value
.right_loop
	inc d
	dec a
	jr nz, .right_loop
	call .put_value
	ldh a, [hDebugMenuCursorPos]
	and a
	call z, .reset_trainer_num
	call .update_display
	jr .loop

.reset_trainer_num
	ld a, 1
	ldh [hDebugMenuDataBuffer + 1], a
	ret

.update_display
	hlcoord 1, 2
	ld a, " "
	ld [hl], a
	hlcoord 1, 5
	ld a, " "
	ld [hl], a
	ldh a, [hDebugMenuCursorPos]
	and a
	hlcoord 1, 2
	jr z, .got_cursor_pos
	hlcoord 1, 5
.got_cursor_pos
	ld a, "▶"
	ld [hl], a
	call .update_class
	hlcoord 3, 5
	ld a, " "
	ld bc, 15
	call ByteFill
	call .get_trainer_name
	jr c, .skip_trainer_name
	hlcoord 3, 5
	ld de, wStringBuffer1
	call PlaceString
.skip_trainer_name
	hlcoord 3, 6
	ld de, hDebugMenuDataBuffer + 1
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
	ret

.update_class
	hlcoord 3, 2
	ld a, " "
	ld bc, 15
	call ByteFill
	ld a, TRAINER_NAME
	ld [wNamedObjectTypeBuffer], a
	ldh a, [hDebugMenuDataBuffer]
	and a
	jr z, .skip_class_name
	cp NUM_TRAINER_CLASSES
	jr nc, .skip_class_name
	ld [wCurSpecies], a
	ld [wTrainerClass], a
	call GetName
	hlcoord 3, 2
	ld de, wStringBuffer1
	call PlaceString
.skip_class_name
	hlcoord 3, 3
	ld de, hDebugMenuDataBuffer
	lb bc, PRINTNUM_LEADINGZEROS | 1, 3
	call PrintNum
	ret

.fight
	ldh a, [hDebugMenuDataBuffer]
	and a
	jp z, .loop
	cp NUM_TRAINER_CLASSES
	jp nc, .loop
	ld [wOtherTrainerClass], a
	ldh a, [hDebugMenuDataBuffer + 1]
	and a
	jp z, .loop
	ld [wOtherTrainerID], a
	ld a, $1
	ld [wBattleScriptFlags], a
	ld hl, wWinTextPointer
	ld a, LOW(DefaultWinText)
	ld [hli], a
	ld a, HIGH(DefaultWinText)
	ld [hli], a
	ld a, LOW(DefaultLossText)
	ld [hli], a
	ld a, HIGH(DefaultLossText)
	ld [hl], a
	call BufferScreen
	predef StartBattle
	ld a, MAPSETUP_RELOADMAP
	ldh [hMapEntryMethod], a
	ld a, MAPSTATUS_ENTER
	call LoadMapStatus
	ld hl, wScriptFlags
	res SCRIPT_RUNNING, [hl]
	pop af
	ret

.end
	ret

.get_value
	ldh a, [hDebugMenuCursorPos]
	ld hl, hDebugMenuDataBuffer
	add l
	ld l, a
	ld d, [hl]
	ldh a, [hJoyDown]
	and SELECT
	ld a, 1
	ret z
	ld a, 10
	ret

.put_value
	ldh a, [hDebugMenuCursorPos]
	ld hl, hDebugMenuDataBuffer
	add l
	ld l, a
	ld [hl], d
	ret

.cancel_trainer_name
	scf
	ret

.get_trainer_name
	ldh a, [hDebugMenuDataBuffer]
	and a
	jr z, .cancel_trainer_name
	cp NUM_TRAINER_CLASSES
	jr nc, .cancel_trainer_name
	dec a
	ld c, a
	add a
	add c
	ld c, a
	ld b, 0
	ld hl, TrainerGroups
	ld a, BANK(TrainerGroups)
	add hl, bc
	call GetFarByte
	push af
	ld a, BANK(TrainerGroups)
	inc hl
	call GetFarHalfword
	pop af
	ld b, a
	ldh a, [hDebugMenuDataBuffer + 1]
	and a
	jr z, .cancel_trainer_name
	dec a
	and a
	jr z, .got_loc
	ld c, a
.trainer_name_loop
	ld a, b
	call GetFarByte
	push bc
	ld b, 0
	ld c, a
	add hl, bc
	pop bc
	dec c
	jr z, .got_loc
	jr .trainer_name_loop

.got_loc
	inc hl
	ld de, wStringBuffer1
	ld a, b
	ld bc, 18
	call FarCopyBytes
	ld a, "@"
	ld [wStringBuffer2 - 1], a
	ld hl, wStringBuffer1
	ld c, 18
	call Debug_SanitizeString
	and a
	ret

Debug_SanitizeString:
.loop
	ld a, [hli]
	cp "@"
	ret z
	cp $80
	jr nc, .loop
	dec hl
	ld a, "@"
	ld [hl], a
	ret
