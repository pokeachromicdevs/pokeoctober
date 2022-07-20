SakuraShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SakuraShrine_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, ZEN_GARDEN, 3
	warp_event  4,  7, ZEN_GARDEN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
