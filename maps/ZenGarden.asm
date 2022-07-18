ZenGarden_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ZenGardenMediumScript:
	jumptextfaceplayer .Txt

.Txt:
	text "Ah, it's not every-"
	line "day a young one"
	para "such as yourself"
	line "comes to the ZEN"
	cont "GARDEN."
	para "It's reassuring"
	line "that the young"
	para "ones still wish to"
	line "pay respects."
	done

ZenGardenSageScript:
	jumptextfaceplayer .Txt

.Txt:
	text "A strange little"
	line "fish called"
	para "SAKURAQUA dwells"
	line "in this pond."
	para "And yet, I haven't"
	line "gotten the chance"
	para "to witness one"
	line "myself<...>"
	done

ZenGardenGrampsScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I always make sure"
	line "to bring a blossom"
	para "home to my wife"
	line "when the trees"
	cont "bloom."
	para "Thirty years and"
	line "it still makes her"
	para "smile like the"
	line "first time I"
	cont "brought her one!"
	done

ZenGardenSageScript1:
	jumptextfaceplayer .Txt

.Txt:
	text "There used to be"
	line "a shrine like this"
	para "in CHERRYGROVE"
	line "CITY."
	para "It was so"
	line "beautiful<...>"
	para "I don't know what"
	line "happened to it,"
	cont "but it's gone now."
	done

ZenGarden_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 33, ZEN_GARDEN_GATE, 1
	warp_event 10, 33, ZEN_GARDEN_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 21,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZenGardenMediumScript, -1
	object_event 21, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ZenGardenSageScript, -1
	object_event 29, 11, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZenGardenGrampsScript, -1
	object_event  8, 31, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ZenGardenSageScript1, -1
