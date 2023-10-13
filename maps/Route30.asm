	object_const_def ; object_event constants
	const ROUTE30_SOLDIER
	const ROUTE30_FISHER
	const ROUTE30_YOUNGSTER
	const ROUTE30_FRUIT_TREE
	const ROUTE30_LASS1
	const ROUTE30_LASS2
	const ROUTE30_POKE_BALL

Route30_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerSoldierDwight:
	trainer SOLDIER, DWIGHT, EVENT_BEAT_SOLDIER_DWIGHT, SoldierDwightSeenText, SoldierDwightBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SoldierDwightAfterText
	waitbutton
	closetext
	end
	
TrainerFisherBilly:
	trainer FISHER, FISHER_BILLY, EVENT_BEAT_FISHER_BILLY, FisherBillySeenText, FisherBillyBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext FisherBillyAfterText
	waitbutton
	closetext
	end
	
Route30YoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .CompletedEggQuest
	writetext Route30YoungsterText_DirectionsToMrPokemonsHouse
	waitbutton
	closetext
	end

.CompletedEggQuest:
	writetext Route30YoungsterText_EveryoneIsBattling
	waitbutton
	closetext
	end

Route30CooltrainerFScript:
	jumptextfaceplayer Route30CooltrainerFText

Route30Sign:
	jumptext Route30SignText

MrPokemonsHouseDirectionsSign:
	jumptext MrPokemonsHouseDirectionsSignText

R30_NothingScript:
	end

MrPokemonsHouseSign:
	jumptext MrPokemonsHouseSignText

Route30TrainerTips:
	jumptext Route30TrainerTipsText

Route30Antidote:
	itemball ANTIDOTE

Route30FruitTree2:
	fruittree FRUITTREE_ROUTE_30_2

Route30HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_30_HIDDEN_POTION

Route30_JoeysRattataAttacksMovement:
	fix_facing
	big_step UP
	big_step DOWN
	step_end

Route30_MikeysRattataAttacksMovement:
	fix_facing
	big_step DOWN
	big_step UP
	step_end

SoldierDwightSeenText:
	text "Don't think you"
	line "can just wander"
	cont "past me!"
	done
	
SoldierDwightBeatenText:
	text "Curses! I've failed"
	line "my duties!"
	done
	
SoldierDwightAfterText:
	text "Alright, I'll let"
	line "you sneak by."

	para "Now shoo, get out"
	line "of my face!"
	done
	
FisherBillySeenText:
	text "Oi! Buzz off, you"
	line "little brat!"
	done
	
FisherBillyBeatenText:
	text "I told you to buzz"
	line "off!"
	done
	
FisherBillyAfterText:
	text "Alright, you won."
	line "Now leave."

	para "I got better"
	line "things to do than"
	para "to entertain"
	line "twerps like you."
	done
	
Route30YoungsterText_DirectionsToMrPokemonsHouse:
	text "MR. #MON's house"
	line "is right up ahead."
	para "You can't miss it!"
	done

Route30YoungsterText_EveryoneIsBattling:
	text "Everyone's having"
	line "fun battling!"
	cont "You should too!"
	done

Route30CooltrainerFText:
	text "I'm not a trainer."

	para "But if you look"
	line "one in the eyes,"
	cont "prepare to battle."
	done

Route30SignText:
	text "ROUTE 30"

	para "VIOLET CITY -"
	line "CHERRYGROVE CITY"
	done

MrPokemonsHouseDirectionsSignText:
	text "MR.#MON'S HOUSE"
	line "STRAIGHT AHEAD!"
	done

MrPokemonsHouseSignText:
	text "MR.#MON'S HOUSE"
	done

Route30TrainerTipsText:
	text "TRAINER TIPS"

	para "No stealing other"
	line "people's #MON!"

	para "# BALLS are to"
	line "be thrown only at"
	cont "wild #MON!"
	done

Route30_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 3 ; bg events
	bg_event 11, 23, BGEVENT_READ, Route30Sign
	bg_event 13,  5, BGEVENT_READ, Route30TrainerTips
	bg_event  6, 16, BGEVENT_ITEM, Route30HiddenPotion

	db 6 ; object events
	object_event  8, 22, SPRITE_SOLDIER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSoldierDwight, -1
	object_event  8,  19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerFisherBilly, -1
	object_event  6,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route30YoungsterScript, -1
	object_event 12,  15, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30FruitTree2, -1
	object_event 12, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route30CooltrainerFScript, -1
	object_event  5, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route30Antidote, EVENT_ROUTE_30_ANTIDOTE
