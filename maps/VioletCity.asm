	object_const_def ; object_event constants
	const VIOLETCITY_SAGE
	const VIOLETCIITY_OFFICER


VioletCity_MapScripts:
	db 1 ; scene scripts
	scene_script .Nothing ; SCENE_VIOLETCITY_NOTHING
	scene_script .Nothing ; SCENE_VIOLETCITY_TALKED_TO_SAGE

	db 0 ; callbacks

.Nothing:
	end

VioletGymSageBlock:
	jumptextfaceplayer VioletGymSageBlockText
	
TrainerOfficerSamson:
	trainer OFFICER, SAMSON, EVENT_BEAT_OFFICER_SAMSON, OfficerSamsonSeenText, OfficerSamsonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OfficerSamsonAfterBattleText
	waitbutton
	closetext
	end
	
VioletGymSageBlockText:
	text "I'm afraid I can't"
	line "let you in."
	
	para "Not until you've"
	line "proven yourself"
	
	para "as innocent at"
	line "SPROUT TOWER."
	done 
	
OfficerSamsonSeenText:
	text "Aha! So you"
	line "ROCKETS are trying"
	
	para "to invade SPROUT"
	line "TOWER, huh?"
	done
	
OfficerSamsonBeatenText:
	text "Oh<...>you're just a"
	line "kid."
	done
	
OfficerSamsonAfterBattleText:
	text "Uh<...> let's<...> not tell"
	line "anyone about this."
	done 

VioletCity_SageStopsYou:
.North:
	disappear VIOLETCITY_SAGE
	moveobject VIOLETCITY_SAGE, 31, 26
	sjump .Common
.South:
	disappear VIOLETCITY_SAGE
	moveobject VIOLETCITY_SAGE, 31, 27
	; sjump .Common
.Common:
	pause 30
	appear VIOLETCITY_SAGE
	applymovement VIOLETCITY_SAGE, .MoveTowardsPlayer
	opentext
	writetext .Text
	waitbutton
	closetext
	applymovement VIOLETCITY_SAGE, .MoveAwayFromPlayer
	disappear VIOLETCITY_SAGE
	moveobject VIOLETCITY_SAGE, 34, 34 ; usual position
	appear VIOLETCITY_SAGE
	setscene SCENE_VIOLETCITY_TALKED_TO_SAGE
	pause 30
	end

.Text:
	text "Hmm<...> we've heard"
	line "there's unusual"
	para "characters roaming"
	line "about here."

	para "More specifically,"
	line "a rather<...> vile"
	para "group I'd rather"
	line "not speak of."

	para "You don't seem like"
	line "you are them, but"
	para "to know for"
	line "certain what lies"
	cont "in your heart,"

	para "I insist that you"
	line "head over to"
	cont "SPROUT TOWER."

	para "Climb the tower,"
	line "battle all who"
	para "challenge you"
	line "there, and"
	para "challenge SAGE LI"
	line "at the top."

	para "He will be able to"
	line "tell what your"
	cont "heart contains."
	done


.MoveTowardsPlayer:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

.MoveAwayFromPlayer:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
VioletCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 21, 31, VIOLET_MART, 2
	warp_event 34, 33, VIOLET_GYM, 1
	warp_event 37, 26, ROUTE_31_VIOLET_GATE, 1
	warp_event 37, 27, ROUTE_31_VIOLET_GATE, 2
	warp_event  3, 25, SPROUT_TOWER_1F, 1
	warp_event 17, 31, VIOLET_POKECENTER_1F, 1
	warp_event  7,  1, ZEN_GARDEN_GATE, 3
	warp_event 19,  3, VIOLET_HERB_SHOP, 1

	db 2 ; coord events
	coord_event 36, 26, SCENE_VIOLETCITY_NOTHING, VioletCity_SageStopsYou.North
	coord_event 36, 27, SCENE_VIOLETCITY_NOTHING, VioletCity_SageStopsYou.South

	db 0 ; bg events

	db 2 ; object events
	object_event 34, 34, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletGymSageBlock, EVENT_BEAT_SAGE_LI
	object_event  8, 22, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerOfficerSamson, -1
