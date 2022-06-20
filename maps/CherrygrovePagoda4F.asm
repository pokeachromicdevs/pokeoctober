CherrygrovePagoda4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

CherrygrovePagoda4F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CHERRYGROVE_PAGODA_3F, 1
	warp_event  7,  7, CHERRYGROVE_PAGODA_5F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
