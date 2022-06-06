	object_const_def ; object_event constants

CitrineDevHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CitrineDevHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  7, CITRINE_ISLAND, 3
	warp_event  3,  7, CITRINE_ISLAND, 3
	warp_event  7,  1, CITRINE_DEV_HOUSE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
