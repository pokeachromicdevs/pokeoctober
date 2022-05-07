CherrygroveShrineGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CGShrineGateOfficerScript:
	jumptextfaceplayer .Text

.Text:
	text "The SAKURA SHRINE"
	line "is a sacred place."

	para "Out of all places"
	line "you could possibly"
	para "mess around, it"
	line "better not be"
	cont "here, kid."
	done

CGShrineGateMysticScript:
	jumptextfaceplayer .Text

.Text:
	text "#MON will even-"
	line "tually evolve"
	cont "after some time."

	para "For example, my"
	line "NATU recently"
	cont "evolved into KATU."

	para "Though, I think my"
	line "little KATU can"
	para "still evolve one"
	line "more time."
	done

CherrygroveShrineGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9,  4, CHERRYGROVE_CITY, 10
	warp_event  9,  5, CHERRYGROVE_CITY, 11
	warp_event  0,  4, CHERRYGROVE_SHRINE, 1
	warp_event  0,  5, CHERRYGROVE_SHRINE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CGShrineGateOfficerScript, -1
	object_event  1,  2, SPRITE_MYSTIC, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, CGShrineGateMysticScript, -1
