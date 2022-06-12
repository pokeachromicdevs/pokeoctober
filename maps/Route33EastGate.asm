	object_const_def ; object_event constants
	const ROUTE33EASTGATE_OFFICER

Route33EastGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route33EastGateOfficerScript:
	jumptextfaceplayer .Text

.Text:
	text "Zzz<...>"
	done

Route33EastGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, ROUTE_33,   1
	warp_event  0,  5, ROUTE_33,   2
	warp_event  9,  4, ALDER_TOWN, 5
	warp_event  9,  5, ALDER_TOWN, 6

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events 
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route33EastGateOfficerScript, -1
