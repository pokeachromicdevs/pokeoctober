	object_const_def ; object_event constants
	const ILEXFORESTAZALEAGATE_OFFICER
	const ILEXFORESTAZALEAGATE_GRANNY
	const CHERRYGROVEWOOODSGATE_YOUNGSTER

CherrygroveWoodsGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveWoodsGateOfficerScript:
	jumptextfaceplayer CherrygroveWoodsGateOfficerText

CherrygroveWoodsGateLassScript:
	jumptextfaceplayer CherrygroveWoodsGateLassText
	
CherrygroveWoodsGateYoungsterScript:
	faceplayer
	opentext
	writetext CherrygroveWoodsGateYoungsterText
	yesorno
	iffalse .no
	writetext CherrygroveWoodsYoungsterYesText
	waitbutton
	closetext
	end

.no:
	writetext CherrygroveWoodsYoungsterNoText
	waitbutton
	closetext
	end

CherrygroveWoodsGateOfficerText:
	text "You know, with"
	line "how little crime"
	cont "happens here, do"
	
	para "I really need to"
	line "be cooped up in"
	cont "this gate? Who's"
	
	para "gonna cause trou-"
	line "ble in SILENT"
	cont "TOWN of all"
	
	para "places?"
	done

CherrygroveWoodsGateLassText:
	text "I heard there's"
	line "some crazy old"
	cont "man living out"

	para "in the woods,"
	line "and I've been too"
	cont "scared to enter"
	
	para "because of that."
	line "So scared, in"
	cont "fact, that I've"
	
	para "been hanging out"
	line "in here for weeks,"
	cont "unable to advance"
	
	para "on my journey."
	done
	
CherrygroveWoodsGateYoungsterText:
	text "I always wondered"
	line "what BERRIES taste"
	cont "like. You ever"
	
	para "tried one?"
	done
	
CherrygroveWoodsYoungsterYesText:
	text "Oh, you look fine."
	line "I'll have to give it"
	cont "a try some time!"
	done
	
CherrygroveWoodsYoungsterNoText:
	text "Really? Our #-"
	line "MON gobble these"
	cont "right up! Aren't"
	
	para "you even a little"
	line "curious?"
	done 

CherrygroveWoodsGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 11,  7, ROUTE_29, 1
	warp_event 12,  7, ROUTE_29, 1
	warp_event  1,  7, CHERRYGROVE_WOODS, 1
	warp_event  2,  7, CHERRYGROVE_WOODS, 1


	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveWoodsGateOfficerScript, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveWoodsGateLassScript, -1
	object_event 12,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygroveWoodsGateYoungsterScript, -1
