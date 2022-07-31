KurtsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
KurtScroll:
	opentext
	writetext .IntroText
	waitbutton
.Loop:
	writetext .PromptText
	loadmenu .MenuHeader
	callasm .ExecScrollMenu
	ifequal 0, .ends
	opentext
	ifequal  1, .Sandshrew
	ifequal  2, .Paras
	ifequal  3, .Slowpoke
	ifequal  4, .Geodude
	ifequal  5, .Grimer
	ifequal  6, .Exeggutor
	ifequal  7, .Lickitung
	ifequal  8, .Jynx
	ifequal  9, .Magikarp
	ifequal 10, .Porygon
	ifequal 11, .Elekid
	ifequal 12, .Granbull
	ifequal 13, .Unown
	ifequal 14, .Misdreavus
	ifequal 15, .Bellossom
	ifequal 16, .Mankey
.ends
	closetext
	end

.IntroText:
	text "KURT's FAVORITES"
	para "I made the LOVE"
	line "BALL to spread the"
	para "joy of my favo-"
	line "rites to all"
	cont "trainers!"
	done

.PromptText:
	text "Read which"
	line "section?"
	done

.ExecScrollMenu:
	call InitScrollingMenu
	call UpdateSprites
	call ApplyTilemap
	xor a
	ld [wMenuScrollPosition], a
	ld a, [wScriptBank]
	ld hl, ScrollingMenu
	rst FarCall
	ld a, [wMenuJoypad]
	cp 2
	jr z, .cancelled
	ld a, [wMenuSelection]
	ld [wScriptVar], a
	ret
.cancelled
	xor a
	ld [wScriptVar], a
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, 13, 10
	dw .MenuData
	db 1 ; default option

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS
	db 5, 0 ; row, cols
	db SCROLLINGMENU_ITEMS_NORMAL
	dba .Items
	dba .DrawItem
	dba NULL

.Items:
	db 16
x = 1
rept 16
	db x
x = x + 1
	endr
	db -1

.DrawItem:
	push de
	ld a, [wMenuSelection]
	dec a
	ld hl, .ChoiceSelectText
	ld bc, 13
	call AddNTimes
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	ret

.ChoiceSelectText:
	db "SANDSHREW@@@@"
	db "PARAS@@@@@@@@"
	db "SLOWPOKE@@@@@"
	db "GEODUDE@@@@@@"
	db "GRIMER@@@@@@@"
	db "EXEGGUTOR@@@@"
	db "LICKITUNG@@@@"
	db "JYNX@@@@@@@@@"
	db "MAGIKARP@@@@@"
	db "PORYGON@@@@@@"
	db "ELEKID@@@@@@@"
	db "GRANBULL@@@@@"
	db "UNOWN@@@@@@@@"
	db "MISDREAVUS@@@"
	db "BELLOSSOM@@@@"
	db "MANKEY@@@@@@@"

.Sandshrew:
	writetext .SandshrewText
	waitbutton
	sjump .Loop

.Paras:
	writetext .ParasText
	waitbutton
	sjump .Loop

.Slowpoke:
	writetext .SlowpokeText
	waitbutton
	sjump .Loop

.Geodude:
	writetext .GeodudeText
	waitbutton
	sjump .Loop

.Grimer:
	writetext .GrimerText
	waitbutton
	sjump .Loop

.Exeggutor:
	writetext .ExeggutorText
	waitbutton
	sjump .Loop

.Lickitung:
	writetext .LickitungText
	waitbutton
	sjump .Loop

.Jynx:
	writetext .JynxText
	waitbutton
	sjump .Loop

.Magikarp:
	writetext .MagikarpText
	waitbutton
	sjump .Loop

.Porygon:
	writetext .PorygonText
	waitbutton
	sjump .Loop

.Elekid:
	writetext .ElekidText
	waitbutton
	sjump .Loop

.Granbull:
	writetext .GranbullText
	waitbutton
	sjump .Loop

.Unown:
	writetext .UnownText
	waitbutton
	sjump .Loop

.Misdreavus:
	writetext .MisdreavusText
	waitbutton
	sjump .Loop

.Bellossom:
	writetext .BellossomText
	waitbutton
	sjump .Loop

.Mankey:
	writetext .MankeyText
	waitbutton
	sjump .Loop


.SandshrewText:
	text "SANDSHREW &"
	line "SANDSLASH"
	para "The way they curl"
	line "up to defend them-"
	para "selves is admir-"
	line "able."
	done

.ParasText:
	text "PARAS & PARASECT"
	para "The medicinal use"
	line "of the mushroom"
	para "makes this cute"
	line "species practical"
	cont "to keep."
	done

.SlowpokeText:
	text "SLOWPOKE & SLOWBRO"
	para "Friendly and an"
	line "omen of peace."
	para "Hardy yet relaxed."
	done

.GeodudeText:
	text "GEODUDE"
	para "Round and rugged."
	para "Someday I hope to"
	line "make a BALL in its"
	cont "likeness<...>"
	done

.GrimerText:
	text "GRIMER & MUK"
	para "Disgusting, yet"
	line "effective at con-"
	cont "suming pollution."
	para "A reminder that"
	line "nature will adapt"
	para "to whatever we"
	line "harm it with."
	done

.ExeggutorText:
	text "EXEGGUTOR"
	para "It reminds me a"
	line "bit of APRICORN"
	cont "trees."
	done

.LickitungText:
	text "LICKITUNG"
	para "I personally find"
	line "it rather cute,"
	para "and it is good at"
	line "reaching fruit"
	para "high up in bran-"
	line "ches with its"
	cont "tongue."
	done

.JynxText:
	text "JYNX"
	para "It reminds me of"
	line "my dear mother."
	done

.MagikarpText:
	text "MAGIKARP"
	para "Even the most un-"
	line "assuming have"
	para "something special"
	line "inside them."
	done

.PorygonText:
	text "PORYGON"
	para "A marvelous"
	line "innovation."
	para "What #MON might"
	line "we manufacture"
	cont "next?"
	done

.ElekidText:
	text "ELEKID"
	para "Small and spunky."
	line "It reminds me a"
	para "bit of my grand-"
	line "daughter,"
	cont "actually."
	done

.GranbullText:
	text "GRANBULL"
	para "A solid companion"
	line "and guard for the"
	cont "home."
	para "I recommed it for"
	line "families with"
	cont "older children."
	done

.UnownText:
	text "UNOWN"
	para "Mysterious. I don't"
	line "know what to make"
	cont "of it, really."
	done

.MisdreavusText:
	text "MISDREAVUS"
	para "A harmless prank-"
	line "ster. At my age,"
	para "though, one might"
	line "scare me to death!"
	done

.BellossomText:
	text "BELLOSSOM"
	para "Elegant and"
	line "fragrant. A very"
	cont "pleasant #MON."
	done

.MankeyText:
	text "MANKEY"
	para "I think this may"
	line "be the cutest"
	cont "#MON."
	para "Its little"
	line "tantrums are"
	cont "adorable!"
	done
KurtsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 0, 0, BGEVENT_READ, KurtScroll

	db 0 ; object events
