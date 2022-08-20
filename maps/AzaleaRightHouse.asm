	object_const_def ; object_event constants

AzaleaRightHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzaleaRightHouseBookshelf:
	jumpstd picturebookshelf

AzaleaRightHouse_Sage:
	jumptextfaceplayer .Text
.Text:
	text "My FENNECURSE"
	line "keeps guard while"
	para "I'm sleeping or out"
	line "in the ZEN GARDEN."
	para "It's been my part-"
	line "ner for years now."
	done

AzaleaRightHouse_Foxxo:
	opentext
	writetext .Text
	cry FENNECURSE
	waitsfx
	waitbutton
	closetext
	end
.Text:
	text "FENNECURSE: Skree!"
	done

AzaleaRightHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, AZALEA_TOWN, 7
	warp_event  3,  7, AZALEA_TOWN, 7

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AzaleaRightHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AzaleaRightHouseBookshelf

	db 2 ; object events
	object_event  2,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AzaleaRightHouse_Sage, -1
	object_event  6,  3, SPRITE_GROWLITHE, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaRightHouse_Foxxo, -1
