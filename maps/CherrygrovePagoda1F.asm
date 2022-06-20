CherrygrovePagoda1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

CherrygrovePagoda1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CHERRYGROVE_CITY, 11
	warp_event  4,  7, CHERRYGROVE_CITY, 11
	warp_event  0,  1, CHERRYGROVE_PAGODA_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
