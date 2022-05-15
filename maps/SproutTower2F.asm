SproutTower2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  7,  3, SPROUT_TOWER_1F, 3
	warp_event 15, 15, SPROUT_TOWER_1F, 4
	warp_event  9, 17, SPROUT_TOWER_3F, 1
	warp_event 15,  7, SPROUT_TOWER_3F, 2
	warp_event 19, 17, SPROUT_TOWER_3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
