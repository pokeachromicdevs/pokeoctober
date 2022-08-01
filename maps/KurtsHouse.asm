	object_const_def
	const KURTSHOUSE_KURT1
	const KURTSHOUSE_KURT2
	const KURTSHOUSE_TWIN1
	const KURTSHOUSE_TWIN2

KurtsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
KurtScroll:
	opentext
	writetext .IntroText
	buttonsound
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
	buttonsound
	sjump .Loop

.Paras:
	writetext .ParasText
	buttonsound
	sjump .Loop

.Slowpoke:
	writetext .SlowpokeText
	buttonsound
	sjump .Loop

.Geodude:
	writetext .GeodudeText
	buttonsound
	sjump .Loop

.Grimer:
	writetext .GrimerText
	buttonsound
	sjump .Loop

.Exeggutor:
	writetext .ExeggutorText
	buttonsound
	sjump .Loop

.Lickitung:
	writetext .LickitungText
	buttonsound
	sjump .Loop

.Jynx:
	writetext .JynxText
	buttonsound
	sjump .Loop

.Magikarp:
	writetext .MagikarpText
	buttonsound
	sjump .Loop

.Porygon:
	writetext .PorygonText
	buttonsound
	sjump .Loop

.Elekid:
	writetext .ElekidText
	buttonsound
	sjump .Loop

.Granbull:
	writetext .GranbullText
	buttonsound
	sjump .Loop

.Unown:
	writetext .UnownText
	buttonsound
	sjump .Loop

.Misdreavus:
	writetext .MisdreavusText
	buttonsound
	sjump .Loop

.Bellossom:
	writetext .BellossomText
	buttonsound
	sjump .Loop

.Mankey:
	writetext .MankeyText
	buttonsound
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

KurtHouseScript:
	checkevent EVENT_KURTS_HOUSE_RECEIVED_EGG
	iftrue .ask_for_apricorns
	faceplayer
	opentext
	writetext .KurtIntro
	waitbutton
	closetext
	checkfollower
	iftrue .maizie_with_follower
	readvar VAR_FACING
	ifequal LEFT, .maizie_to_right_of_player
	ifequal RIGHT, .maizie_to_bottom_of_player
; south (face up)
	applymovement KURTSHOUSE_TWIN1, .MaizieToPlayerSouth
	scall .maizie_talk
	applymovement KURTSHOUSE_TWIN1, .MaizieToChairSouth
	sjump .after_maizie_move
; east (face left)
.maizie_to_right_of_player
	applymovement KURTSHOUSE_TWIN1, .MaizieToPlayerEast
	scall .maizie_talk
	applymovement KURTSHOUSE_TWIN1, .MaizieToChairEast
	sjump .after_maizie_move
; west (face right)
.maizie_to_bottom_of_player
	applymovement KURTSHOUSE_TWIN1, .MaizieToPlayerWest
	scall .maizie_talk
	applymovement KURTSHOUSE_TWIN1, .MaizieToChairWest
	;sjump .after_maizie_move
.after_maizie_move
	faceobject PLAYER, KURTSHOUSE_KURT1
	opentext
	writetext .KurtGivesEggTxt1
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg TOGEPI, 5 ; ORIJOEY
	getstring STRING_BUFFER_4, .eggname
	scall .giveegg
	setevent EVENT_KURTS_HOUSE_RECEIVED_EGG
	writetext .KurtGivesEggTxt2
	closetext
.ask_for_apricorns
	opentext
	writetext .KurtPromptsApricorn
	waitbutton
.PartyFull ; XXX deal with this later
	closetext
	end
.giveegg
	jumpstd receivetogepiegg
	end
.maizie_with_follower:
	turnobject KURTSHOUSE_TWIN1, LEFT
	sjump .after_maizie_move
.maizie_talk:
	faceobject PLAYER, KURTSHOUSE_TWIN1
	opentext
	writetext .MaizieThank
	waitbutton
	closetext
	end
.eggname:
	db "EGG@"

.MaizieToPlayerSouth:
	step LEFT
	step_end
.MaizieToChairSouth:
	step RIGHT
	turn_head LEFT
	step_end

.MaizieToPlayerEast:
	step UP
	turn_head LEFT
	step_end
.MaizieToChairEast:
	step DOWN
	turn_head LEFT
	step_end

.MaizieToPlayerWest:
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end
.MaizieToChairWest:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

.KurtIntro:
	text "KURT: Ah, hello"
	line "<PLAYER>!"
	para "Welcome to my"
	line "home. This is my"
	para "beloved grandchild"
	line "and assistant,"
	cont "MAIZIE."
	done

.MaizieThank:
	text "MAIZIE: Hi!"
	line "Grandpa told me"
	para "how you helped him"
	line "and even beat him"
	para "in a #MON"
	line "battle<...>"
	para "Thank you so much"
	line "for saving him!"
	para "Bring us lots of"
	line "APRICORNS and we"
	para "can make you"
	line "special BALLS!"
	done

.KurtGivesEggTxt1:
	text "KURT: I also have"
	line "a gift for you, as"
	cont "promised."
	done

.KurtGivesEggTxt2:
	text "I found this egg"
	line "on one of my"
	cont "walks."
	para "The nest seemed"
	line "abandoned, so I"
	para "figured I'd find a"
	line "home for it."
	para "I worry about what"
	line "those ROCKETS are"
	para "doing to our inno-"
	line "cent wild #MON<...>"
	para "But I'd rather look"
	line "toward the future"
	para "of this little"
	line "one."
	done

.KurtPromptsApricorn:
	text "Now, do you have"
	line "APRICORNS for me?"
	done

MaizieHouseScript:
	jumptextfaceplayer .Txt
.Txt:
	text "MAIZIE: Thanks for"
	line "saving my grandpa!"
	para "Come over and he'll"
	line "make BALLS for"
	cont "you!"
	done
	text "MAIZIE: Hey!"
	para "Grandpa is working"
	line "now, you can't"
	cont "bother him!"
	done

	text "KURT: MAIZIE,"
	line "could I borrow"
	cont "your eyes?"
	done

	text "MAIZIE: Be right"
	line "there, grandpa!"
	para "<...>Your ball will be"
	line "ready tomorrow!"
	done

	text "KURT: Oh, that's"
	line "a letdown."
	done

	text "KURT: It'll take"
	line "you a day, come"
	para "back for your BALL"
	line "tomorrow."
	done

	text "KURT: MAIZIE, come"
	line "help your grandpa"
	cont "here!"
	done

	text "MAIZIE: Okay"
	line "grandpa!"
	done

KurtsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 0, 0, BGEVENT_READ, KurtScroll

	db 4 ; object events
	object_event  4,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtHouseScript, EVENT_KURTS_HOUSE_KURT_1
	object_event 14,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_KURTS_HOUSE_KURT_2
	object_event  6,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MaizieHouseScript, EVENT_KURTS_HOUSE_TWIN_1
	object_event 13,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_KURTS_HOUSE_TWIN_2
