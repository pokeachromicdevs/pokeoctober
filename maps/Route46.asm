	object_const_def ; object_event constants
	const ROUTE46_YOUNGSTER
	const ROUTE46_LASS
	const ROUTE46_FRUIT_TREE1
	const ROUTE46_FRUIT_TREE2
	const ROUTE46_SPORTSMAN
	const ROUTE46_HIKER

Route46_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
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
	
HikerBlockage:
	faceplayer
	checkitem FRESH_WATER
	iftrue .HikerFreshWaterScript
	opentext
	writetext HikerNoFreshWaterText
	waitbutton
	closetext
	end
	
.HikerFreshWaterScript:
	opentext
	writetext HikerFreshWaterText
	takeitem FRESH_WATER
	clearevent EVENT_GAVE_FRESH_WATER
	waitbutton
	closetext
	applymovement ROUTE46_HIKER, .HikerBoing
	disappear ROUTE46_HIKER
	end
	
.HikerBoing:
	step RIGHT
	step RIGHT
	step_end

Route46Sign:
	jumptext Route46SignText

Route46FruitTree1:
	fruittree FRUITTREE_ROUTE_46_1

Route46FruitTree2:
	fruittree FRUITTREE_ROUTE_46_2
	
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
	line "KANSAI!"
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
	line "KANSAI has to"
	cont "offer."
	done

Route46SignText:
	text "ROUTE 46"
	line "MOUNTAIN RD. AHEAD"
	done
	
HikerNoFreshWaterText:
	text "I'm mighty thirsty,"
	line "kid!"
	
	para "If you could bring"
	line "me some FRESH"
	
	para "WATER, I'll be"
	line "really grateful!"
	done
	
HikerFreshWaterText:
	text "Huh? What's that"
	line "you got there?"
	
	para "Some FRESH WATER?"
	line "For me? WOO!"
	
	para "My legs don't just"
	line "feel better, they"
	
	para "feel decades"
	line "younger! Bless"
	
	para "this amazing MT."
	line "SILVER water, and"
	
	para "bless you for"
	line "bringing this to"
	cont "me!"
	
	para "So long, kiddo!"
	done

Route46_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  7, 33, ROUTE_29_ROUTE_46_GATE, 1
	warp_event  8, 33, ROUTE_29_ROUTE_46_GATE, 2
	warp_event  4,  7, DARK_CAVE_VIOLET_ENTRANCE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 10, 30, BGEVENT_READ, Route46Sign

	db 7 ; object events
	object_event 11, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerYoungsterBenny, -1
	object_event  9, 15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46FruitTree1, -1
	object_event 16,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route46FruitTree2, -1
	object_event  6, 28, SPRITE_SPORTSMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerSportsmanJayden, -1
	object_event  4, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassYuri, -1
	object_event  4, 12, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperCraig, -1
	object_event  4,  8, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, HikerBlockage, EVENT_GAVE_FRESH_WATER

