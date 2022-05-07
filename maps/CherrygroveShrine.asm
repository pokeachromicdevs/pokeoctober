CherrygroveShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveShrine_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 21, 22, CHERRYGROVE_SHRINE_GATE, 3
	warp_event 21, 23, CHERRYGROVE_SHRINE_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
