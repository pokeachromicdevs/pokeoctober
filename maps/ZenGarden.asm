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

TrainerFledglingTom:
	trainer FLEDGLING, FLEDGLING_TOM, EVENT_BEAT_FLEDGLING_TOM, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt: ; TODO
	text "This place is"
	line "huge!"
	done

.WinTxt: ; TODO
	text "Aah!"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt: ; TODO
	text "I hope I don't get"
	line "lost here<...>"
	done

TrainerSageChen:
	trainer SAGE, CHEN, EVENT_BEAT_SAGE_CHEN, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "There is no place"
	line "more soothing than"
	para "this wondrous gar-"
	line "den."
	done

.WinTxt:
	text "Even now, I feel"
	line "no rage."
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "If only there was"
	line "a way to keep the"
	para "soothing bliss"
	line "from this place"
	para "with me at all"
	line "times<...>"
	done

TrainerSageMonty:
	trainer SAGE, MONTY, EVENT_BEAT_SAGE_MONTY, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "Can you withhold"
	line "your anger from"
	para "your incoming"
	line "defeat?"
	done

.WinTxt:
	text "Hmm<...>"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "I've lost the"
	line "ability to feel"
	cont "anger."
	para "In fact, I've been"
	line "losing all of my"
	cont "emotions lately."
	done

TrainerMysticSonia:
	trainer MYSTIC, SONIA, EVENT_BEAT_MYSTIC_SONIA, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "Hey! Get out of"
	line "here! You're dis-"
	cont "tracting me!"
	done

.WinTxt:
	text "Curses<...>"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "I'm sorry, but I"
	line "can't focus on"
	para "gazing into the"
	line "future with people"
	cont "around."
	para "Please, just<...>"
	line "leave."
	done

SakuraShrineSign:
	jumptext .Txt
.Txt:
	text "SAKURA SHRINE"
	done

ZenGarden_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9, 33, ZEN_GARDEN_GATE, 1
	warp_event 10, 33, ZEN_GARDEN_GATE, 2
	warp_event 19,  5, SAKURA_SHRINE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 22,  6, BGEVENT_READ, SakuraShrineSign

	db 8 ; object events
	object_event 21,  6, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZenGardenMediumScript, -1
	object_event 21, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ZenGardenSageScript, -1
	object_event 29, 11, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZenGardenGrampsScript, -1
	object_event 16, 22, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ZenGardenSageScript1, -1
	object_event  5, 23, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerFledglingTom, -1
	object_event  7,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageChen, -1
	object_event  9, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageMonty, -1
	object_event 35, 13, SPRITE_MYSTIC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerMysticSonia, -1
