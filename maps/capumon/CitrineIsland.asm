	object_const_def ; object_event constants

CitrineIsland_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CitrineIsland_Sign:
	jumptext .txt
.txt:
	text "CITRINE ISLAND"

	para "A Gathering Place"
	line "for the Rarities"
	cont "of the World"
	done

CitrineIsland_LargeBuildingSign:
	jumptext .txt
.txt:
	text "CITRINE INN"
	done

CitrineIsland_CVSSign:
	jumpstd martsign

CitrineIsland_InnSign:
	jumptext .txt
.txt:
	text "CITRINE INN"
	done

CitrineIsland_BattlePlaceSign:
	jumptext .txt
.txt:
	;     ##################
	text "BATTLE PLACE"

	para "Give your #MON"
	line "its Best Shot!"
	done

CitrineIsland_GFSign:
	jumptext .txt
.txt:
	;     ##################
	text "BUILDING FOR RENT"
	done

CitrineIsland_MonsterSign:
	jumptext .txt
.txt:
	text "Placeholder" ; TODO: What do we put here???
	done

CitrineIsland_TownCenterSign:
	jumptext .txt
.txt:
	text "TRAINER TIPS"

	para "Remember to save"
	line "often!"
	done

CitrineIsland_HiddenMew:
	opentext
	writetext .Txt1
	waitbutton

	checkevent EVENT_GOT_MEW_IN_CITRINE
	iftrue .NoMew

	random 8
	ifnotequal 0, .NoMew

	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoMew ; no more room

	writetext .Txt2
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke MEW, 20
	setevent EVENT_GOT_MEW_IN_CITRINE
	sjump .Done
.NoMew
	random 8
	ifequal 0, .GetRareCandy
	writetext .Txt3
	waitbutton
	sjump .Done
.GetRareCandy
	writetext .Txt4
	waitbutton
	verbosegiveitem RARE_CANDY
	;iffalse .Done ; no more room
.Done
	closetext
	end

.Txt1:
	;     ##################
	text "You looked under"
	line "the truck."
	done
.Txt2:
	;     ##################
	text "Hey! It's a MEW!"

	para "<PLAYER> received"
	line "MEW!"
	done
.Txt3:
	;     ##################
	text "There's nothing"
	line "here…"
	done
.Txt4:
	;     ##################
	text "Hey! There's some-"
	line "thing inside!"
	done


CitrineIsland_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 24, 27, CITRINE_INN_1F, 1
	warp_event 30, 15, CITRINE_MART, 2
	warp_event 16, 17, CITRINE_DEV_HOUSE_1F, 1

	db 0 ; coord events

	db 9 ; bg events
	bg_event 25, 15, BGEVENT_READ, CitrineIsland_Sign
	bg_event 27,  7, BGEVENT_READ, CitrineIsland_LargeBuildingSign
	bg_event 23, 27, BGEVENT_READ, CitrineIsland_InnSign
	bg_event  9, 11, BGEVENT_READ, CitrineIsland_BattlePlaceSign
	bg_event 17, 21, BGEVENT_READ, CitrineIsland_GFSign
	bg_event 13, 27, BGEVENT_READ, CitrineIsland_MonsterSign
	bg_event 21, 33, BGEVENT_READ, CitrineIsland_TownCenterSign
	bg_event 29, 15, BGEVENT_READ, CitrineIsland_CVSSign
	bg_event 19,  6, BGEVENT_UP, CitrineIsland_HiddenMew

	db 0 ; object events
