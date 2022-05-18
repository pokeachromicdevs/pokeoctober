	object_const_def ; object_event constants

CherrygroveFisherHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveFisherHouseBookshelf:
	jumpstd picturebookshelf

CherrygroveFisherHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 9
	warp_event  3,  7, CHERRYGROVE_CITY, 9

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveFisherHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveFisherHouseBookshelf

	db 0 ; object events
