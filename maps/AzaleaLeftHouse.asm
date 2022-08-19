	object_const_def ; object_event constants

AzaleaLeftHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzaleaLeftHouseBookshelf:
	jumpstd picturebookshelf


AzaleaLeftHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, AZALEA_TOWN, 6
	warp_event  3,  7, AZALEA_TOWN, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, AzaleaLeftHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, AzaleaLeftHouseBookshelf

	db 0 ; object events
	;object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, 20, 6, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy_2, -1
