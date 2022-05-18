SproutTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower4F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  5, 15, SPROUT_TOWER_3F, 4
	warp_event  7,  3, SPROUT_TOWER_3F, 5
	warp_event 13, 13, SPROUT_TOWER_3F, 6
	warp_event 13, 17, SPROUT_TOWER_3F, 7

	warp_event  1,  3, SPROUT_TOWER_5F, 1
	warp_event  1,  7, SPROUT_TOWER_5F, 2
	warp_event  1, 17, SPROUT_TOWER_5F, 3
	warp_event  5,  7, SPROUT_TOWER_5F, 4
	warp_event 15,  5, SPROUT_TOWER_5F, 5
	warp_event 19,  9, SPROUT_TOWER_5F, 6
	warp_event 19, 13, SPROUT_TOWER_5F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
