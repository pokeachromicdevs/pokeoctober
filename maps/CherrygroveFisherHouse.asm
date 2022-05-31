	object_const_def ; object_event constants

CherrygroveFisherHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveFisherHouseBookshelf:
	jumpstd picturebookshelf

MysticWaterGuy_2:
	farsjump MysticWaterGuy

CherrygroveFisherHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 9
	warp_event  3,  7, CHERRYGROVE_CITY, 9

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveFisherHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveFisherHouseBookshelf

	db 1 ; object events
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, 20, 6, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy_2, -1
