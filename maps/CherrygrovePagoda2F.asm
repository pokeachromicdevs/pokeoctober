CherrygrovePagoda2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

CherrygrovePagoda2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CHERRYGROVE_PAGODA_1F, 3
	warp_event  7,  7, CHERRYGROVE_PAGODA_3F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
