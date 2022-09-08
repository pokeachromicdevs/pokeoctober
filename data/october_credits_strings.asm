OctoberCredits_StringTable:
	dw .Blank
; credits begin here

	dw .Blank, .Blank

	dw .Producers, .Blank
		dw .Gabe, .Blank
			; manager

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .Directors, .Blank
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
		dw .Pokebrass, .Blank
		    ; follower OWs
		dw .CrystalLeaf, .Blank
			; follower mechanic
		dw .PokeOrange, .Blank
			; gym leader music

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .BugTesters, .Blank
		dw .NieNie, .Blank
		dw .Soul, .Blank

	dw .Blank, .Blank
	dw .Blank, .Blank

	dw .SpecialThanks, .Blank
		dw .Gelius, .Blank
			; cherrygrove woods
		dw .AX6, .Blank
			; pokecrystal-16
		dw .FourCh, .Blank
			; based leakers
		dw .Pret, .Blank
			; pokecrystal disassembly
		dw .TCRF, .Blank
			; the place where everything is compiled

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
.Producers:     db "      PRODUCERS     ";;
.Programmers:   db "     PROGRAMMERS    ";;
.Music:         db "    CUSTOM  MUSIC   ";;
.SpriteArtists: db "   SPRITE  ARTISTS  ";;
.MapDesigners:  db "    MAP DESIGNERS   ";;
.BugTesters:    db "     PLAY TESTERS   ";;
.AssetsFrom:    db "     ASSETS FROM    ";;
.CryPorts:      db "      CRY PORTS     ";;
.SpecialThanks: db "   SPECIAL THANKS   ";;
.Gabe:          db "       GS33022      ";;
.TMShadow:      db "  TM 30 SHADOW BALL ";;
.Zumi:          db "        ZUMI        ";;
.Cybershell:    db "     CYBERSHELL12   ";;
.Quent:         db "        QUENT       ";;
.Celadonk:      db "      CELADONK      ";;
.AtmaBuster:    db "      ATMABUSTER    ";;
.TastySnax:     db "     TASTYSNAX12    ";;
.Bimble:        db "       BIMBLE       ";;
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
.Pokebrass:     db "    POKéMON BRASS   ";;
.TCRF:          db "        TCRF        ";; no beytah, bad daytah
.FourCh:        db "        /VP/        ";;
.Pret:          db "        PRET        ";;
.AX6:           db "        AX6         ";;
.PokeOrange:    db "   POKéMON ORANGE   ";;
.CrystalLeaf:   db " POKéMON CRYSTALLEAF";;
.ThanksFor1:    db " THANKS FOR PLAYING!";;
.ThanksFor2:    db "   STAY TUNED FOR   ";;
.ThanksFor3:    db "       DEMO 2!      ";;
.PressStart:    db "    -PRESS START-   ";;
.Soul:          db "     SOULCATCHER    ";;
