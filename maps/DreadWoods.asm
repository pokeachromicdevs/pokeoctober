DreadWoods_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

DreadWoods_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 29,  2, ROUTE_32, 1
	warp_event 29,  3, ROUTE_32, 2
	warp_event 29, 36, ROUTE_32, 3
	warp_event 29, 37, ROUTE_32, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
