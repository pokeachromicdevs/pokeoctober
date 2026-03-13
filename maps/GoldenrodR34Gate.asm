GoldenrodR34Gate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GoldenrodR34GateGuardScript:
	jumptextfaceplayer .Txt

.Txt:
	text "If you're thinking"
	line "of taking on"
	cont "MARIGOLD's GYM"
	para "LEADER, you'll"
	line "probably end up"
	cont "disappointed."
	para "He frequently"
	line "ditches his post"
	para "to train his #-"
	line "MON and himself"
	cont "in the wild."
	done

GoldenrodR34GateMysticScript:
	jumptextfaceplayer .Txt

.Txt:
	text "My crystal has al-"
	line "lowed me to fore-"
	para "see myself besting"
	line "FERGUS."
	para "Unfortunately, I"
	line "didn't foresee"
	para "FERGUS being ab-"
	line "sent from his GYM"
	para "when I arrived"
	line "here<...>"
	done

GoldenrodR34GateEngineerScript:
	jumptextfaceplayer .Txt

.Txt:
	text "The MAGNET TRAIN"
	line "is fantastic!"
	
	para "It allows for"
	line "traversing across"
	para "MARIGOLD, and"
	line "even to SAPPAN-"
	cont "WOOD CITY!"
	
	para "I would know, I"
	line "helped in its con-"
	cont "struction!"
	done

GoldenrodR34Gate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, GOLDENROD_CITY, 1
	warp_event  5,  0, GOLDENROD_CITY, 2
	warp_event  4,  7, ROUTE_34, 1
	warp_event  5,  7, ROUTE_34, 1
	
	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodR34GateGuardScript, -1
	object_event  7,  3, SPRITE_MYSTIC, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodR34GateMysticScript, -1
	object_event  2,  6, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodR34GateEngineerScript, -1
