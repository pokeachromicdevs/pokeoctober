SproutTower6F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower6F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  7,  3, SPROUT_TOWER_5F, 8
	warp_event  5, 17, SPROUT_TOWER_5F, 9
	warp_event 19,  3, SPROUT_TOWER_5F, 10
	warp_event 19, 17, SPROUT_TOWER_5F, 11

	warp_event  1, 11, SPROUT_TOWER_7F, 1
	warp_event 13,  3, SPROUT_TOWER_7F, 2
	warp_event 19,  7, SPROUT_TOWER_7F, 3
	warp_event 19, 13, SPROUT_TOWER_7F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
