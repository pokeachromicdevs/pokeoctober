	object_const_def ; object_event constants
	const ROUTE29ROUTE46GATE_OFFICER
	const ROUTE29ROUTE46GATE_YOUNGSTER

Route29Route46Gate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route29Route46GateOfficerScript:
	jumptextfaceplayer Route29Route46GateOfficerText

Route29Route46GateHikerScript:
	jumptextfaceplayer Route29Route46GateHikerText

Route29Route46GateOfficerText:
	text "You can never"
	line "wear too many"
	cont "clothes for the"

	para "snow up ahead."
	line "ROUTE 46 isn't"
	cont "too bad, but"
	
	para "ROUTE 45 is a"
	line "bone-chilling"
	cont "nightmare."
	done

Route29Route46GateHikerText:
	text "There's nothing"
	line "like chugging"
	cont "down a cup of hot"

	para "chocolate after a"
	line "trek down a chilly"
	cont "mountain path."
	done

Route29Route46Gate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, ROUTE_46, 1
	warp_event  5,  0, ROUTE_46, 2
	warp_event  4,  7, SILENT_HILLS, 3
	warp_event  5,  7, SILENT_HILLS, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29Route46GateOfficerScript, -1
	object_event  6,  4, SPRITE_HIKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route29Route46GateHikerScript, -1
