SproutTower9F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

SproutTower9F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  9, SPROUT_TOWER_8F, 6
	warp_event 11,  9, SPROUT_TOWER_8F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
