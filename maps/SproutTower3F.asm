SproutTower3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9, 17, SPROUT_TOWER_2F, 3
	warp_event 15,  7, SPROUT_TOWER_2F, 4
	warp_event 19, 17, SPROUT_TOWER_2F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
