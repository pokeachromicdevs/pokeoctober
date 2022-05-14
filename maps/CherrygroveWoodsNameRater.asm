	object_const_def ; object_event constants
	const CGWOODSNAMERATER_NAME_RATER

CherrygroveWoodsNameRater_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveWoodsNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

CherrygroveWoodsNameRaterBookshelf:
	jumpstd difficultbookshelf

CherrygroveWoodsNameRaterRadio:
	jumpstd radio2

CherrygroveWoodsNameRater_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_WOODS, 4
	warp_event  3,  7, CHERRYGROVE_WOODS, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveWoodsNameRaterBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveWoodsNameRaterBookshelf
	bg_event  7,  1, BGEVENT_READ, CherrygroveWoodsNameRaterRadio

	db 1 ; object events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveWoodsNameRater, -1
