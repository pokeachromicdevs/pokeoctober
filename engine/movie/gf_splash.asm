Copyright_GFPresents:
	ld de, MUSIC_NONE
	call PlayMusic

	call ClearBGPalettes
	call ClearTileMap
	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a
	xor a ; LOW(vBGMap0)
	ldh [hBGMapAddress], a
	ldh [hJoyDown], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $90
	ldh [hWY], a
	call WaitBGMap

	ld b, SCGB_GAMEFREAK_LOGO
	call GetSGBLayout
	call SetPalettes
	ld c, 10
	call DelayFrames

	callfar Copyright
	call WaitBGMap
	ld c, 100
	call DelayFrames
	call ClearTileMap

	farcall GBCOnlyScreen
	
	ld a, [wAPScreenTriggered]
	and a
	jr nz, .gamefreak
	
	call ClearTileMap
	call LoadStandardFont
	call ClearSprites

	call DoesEmulatorSupportMBC30
	jr z, .skipmbcwarn
	call CantDetectMBC30Screen

.skipmbcwarn
	call WarningScreen

.gamefreak
; Play GameFreak logo animation
	call GameFreakPresentsInit
.loop
	call GameFreakPresentsFrame
	jr nc, .loop

; high bits of wJumptableIndex are recycled for some flags
; this was set if user canceled by pressing a button
	ld a, [wJumptableIndex]
	bit 6, a
	jr nz, .canceled

; clear carry flag from GameFreakPresents_PlayFrame
	and a
	ret

.canceled
	scf
	ret

WarningScreen_WaitButton:
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	and START | A_BUTTON | B_BUTTON | SELECT
	ret nz
	jr .loop

CantDetectMBC30Screen:
	hlcoord 1, 3
	ld de, .Tx1
	call PlaceString
	hlcoord 1, 10
	ld de, .Tx2
	call PlaceString
	call WarningScreen_PrintPressStart
	call WarningScreen_WaitButton
	jp ClearTileMap

.Tx1:
	db   "This system doesn't"
	next "support the MBC30"
	next "mapper.@"

.Tx2:
	db   "Some features will"
	next "be unavailable.@"

WarningScreen:
	hlcoord 3, 1
	ld de, .Header
	call PlaceString
	hlcoord 2, 6
	ld de, .Body
	call PlaceString
IF DEF(DISPLAY_DISCORD_LINK)
	hlcoord 0, 13
	ld de, .URL
	call PlaceString
ENDC
	call WarningScreen_PrintPressStart
	call WarningScreen_WaitButton
	call ClearTileMap

	ld a, 1
	ld [wAPScreenTriggered], a
	ret
	
.Header:
	db   " This game is"
	next "NOT FOR PROFIT!"
	db   "@"

.Body:
	db   "If you have paid"
	next "for this, demand"
	next "your money back."
	db "@"

.URL:
	db " discord.gg/        "
	db "         Fc4M7cJMjC "
	db "@"

WarningScreen_PrintPressStart:
	hlcoord 4, 16
	ld de, .PressStart
	jp PlaceString

.PressStart:
	db "-PRESS START-"
	db "@"

GameFreakPresentsInit:
	ld de, GameFreakLogoGFX
	ld hl, vTiles1
	lb bc, BANK(GameFreakLogoGFX), 28
	call Get1bpp

	ld de, GameFreakLogoStarsGFX
	ld hl, vTiles1 tile 28
	lb bc, BANK(GameFreakLogoStarsGFX), 5
	call Request2bpp

	farcall ClearSpriteAnims

	ld hl, wSpriteAnimDict
	ld a, SPRITE_ANIM_DICT_GS_SPLASH
	ld [hli], a
	ld a, $8d
	ld [hl], a
	xor a
	ld [wJumptableIndex], a
	ld [wIntroSceneFrameCounter], a
	ld [wIntroSceneTimer], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, 1
	ldh [hBGMapMode], a
	ld a, SCREEN_HEIGHT_PX
	ldh [hWY], a
	lb de, %00100100, %11111000
	call DmgToCgbObjPals
	ret

GameFreakPresentsFrame:
; Play one frame of GameFreakPresents sequence.
; Return carry when the sequence completes or is canceled.

	call JoyTextDelay
	ldh a, [hJoyLast]
	and BUTTONS
	jr nz, .pressed_button

; high bits of wJumptableIndex are recycled for some flags
; this is set when the sequence finished
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .finish

	farcall PlaySpriteAnimations

	call GameFreakPresentsScene
	call DelayFrame

; ensure carry is cleared
	and a
	ret

.pressed_button
; high bits of wJumptableIndex are recycled for some flags
	ld hl, wJumptableIndex
	set 6, [hl]

.finish
	callfar ClearSpriteAnims
	call ClearTileMap
	call ClearSprites

	ld c, 16
	call DelayFrames

	scf
	ret

GameFreakPresentsScene:
	jumptable .scenes, wJumptableIndex

.scenes
	dw GameFreakPresents_Star
	dw GameFreakPresents_PlaceLogo
	dw GameFreakPresents_LogoSparkles
	dw GameFreakPresents_PlacePresents
	dw GameFreakPresents_WaitForTimer
	dw GameFreakPresents_SetDoneFlag

GameFreakPresents_NextScene:
	ld hl, wJumptableIndex
	inc [hl]
	ret

GameFreakPresents_Wait64Frames: ; unreferenced
	ld c, 64
	call DelayFrames
	call GameFreakPresents_NextScene
	ret

GameFreakPresents_Star:
; tell GameFreakPresents_PlaceLogo we haven't finished yet
	xor a
	ld [wIntroSceneFrameCounter], a

	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_GS_INTRO_STAR
	call _InitSpriteAnimStruct

	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], $80

	ld de, SFX_GAME_FREAK_LOGO_GS
	call PlaySFX

	call GameFreakPresents_NextScene
	ret

GameFreakPresents_PlaceLogo:
; Draw the Game Freak logo (may be initially invisible due to palette)

; wait until the star animation completed
; this counter is set in DoAnimFrame.GSIntroStar in engine/gfx/sprite_anims.asm
	ld a, [wIntroSceneFrameCounter]
	and a
	ret z

	depixel 10, 11, 4, 0
	ld a, SPRITE_ANIM_INDEX_GAMEFREAK_LOGO
	call _InitSpriteAnimStruct

	call GameFreakPresents_NextScene

; set timer for GameFreakPresents_LogoSparkles
	ld a, 128
	ld [wIntroSceneTimer], a
	ret

GameFreakPresents_LogoSparkles:
	ld hl, wIntroSceneTimer
	ld a, [hl]
	and a
	jr z, .done
	dec [hl]

; add first text when timer passes half
	cp 63
	call z, GameFreakPresents_PlaceGameFreak

; add sparkles continuously
	call GameFreakPresents_Sparkle
	ret

.done
; go to the next scene
	ld [hl], 128
	call GameFreakPresents_NextScene
	ret

GameFreakPresents_PlaceGameFreak:
	hlcoord 5, 12
	ld de, .game_freak
	call PlaceString
	ret

.game_freak
	db $80, $81, $82, $83, $8d, $84, $85, $83, $81, $86
	db "@"

GameFreakPresents_PlacePresents:
	hlcoord 7, 13
	ld de, .presents
	call PlaceString

	call GameFreakPresents_NextScene

; set timer for GameFreakPresents_WaitForTimer
	ld a, 128
	ld [wIntroSceneTimer], a
	ret

.presents
	db $87, $88, $89, $8a, $8b, $8c
	db "@"

GameFreakPresents_SetDoneFlag:
; Tell GameFreakPresents_PlayFrame and TitleScreenFrame that we're finished.

	ld hl, wJumptableIndex
	set 7, [hl]
	ret

GameFreakPresents_WaitForTimer:
	ld hl, wIntroSceneTimer
	ld a, [hl]
	and a
	jr z, .done
	dec [hl]
	ret
.done
	call GameFreakPresents_NextScene
	ret

GameFreakPresents_UpdateLogoPal:
; called from DoAnimFrame.GameFreakLogo
; OBP1 was initialized at end of GameFreakPresents_Init

; once we reached the final state, leave it alone
	ldh a, [rOBP1]
	cp %10010000
	ret z

; wait 16 frames before next change
	ld a, [wIntroSceneTimer]
	and $f
	ret nz

; rotate OBP1 by one color slot (2 bits)
; DMG: logo is white, then light gray, then dark gray
; CGB: logo is white, then yellow
	ldh a, [rOBP1]
	rrca
	rrca
	call DmgToCgbObjPal1
	ret

GameFreakPresents_Sparkle:
; Initialize and configure a sparkle sprite.

; run only every second frame
	ld d, a
	and 1
	ret nz

; shift over so our index is still changing by 1 each time
	ld a, d
	srl a

; set up a new sparkle sprite
	push af
	depixel 11, 11
	ld a, SPRITE_ANIM_INDEX_GS_INTRO_SPARKLE
	call _InitSpriteAnimStruct
	pop af

; take the bottom 4 bits of a as an index into
; sparkle_vectors (16 entries)
	and %00001111
	ld e, a
	ld d, 0
	ld hl, .sparkle_vectors
	add hl, de
	add hl, de

; set the angle and distance for this sprite
	ld e, l
	ld d, h
	ld hl, SPRITEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	ld a, [de]
	ld [hl], a ; angle
	inc de
	ld hl, SPRITEANIMSTRUCT_0C
	add hl, bc
	ld [hl], 0
	inc hl ; SPRITEANIMSTRUCT_0D
	ld a, [de]
	ld [hl], a ; distance
	ret

.sparkle_vectors
; values control final position of each sparkle
; position is automatically animated along the vector
; each entry emits two sparkles in opposite directions
; angle (6 bits) and distance (tiles?)
	db $00, $03
	db $08, $04
	db $04, $03
	db $0c, $02
	db $10, $02
	db $18, $03
	db $14, $04
	db $1c, $03
	db $20, $02
	db $28, $02
	db $24, $03
	db $2c, $04
	db $30, $04
	db $38, $03
	db $34, $02
	db $3c, $04

GameFreakLogoGFX:
INCBIN "gfx/splash/logo1.1bpp"
INCBIN "gfx/splash/logo2.1bpp"

GameFreakLogoStarsGFX:
INCBIN "gfx/splash/logo_star.2bpp"
INCBIN "gfx/splash/logo_sparkle.2bpp"
