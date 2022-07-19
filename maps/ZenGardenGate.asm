ZenGardenGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ZenGardenGateGuardScript:
	jumptextfaceplayer .Txt

.Txt:
	text "The ZEN GARDEN is"
	line "a sacred place."
	para "Out of all places"
	line "you could possibly"
	para "mess around, it"
	line "better not be here"
	cont "kid."
	done

ZenGardenGateMysticScript:
	jumptextfaceplayer .Txt

.Txt:
	text "#MON will"
	line "eventually evolve"
	cont "after some time."
	para "For example, my"
	line "NATU recently"
	cont "evolved into KATU."
	para "Though, I think my"
	line "little KATU can"
	para "still evolve one"
	line "more time."
	done

ZenGardenGateGentlemanScript:
	jumptextfaceplayer .Txt

.Txt:
	text "While other people"
	line "come here to pay"
	para "respects, I come"
	line "here to relax and"
	cont "admire the view."
	done

ZenGardenGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, ZEN_GARDEN, 1
	warp_event  5,  0, ZEN_GARDEN, 1
	warp_event  4,  7, VIOLET_CITY, 7
	warp_event  5,  7, VIOLET_CITY, 7

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  0,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ZenGardenGateGuardScript, -1
	object_event  7,  3, SPRITE_MYSTIC, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ZenGardenGateMysticScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ZenGardenGateGentlemanScript, -1
