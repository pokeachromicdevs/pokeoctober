VioletHerbShop_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

VioletHerbShop_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9,  9, VIOLET_CITY, 8
	warp_event 10,  9, VIOLET_CITY, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
