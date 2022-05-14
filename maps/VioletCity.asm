VioletCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

VioletCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 21, 31, VIOLET_MART, 2
	warp_event 34, 31, VIOLET_GYM, 1
	warp_event 37, 26, ROUTE_31_VIOLET_GATE, 1
	warp_event 37, 27, ROUTE_31_VIOLET_GATE, 2
	warp_event  3, 25, SPROUT_TOWER_1F, 1
	warp_event 17, 31, VIOLET_POKECENTER_1F, 1
	warp_event  7,  1, ZEN_GARDEN_GATE, 3
	warp_event 19,  3, VIOLET_HERB_SHOP, 1 

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
