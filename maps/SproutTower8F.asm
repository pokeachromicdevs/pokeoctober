SproutTower8F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower8F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  3,  3, SPROUT_TOWER_7F, 5
	warp_event  7,  3, SPROUT_TOWER_7F, 6
	warp_event  7, 17, SPROUT_TOWER_7F, 7
	warp_event 13, 17, SPROUT_TOWER_7F, 8
	warp_event 19,  3, SPROUT_TOWER_7F, 9
	warp_event  5, 13, SPROUT_TOWER_9F, 1
	warp_event 15, 13, SPROUT_TOWER_9F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
