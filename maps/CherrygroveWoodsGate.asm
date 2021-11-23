	object_const_def ; object_event constants
	const ILEXFORESTAZALEAGATE_OFFICER
	const ILEXFORESTAZALEAGATE_GRANNY

CherrygroveWoodsGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveWoodsGateOfficerScript:
	jumptextfaceplayer CherrygroveWoodsGateOfficerText

CherrygroveWoodsGateGrannyScript:
	jumptextfaceplayer CherrygroveWoodsGateGrannyText

CherrygroveWoodsGateOfficerText:
	text "ILEX FOREST is"
	line "big. Be careful!"
	cont "Don't get lost."
	done

CherrygroveWoodsGateGrannyText:
	text "The FOREST is"
	line "watched over by"
	cont "its protector."

	para "Stay out of"
	line "mischief!"
	done

CherrygroveWoodsGate_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  9,  4, CHERRYGROVE_WOODS, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveWoodsGateOfficerScript, -1
	object_event  3,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CherrygroveWoodsGateGrannyScript, -1
