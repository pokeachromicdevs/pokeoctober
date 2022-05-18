SproutTower5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower5F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  1,  3, SPROUT_TOWER_4F, 5
	warp_event  1,  7, SPROUT_TOWER_4F, 6
	warp_event  1, 17, SPROUT_TOWER_4F, 7
	warp_event  5,  7, SPROUT_TOWER_4F, 8
	warp_event 15,  5, SPROUT_TOWER_4F, 9
	warp_event 19,  9, SPROUT_TOWER_4F, 10
	warp_event 19, 13, SPROUT_TOWER_4F, 11

	warp_event  7,  3, SPROUT_TOWER_6F, 1
	warp_event  5, 17, SPROUT_TOWER_6F, 2
	warp_event 19,  3, SPROUT_TOWER_6F, 3
	warp_event 19, 17, SPROUT_TOWER_6F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
