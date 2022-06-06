	object_const_def ; object_event constants
	const CITRINEDEVHOUSE2F_DEV_GUY
	const CITRINEDEVHOUSE2F_POKE_BALL
	

CitrineDevHouse2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CitrineDevHouse2FGuyScript:
	checkevent EVENT_CITRINE_DEV_HOUSE_EXP_SHARE
	iftrue .GotExpShare
	checkevent EVENT_TALKED_TO_DEV_GUY_AT_CITRINE
	iftrue .TalkedTo
	setevent EVENT_TALKED_TO_DEV_GUY_AT_CITRINE

	scall .DoText
	turnobject CITRINEDEVHOUSE2F_DEV_GUY, UP
	end

.DoText
	jumptextfaceplayer .Text

.GotExpShare
	scall .DoGotExpShareText
	turnobject CITRINEDEVHOUSE2F_DEV_GUY, UP
	end

.DoGotExpShareText
	jumptextfaceplayer .GotExpShareText

.GotExpShareText
	text "Hope you find it"
	line "useful<...>"
	done

.TalkedTo
	scall .DoTalkedToText
	turnobject CITRINEDEVHOUSE2F_DEV_GUY, UP
	end

.DoTalkedToText
	jumptextfaceplayer .TalkedToText

.TalkedToText
	text "Go ahead, take it!"
	done

.Text
	text "Oh<...> Hi."
	para "Didn't expect to"
	line "see a visitor"
	cont "here."
	para "Uh<...>"
	para "Do you want that"
	line "EXP.SHARE on the"
	cont "table?"
	para "I don't really"
	line "need it, so take"
	cont "it if you want."
	done

CitrineDevHouse2FItemBall:
	itemball EXP_SHARE

CitrineDevHouse2FLaptop:
	jumptext .Text

.Text
	text "Looks like the"
	line "game script."
	para "Seems to be"
	line "organized haphaz-"
	cont "ardly<...>"
	done

CitrineDevHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  1, CITRINE_DEV_HOUSE_1F, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event  6,  5, BGEVENT_READ, CitrineDevHouse2FLaptop

	db 2 ; object events
	object_event  6,  6, SPRITE_SUPER_NERD,SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrineDevHouse2FGuyScript, -1
	object_event  7,  4, SPRITE_POKE_BALL,SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CitrineDevHouse2FItemBall, EVENT_CITRINE_DEV_HOUSE_EXP_SHARE
