ZenGarden_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ZenGarden_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 33, ZEN_GARDEN_GATE, 1
	warp_event 10, 33, ZEN_GARDEN_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
