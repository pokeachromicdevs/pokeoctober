	object_const_def ; object_event constants

CitrineInn1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CitrineInn1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CITRINE_ISLAND, 1
	warp_event  4,  7, CITRINE_ISLAND, 1
	warp_event  0,  0, CITRINE_INN_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
