	object_const_def ; object_event constants

AzaleaLeftHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzaleaLeftHouseBookshelf:
	jumpstd picturebookshelf

AzaleaLeftHouse_CoolF:
	jumptextfaceplayer .Text
.Text:
	text "My daughter really"
	line "looks after her"
	cont "grandma."
	para "She specializes in"
	line "ghost-type #MON"
	para "and is a very res-"
	line "pected trainer."
	done

AzaleaLeftHouse_CoolM:
	faceplayer
	opentext
	writetext .Text1
	yesorno
	iftrue .yes
	writetext .Text2
	waitbutton
	closetext
	end
.yes
	writetext .Text3
	waitbutton
	closetext
	end
.Text1:
	text "Mother was always"
	line "energetic, and she"
	para "wanted to fight"
	line "with #MON every"
	cont "day."
	para "Would you like to"
	line "know how she met"
	cont "PROF. OAK?"
	done
.Text2:
	text "That's quite"
	line "alright! I'll tell"
	para "you some other"
	line "time!"
	para "Don't worry. I'll"
	line "always be here."
	done
.Text3:
	text "When mother was"
	line "just a young girl,"
	para "she loved to play"
	line "and romp around."
	para "She would chall-"
	line "enge anyone with"
	para "her most trusted"
	line "#MON, a GASTLY"
	para "that she found"
	line "while visiting the"
	para "#MON TOWER in"
	line "KANTO."
	para "That was when she"
	line "noticed OAK, who"
	para "always had him in"
	line "a good book."
	para "Despite this, she'd"
	line "challenge him, and"
	cont "always lose."
	para "Wondering why, she"
	line "dedicated her life"
	cont "to battling."
	para "This is why she"
	line "got so angry when"
	para "OAK announced"
	line "that he was"
	para "developing the"
	line "#DEX, because"
	para "she thought he was"
	line "wasting his"
	cont "potential."
	done

AzaleaLeftHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, AZALEA_TOWN, 6
	warp_event  3,  7, AZALEA_TOWN, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AzaleaLeftHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AzaleaLeftHouseBookshelf

	db 2 ; object events
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaLeftHouse_CoolM, -1
	object_event  5,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaLeftHouse_CoolF, -1
