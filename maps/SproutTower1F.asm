SproutTower1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  9, 17, VIOLET_CITY, 5
	warp_event 10, 17, VIOLET_CITY, 5
	warp_event  7,  3, SPROUT_TOWER_2F, 1
	warp_event 15, 15, SPROUT_TOWER_2F, 2
	warp_event 19,  2, SPROUT_TOWER_2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
