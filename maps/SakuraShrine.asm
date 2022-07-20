SakuraShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
SakuraShrineSageScript:
	checkevent EVENT_TALKED_TO_SAGE_IN_SAKURA_SHRINE
	iftrue .not_first_time
	setevent EVENT_TALKED_TO_SAGE_IN_SAKURA_SHRINE
	jumptextfaceplayer .Txt

.not_first_time
	jumptextfaceplayer .Txt2

.Txt:
	text "Ah, a young one."
	para "What brings you"
	line "here?"
	para "<...>"
	para "Hmm<...> Your journey"
	line "is only just be-"
	cont "ginning, child."
	para "Return when you"
	line "have grown."
	para "I will have a"
	line "small gift for"
	cont "you."
	done
.Txt2:
	text "Impatient, are we?"
	line "You have not yet"
	para "passed my thres-"
	line "hold."
	para "Return later,"
	line "child."
	para "I am not going"
	line "anywhere, hohoho."
	done

SakuraShrine_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, ZEN_GARDEN, 3
	warp_event  4,  7, ZEN_GARDEN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  1, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SakuraShrineSageScript, -1
