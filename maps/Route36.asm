Route36_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

Route36_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 59,  8, ROUTE_36_GATE, 3
	warp_event 59,  9, ROUTE_36_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event 56,  8, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
