	object_const_def ; object_event constants
	const CGWOODSNAMERATER_NAME_RATER

SilentHillsNameRater_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilentHillsNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

SilentHillsNameRaterBookshelf:
	jumpstd difficultbookshelf

SilentHillsNameRaterRadio:
	jumpstd radio2

SilentHillsNameRater_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SILENT_HILLS, 4
	warp_event  3,  7, SILENT_HILLS, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, SilentHillsNameRaterBookshelf
	bg_event  1,  1, BGEVENT_READ, SilentHillsNameRaterBookshelf
	bg_event  7,  1, BGEVENT_READ, SilentHillsNameRaterRadio

	db 1 ; object events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentHillsNameRater, -1
