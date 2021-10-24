Route23_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	return

IndigoPlateauSign:
	jumptext IndigoPlateauSignText

IndigoPlateauSignText:
	text "INDIGO PLATEAU"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#MON LEAGUE HQ"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  7, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event  7,  0, INDIGO_PLATEAU_POKECENTER_1F, 2
	warp_event  4, 25, VICTORY_ROAD, 10
	warp_event  9,  0, VICTORY_ROAD, 10

	db 0 ; coord events

	db 1 ; bg events
	bg_event  3,  7, BGEVENT_READ, IndigoPlateauSign

	db 0 ; object events
