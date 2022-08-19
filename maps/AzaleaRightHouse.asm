	object_const_def ; object_event constants

AzaleaRightHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzaleaRightHouseBookshelf:
	jumpstd picturebookshelf


AzaleaRightHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, AZALEA_TOWN, 7
	warp_event  3,  7, AZALEA_TOWN, 7

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AzaleaRightHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AzaleaRightHouseBookshelf

	db 0 ; object events
	;object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, 20, 6, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy_2, -1
