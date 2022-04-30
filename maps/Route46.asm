	object_const_def ; object_event constants
	const ROUTE46_YOUNGSTER
	const ROUTE46_LASS
	const ROUTE46_FRUIT_TREE1
	const ROUTE46_FRUIT_TREE2
	const ROUTE46_SPORTSMAN

Route46_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerPicnickerErin1:
	trainer LASS, NIECHELLE, EVENT_BEAT_PICNICKER_ERIN, PicnickerErin1SeenText, PicnickerErin1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_PICNICKER_ERIN
	opentext
	checkflag ENGINE_ERIN
	iftrue .WantsBattle
	checkcellnum PHONE_PICNICKER_ERIN
	iftrue Route46NumberAcceptedF
	checkevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerErinAfterBattleText
	buttonsound
	setevent EVENT_ERIN_ASKED_FOR_PHONE_NUMBER
	scall Route46AskNumber1F
	sjump .AskForNumber

.AskedAlready:
	scall Route46AskNumber2F
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_ERIN
	ifequal PHONE_CONTACTS_FULL, Route46PhoneFullF
	ifequal PHONE_CONTACT_REFUSED, Route46NumberDeclinedF
	gettrainername STRING_BUFFER_3, PICNICKER, ERIN1
	scall Route46RegisteredNumberF
	sjump Route46NumberAcceptedF

.WantsBattle:
	scall Route46RematchF
	winlosstext PicnickerErin1BeatenText, 0
	readmem wErinFightCount
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight2:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer PICNICKER, ERIN1
	startbattle
	reloadmapafterbattle
	loadmem wErinFightCount, 1
	clearflag ENGINE_ERIN
	end

.LoadFight1:
	loadtrainer PICNICKER, ERIN2
	startbattle
	reloadmapafterbattle
	loadmem wErinFightCount, 2
	clearflag ENGINE_ERIN
	end

.LoadFight2:
	loadtrainer PICNICKER, ERIN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ERIN
	checkevent EVENT_ERIN_CALCIUM
	iftrue .HasCalcium
	checkevent EVENT_GOT_CALCIUM_FROM_ERIN
	iftrue .GotCalciumAlready
	scall Route46RematchGiftF
	verbosegiveitem CALCIUM
	iffalse ErinNoRoomForCalcium
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjump Route46NumberAcceptedF

.GotCalciumAlready:
	end

.HasCalcium:
	opentext
	writetext PicnickerErin2BeatenText
	waitbutton
	verbosegiveitem CALCIUM
	iffalse ErinNoRoomForCalcium
	clearevent EVENT_ERIN_CALCIUM
	setevent EVENT_GOT_CALCIUM_FROM_ERIN
	sjump Route46NumberAcceptedF

Route46AskNumber1F:
	jumpstd asknumber1f
	end

Route46AskNumber2F:
	jumpstd asknumber2f
	end

Route46RegisteredNumberF:
	jumpstd registerednumberf
	end

Route46NumberAcceptedF:
	jumpstd numberacceptedf
	end

Route46NumberDeclinedF:
	jumpstd numberdeclinedf
	end

Route46PhoneFullF:
	jumpstd phonefullf
	end

Route46RematchF:
	jumpstd rematchf
	end

ErinNoRoomForCalcium:
	setevent EVENT_ERIN_CALCIUM
	jumpstd packfullf
	end

Route46RematchGiftF:
	jumpstd rematchgiftf
	end
	
TrainerYoungsterBenny:	
	trainer YOUNGSTER, BENNY, EVENT_BEAT_YOUNGSTER_BENNY, YoungsterBennySeenText, YoungsterBennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterBennyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSportsmanJayden:	
	trainer SPORTSMAN, JAYDEN, EVENT_BEAT_SPORTSMAN_JAYDEN, SportsmanJaydenSeenText, SportsmanJaydenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SportsmanJaydenAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLassYuri:	
	trainer LASS, YURI, EVENT_BEAT_LASS_YURI, LassYuriSeenText, LassYuriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassYuriAfterBattleText
	waitbutton
	closetext
	end
	
TrainerCamperCraig:	
	trainer CAMPER, CRAIG, EVENT_BEAT_CAMPER_CRAIG, CamperCraigSeenText, CamperCraigBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperCraigAfterBattleText
	waitbutton
	closetext
	end

Route46Sign:
	jumptext Route46SignText

Route46FruitTree1:
	fruittree FRUITTREE_ROUTE_46_1

Route46FruitTree2:
	fruittree FRUITTREE_ROUTE_46_2

PicnickerErin1SeenText:
	text "Eek! Are you here"
	line "to gawk at my"
	cont "snowballs, too?"
	done

PicnickerErin1BeatenText:
	text "I guess not…"
	done

PicnickerErinAfterBattleText:
	text "My CAMOUFLAKE"
	line "sure are cute,"
	cont "aren't they?"
	
	para "We even like to"
	line "play in the snow"
	cont "together!"
	done

PicnickerErin2BeatenText:
	text "Aww… I keep losing"
	line "all the time!"

	para "I'll just have to"
	line "try harder!"

	para "Anyway, thanks for"
	line "battling me again"

	para "and again. Here's"
	line "that present from"
	cont "the other time."
	done
	
YoungsterBennySeenText:
	text "Every season is"
	line "shorts season!"
	done
	
YoungsterBennyBeatenText:
	text "That's cold…"
	done
	
YoungsterBennyAfterBattleText:
	text "Huh? Put on some"
	line "winter clothes?"
	
	para "What are you, my"
	line "mom?"
	done
	
SportsmanJaydenSeenText:
	text "Aha! Who needs"
	line "winter clothes"
	cont "when you've got"
	
	para "the fiery spirit"
	line "of an athlete?"
	done
	
SportsmanJaydenBeatenText:
	text "My spirit! It"
	line "has been extin-"
	cont "guished!"
	done
	
SportsmanJaydenAfterBattleText:
	text "The cold…it's"
	line "finally getting"
	cont "to me…"
	done
	
LassYuriSeenText:
	text "Ah…Nothing beats"
	line "the lovely snow"
	cont "that falls here…"
	done
	
LassYuriBeatenText:
	text "It's so soothing…"
	done
	
LassYuriAfterBattleText:
	text "Sometimes the snow"
	line "is a little too"
	cont "soothing. I some-"
	
	para "times end up stay-"
	line "ing here so late"
	cont "because I lose"
	
	para "track of time."
	done

CamperCraigSeenText:	
	text "Let's see if you"
	line "have what it takes"
	cont "to survive the"
	
	para "wilderness of"
	line "JOHTO!"
	done
	
CamperCraigBeatenText:
	text "Nice! You've got"
	line "what it takes!"
	done
	
CamperCraigAfterBattleText:
	text "It's always so"
	line "pleasing to see"
	cont "others explore the"
	
	para "natural wonders"
	line "JOHTO has to"
	cont "offer."
	done

Route46SignText:
	text "ROUTE 46"
	line "MOUNTAIN RD. AHEAD"
	done

Route46_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7, 33, ROUTE_29_ROUTE_46_GATE, 1
	warp_event  8, 33, ROUTE_29_ROUTE_46_GATE, 2
	warp_event  4,  7, DARK_CAVE_VIOLET_ENTRANCE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 10, 30, BGEVENT_READ, Route46Sign

	db 7 ; object events
	object_event 11, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerYoungsterBenny, -1
	object_event  7, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPicnickerErin1, -1
	object_event  9, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46FruitTree1, -1
	object_event 16,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46FruitTree2, -1
	object_event  6, 28, SPRITE_SPORTSMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSportsmanJayden, -1
	object_event  4, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassYuri, -1
	object_event  4, 12, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperCraig, -1

