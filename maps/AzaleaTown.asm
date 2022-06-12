AzaleaTown_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 21,  7, ROUTE_33_WEST_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
