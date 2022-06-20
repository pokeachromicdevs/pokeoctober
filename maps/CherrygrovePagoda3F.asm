CherrygrovePagoda3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

CherrygrovePagoda3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CHERRYGROVE_PAGODA_4F, 1
	warp_event  7,  7, CHERRYGROVE_PAGODA_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
