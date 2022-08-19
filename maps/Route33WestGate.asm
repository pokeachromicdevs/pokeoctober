	object_const_def ; object_event constants
	const ROUTE33WESTGATE_OFFICER

Route33WestGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route33WestGateOfficerScript:
	jumptextfaceplayer .Text

.Text:
	text "Zzz<...>"
	done

Route33WestGate_Lass:
	jumptextfaceplayer .Text
.Text:
	text "That man over"
	line "there is always"
	cont "tired."
	para "It must be hard"
	line "staying up for"
	para "hours in the night"
	line "watching for"
	cont "criminals."
	done

Route33WestGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 11,  7, ROUTE_33, 3
	warp_event 12,  7, ROUTE_33, 3
	warp_event  1,  7, AZALEA_TOWN, 1
	warp_event  2,  7, AZALEA_TOWN, 1


	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route33WestGateOfficerScript, -1
	object_event  2,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route33WestGate_Lass, -1
