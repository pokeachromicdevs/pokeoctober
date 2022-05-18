SproutTower3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  9, 17, SPROUT_TOWER_2F, 3
	warp_event 15,  7, SPROUT_TOWER_2F, 4
	warp_event 19, 17, SPROUT_TOWER_2F, 5
	warp_event  5, 15, SPROUT_TOWER_4F, 1
	warp_event  7,  3, SPROUT_TOWER_4F, 2
	warp_event 13, 13, SPROUT_TOWER_4F, 3
	warp_event 13, 17, SPROUT_TOWER_4F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
