SECTION "October Credits", ROMX

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
	ld [wCreditsUnusedCD21], a
	ld [wCreditsTimer], a

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
	call DelayFrame
	call OctoberCredits_ApplyScroll
	ld hl, hSCY
	inc [hl]
	call OctoberCredits_HandleAButton
	jr nz, .exit_credits
	call DelayFrame
	jr .execution_loop

.exit_credits
	farcall FadeInPalettes
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
	ldh a, [hJoypadDown]
	and START | A_BUTTON | B_BUTTON | SELECT
	ret

OctoberCredits_ScrollScreen:
	ld a, [wCreditsPos]
	cp -5
	jr z, .skip
	ld a, [wCreditsUnusedCD21]
	inc a
	ld [wCreditsUnusedCD21], a
	ld a, [wCreditsTimer]
	inc a
	cp 8
	jr z, .scrollCredits
	ld [wCreditsTimer], a
	call DelayFrame
.skip
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
	ld a, [wCreditsUnusedCD21]
	ld hl, wLYOverrides
	ld bc, 144
	call ByteFill
	ret


OctoberCredits_StringTable:
	dw .Blank
; credits begin here

	dw .Blank, .Blank

	dw .Directors, .Blank
		dw .Gabe, .Blank
			; manager
		dw .TMShadow, .Blank
			; literally everything
		dw .Quent, .Blank
			; real good help

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .Programmers, .Blank
		dw .Gabe, .Blank
		dw .Zumi, .Blank
		dw .Cybershell, .Blank
			; programming help
		dw .AtmaBuster, .Blank
			; programming help & map rips
			; crystalleaf follower mechanic

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .CryPorts, .Blank
		dw .AtmaBuster, .Blank
			; beta cry table
		dw .Gabe, .Blank
			; porting
		dw .Zumi, .Blank
			; porting

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .SpriteArtists, .Blank
		dw .Scarlax, .Blank
			; MVP
		dw .TastySnax, .Blank
			; sprite help
		dw .Bimble, .Blank
			; female trainer sprite
		dw .Pik, .Blank
			; sprite help
		dw .Bloodless, .Blank
			; sprite help
		dw .Kam, .Blank
			; sprite help
		dw .Poket, .Blank
			; sprite help

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .MapDesigners, .Blank
		dw .TMShadow, .Blank
			; a fuckton of maps
		dw .Traiyu, .Blank
			; pokecenter map
		dw .Zumi, .Blank
			; r29, r33+, citrine

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .Music, .Blank
		dw .Zumi, .Blank
			; hg/ss safari zone, cerulean city, fr/lg cinnabar island
			; hg/ss pokemart
			; prof. battle
			; g1 credits music
		dw .Celadonk, .Blank
			; foolsgold r47
		dw .Froggest, .Blank
			; a bunch of gen1 ports
		dw .M17, .Blank
			; cianwood city
		dw .CoralDev, .Blank
			; blue battle

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .AssetsFrom, .Blank
		dw .Chatty, .Blank
			; wind ride animation
		dw .Polished, .Blank
			; water sport, safari zone, tm/hm bitflags
		dw .Reforged, .Blank
			; move animations, sprites

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .BugTesters, .Blank
		dw .NieNie, .Blank

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .SpecialThanks, .Blank
		dw .Gelius, .Blank
			; cherrygrove woods
	;	dw .FourCh, .Blank
			; based leakers
		dw .Pret, .Blank
			; pokecrystal disassembly
		dw .TCRF, .Blank
			; the place where everything is compiled
		dw .AX6, .Blank
			; pokecrystal-16

; last screen
	dw .Blank, .Blank
	dw .Blank, .Blank
	dw .Blank, .Blank
	dw .ThanksFor1, .Blank
	dw .ThanksFor2, .Blank
	dw .ThanksFor3, .Blank
	dw .Blank, .Blank
	dw .PressStart, .Blank
	dw .Blank, .Blank
	dw .Blank, .Blank

.End:

.Blank:         db "                    ";;
.Directors:     db "      DIRECTORS     ";;
.Programmers:   db "     PROGRAMMERS    ";;
.Music:         db "    CUSTOM  MUSIC   ";;
.SpriteArtists: db "   SPRITE  ARTISTS  ";;
.MapDesigners:  db "    MAP DESIGNERS   ";;
.BugTesters:    db "     BUG TESTERS    ";;
.AssetsFrom:    db "     ASSETS FROM    ";;
.CryPorts:      db "      CRY PORTS     ";;
.SpecialThanks: db "   SPECIAL THANKS   ";;
.Gabe:          db "     GABE STANEK    ";;
.TMShadow:      db "  TM 30 SHADOW BALL ";;
.Zumi:          db "        ZUMI        ";;
.Cybershell:    db "    CYBERSHELL12    ";;
.Quent:         db "        QUENT       ";;
.Celadonk:      db "      CELADONK      ";;
.AtmaBuster:    db "     ATMABUSTER     ";;
.TastySnax:     db "     TASTYSNAX12    ";;
.Bimble:        db "    BIMBELYGIMBLY   ";;
.Scarlax:       db "       SCARLAX      ";;
.Pik:           db "         PIK        ";;
.Bloodless:     db "     BLOODLESSNX    ";;
.Polished:      db "   POLISHED CRYSTAL ";;
.Chatty:        db "    CHATTY CRYSTAL  ";;
.Soup:          db "      SOUPPOTATO    ";;
.Froggest:      db "    FROGGESTSPIRIT  ";;
.M17:           db "  MMMMMMMMMMMMMMMMM ";;
.Gelius:        db "       GELIUS       ";;
.NieNie:        db "       NIE NIE      ";;
.Traiyu:        db "       TRAIYU       ";;
.Kam:           db "         KAM        ";;
.Poket:         db "        POKET       ";;
.CoralDev:      db "       CORALDEV     ";;
.Reforged:      db "   G/S '97 REFORGED ";;
.TCRF:          db "        TCRF        ";; no beytah, bad daytah
;.FourCh:        db "     4CHAN /VP/     ";;
.Pret:          db "        PRET        ";;
.AX6:           db "        AX6         ";;
.ThanksFor1:    db " THANKS FOR PLAYING!";;
.ThanksFor2:    db "   STAY TUNED FOR   ";;
.ThanksFor3:    db "       DEMO 2!      ";;
.PressStart:    db "    -PRESS START-   ";;

MAX_OCTOBER_CREDITS equ (OctoberCredits_StringTable.End - OctoberCredits_StringTable)/2

OctoberCredits_LoadNextString:
	ld a, [wCreditsPos]
	cp MAX_OCTOBER_CREDITS
	jr c, .load
	ld a, -5
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
