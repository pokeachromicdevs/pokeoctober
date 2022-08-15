SakuraShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
SakuraShrineSageScript:
	faceplayer
	checkevent EVENT_RECEIVED_GIFT_FROM_SAGE_IN_SAKURA_SHRINE
	iftrue ._after_receive_gift

	checkevent EVENT_TALKED_TO_SAGE_IN_SAKURA_SHRINE
	iftrue .not_first_time

	checkflag ENGINE_PLAINBADGE
	iftrue .first_time_but_already_got_badge

	setevent EVENT_TALKED_TO_SAGE_IN_SAKURA_SHRINE
	jumptext .Txt

.not_first_time
	checkflag ENGINE_PLAINBADGE
	iftrue .got_badge_after_talking_to_sage
	jumptext .Txt2

.first_time_but_already_got_badge
	opentext
	writetext .Txt5
	buttonsound
	sjump .receive_gift

.got_badge_after_talking_to_sage
	opentext
	writetext .Txt3
	buttonsound
	;sjump .receive_gift

.receive_gift
	waitsfx
	writetext .ReceivedBulbaTxt
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 10, MYSTIC_PETAL
	setevent EVENT_RECEIVED_GIFT_FROM_SAGE_IN_SAKURA_SHRINE

.after_receive_gift
	writetext .Txt4
	waitbutton
	closetext
	end

._after_receive_gift
	opentext
	sjump .after_receive_gift

.ReceivedBulbaTxt:
	text "<PLAYER> got a"
	line "BULBASAUR!"
	done

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
.Txt3:
	text "Oh, so you've re-"
	line "turned."
	para "I see you have the"
	line "PLAINBADGE!"
	para "You've become"
	line "strong, and you"
	para "are now worthy of"
	line "my gift."
	para "Take it, young"
	line "one!"
	done
.Txt4:
	text "That's BULBASAUR,"
	line "a rare #MON in"
	cont "KANTO."
	para "The item it is"
	line "holding is a"
	cont "MYSTIC PETAL."
	para "It decreases the"
	line "damage taken by"
	cont "grass-type moves."
	para "Enjoy your journey"
	line "child, and may you"
	para "grow stronger"
	line "still."
	done
.Txt5:
	text "Ah, a young one."
	para "What brings you"
	line "here?"
	para "<...>"
	para "I see you have the"
	line "PLAINBADGE!"
	para "It means that you"
	line "are already making"
	para "great progress in"
	line "your journey."
	para "Take this, as a"
	line "token of moti-"
	cont "vation."
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
