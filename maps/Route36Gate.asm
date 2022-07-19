Route36Gate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here

Route36Gate_YoungsterScript:
	jumptextfaceplayer .Txt

.Txt:
	text "You've got to be"
	line "kidding me!"
	para "How'd a SNORLAX"
	line "come all the way"
	para "here from the"
	line "mountains without"
	cont "no one noticing?!"
	done

Route36Gate_CamperScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I knew I should've"
	line "brought my DONPHAN"
	cont "and MACHAMP today<...>"
	para "I didn't know why,"
	line "but I knew I"
	cont "needed to do it."
	para "Too bad I didn't"
	line "listen to my con-"
	cont "science."
	done

Route36Gate_GuardScript:
	jumptextfaceplayer .Txt

.Txt:
	text "Sorry, kid."
	para "The road ahead's"
	line "been blocked by"
	para "a SNORLAX for a"
	line "few days now."
	para "Amazingly, no one"
	line "has managed to"
	para "get it out of the"
	line "way."
	para "You'll need to get"
	line "around through"
	para "ROUTE 32 to get"
	line "where you want."
	done

Route36Gate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  4, VIOLET_CITY, 9
	warp_event  9,  5, VIOLET_CITY, 10
	warp_event  0,  4, ROUTE_36, 1
	warp_event  0,  5, ROUTE_36, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  8,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route36Gate_YoungsterScript, -1
	object_event  1,  3, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route36Gate_CamperScript, -1
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route36Gate_GuardScript, -1
