	object_const_def ; object_event constants
	const ROUTE32RUINSOFALPHGATE_OFFICER
	const ROUTE32RUINSOFALPHGATE_SPORTSMAN

SilentHillsExitGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

WoodsExitGateOfficerScript:
	jumptextfaceplayer WoodsExitGateOfficerText

WoodsExitGateSportsmanScript:
	jumptextfaceplayer WoodsExitGateSportsmanText

WoodsExitGateOfficerText:
	text "Welcome to"
	line "CHERRYGROVE CITY!"

	para "Population: Too"
	line "many."
	done

WoodsExitGateSportsmanText:
	text "Phew! I'm nearly"
	line "done with my run"
	cont "across all of"
	
	para "JOHTO! All I have"
	line "to do now is head"
	cont "to SILENT TOWN!"
	done

SilentHillsExitGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  7, SILENT_HILLS, 2
	warp_event 10,  7, SILENT_HILLS, 2
	warp_event  0,  4, CHERRYGROVE_CITY, 7
	warp_event  0,  5, CHERRYGROVE_CITY, 8

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WoodsExitGateOfficerScript, -1
	object_event  8,  2, SPRITE_SPORTSMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, WoodsExitGateSportsmanScript, -1
