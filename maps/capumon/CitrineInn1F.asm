CITRINEINN1F_FEE EQU 50

	object_const_def ; object_event constants
	const CITRINEINN1F_RECEPTIONIST

CitrineInn1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CitrineInn1FReceptionistScript:
	faceplayer
	checkcode VAR_FACING
	ifequal DOWN, .LeavingSoSoon
	opentext
	writetext .WelcomeText
	callasm .ShowMoneyBox
	writetext .StayText
	yesorno
	iffalse .ComeAgain
	checkmoney YOUR_MONEY, CITRINEINN1F_FEE - 1
	ifnotequal HAVE_MORE, .Sorry
	closetext
	takemoney YOUR_MONEY, CITRINEINN1F_FEE
	opentext
	writetext .RightThisWayText
	waitbutton
	closetext
	follow CITRINEINN1F_RECEPTIONIST, PLAYER
	applymovement CITRINEINN1F_RECEPTIONIST, .WalkTo2F
	stopfollow
	disappear CITRINEINN1F_RECEPTIONIST
	applymovement PLAYER, .WalkTo2FYourself
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	appear CITRINEINN1F_RECEPTIONIST
	warp CITRINE_INN_2F, 0, 0
	end
.WalkTo2F:
	step UP
	step LEFT
	step LEFT
	step LEFT
.WalkTo2FYourself:
	step UP
	step_end
.Sorry
	writetext .SorryText
	writetext .ComeAgainText
	waitbutton
	closetext
	end
.ShowMoneyBox
	hlcoord 0, 0
	lb bc, 1, 7
	call Textbox
	lb bc, PRINTNUM_MONEY | 3, 6
	ld de, wMoney
	hlcoord 1, 1
	call PrintNum
	ret
.LeavingSoSoon
	opentext
	writetext .LeavingText
	yesorno
	iffalse .TakeYourTime
	closetext
	follow CITRINEINN1F_RECEPTIONIST, PLAYER
	applymovement CITRINEINN1F_RECEPTIONIST, .MoveOutOfWay
	stopfollow
	applymovement CITRINEINN1F_RECEPTIONIST, .BackToStart
	turnobject PLAYER, UP
	opentext
	writetext .ThanksForStayingText
	writetext .ComeAgainText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end
.MoveOutOfWay:
	step DOWN
	step DOWN
	step DOWN
	step_end
.BackToStart:
	step RIGHT
	step UP
	step UP
	step LEFT
	step UP
	turn_head DOWN
	step_end
.TakeYourTime
	writetext .TakeYourTimeText
	waitbutton
	closetext
	end
.ComeAgain
	writetext .ComeAgainText
	waitbutton
	closetext
	end

.LeavingText:
	;     ##################
	text "Leaving so soon?"
	done
.TakeYourTimeText:
	;     ##################
	text "Take all the time"
	line "you need."
	done
.ComeAgainText:
	text "We hope to see you"
	line "again!"
	done
.ThanksForStayingText:
	;     ##################
	text "Thanks for"
	line "staying!"
	prompt
.SorryText:
	;     ##################
	text "Sorry, but it"
	line "looks like you"
	para "don't have enough"
	line "money."
	prompt
.WelcomeText:
	text "Welcome to CITRINE"
	line "INN!"

	para "We pride ourselves"
	line "in providing a"
	para "comfortable place"
	line "for TRAINERs to"
	cont "rest."

	para "A single stay with"
	line "us costs ¥50."
	prompt
.StayText:
	text "Would you like to"
	line "stay?"
	done
.RightThisWayText:
	text "Thank you!"
	para "Right this way,"
	line "please."
	done

CitrineInn1F_ChairGuyScript:
	jumptext .Txt
.Txt
	;     ##################
	text "I think I'm gonna"
	line "take a quick stop"
	para "here before I"
	line "continue my KANTO"
	cont "tour."
	done

CitrineInn1FReceptionist2Script:
CitrineInn1FReceptionist3Script:
	end

CitrineInn1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CITRINE_ISLAND, 1
	warp_event  4,  7, CITRINE_ISLAND, 1
	warp_event  0,  0, CITRINE_INN_2F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  0,  4, BGEVENT_LEFT, CitrineInn1F_ChairGuyScript

	db 3 ; object events
	object_event  3,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrineInn1FReceptionistScript, -1
	object_event  7,  1, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrineInn1FReceptionist2Script, -1
	object_event 11,  1, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrineInn1FReceptionist3Script, -1
