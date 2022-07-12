AzaleaGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	db 20 ; warp events
; entry
	warp_event  4, 25, AZALEA_TOWN, 4
	warp_event  5, 25, AZALEA_TOWN, 4
; pit 1
	warp_event  8, 18, AZALEA_GYM, 19
	warp_event  8, 19, AZALEA_GYM, 19
; pit 2
	warp_event  8, 14, AZALEA_GYM, 20
	warp_event  8, 15, AZALEA_GYM, 20
; pit 3
	warp_event 13, 14, AZALEA_GYM, 18
	warp_event 13, 15, AZALEA_GYM, 18
; pit 4
	warp_event 16, 18, AZALEA_GYM, 20
	warp_event 17, 18, AZALEA_GYM, 20
; pit 5
	warp_event 16, 10, AZALEA_GYM, 17
	warp_event 17, 10, AZALEA_GYM, 17
; pit 6
	warp_event  5, 10, AZALEA_GYM, 19
	warp_event  5, 11, AZALEA_GYM, 19
; pit 7
	warp_event 16,  6, AZALEA_GYM, 20
	warp_event 17,  6, AZALEA_GYM, 20
; warp targets
	warp_event 10,  4, AZALEA_GYM, 1
	warp_event  5, 14, AZALEA_GYM, 1
	warp_event 17, 14, AZALEA_GYM, 1
	warp_event  6, 18, AZALEA_GYM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
