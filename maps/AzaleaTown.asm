AzaleaTown_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 21,  7, ROUTE_33_WEST_GATE, 3
	warp_event 11,  5, AZALEA_POKECENTER_1F, 1
	warp_event 15,  5, AZALEA_MART, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
