	object_const_def ; object_event constants
	const VIOLETCITY_SAGE
	const VIOLETCIITY_OFFICER


VioletCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

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
	text "I'm afraid I can-"
	line "not let you in."
	
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
	text "Uh<...>let's<...>not tell"
	line "anyone about this."
	done 

VioletCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 21, 31, VIOLET_MART, 2
	warp_event 34, 31, VIOLET_GYM, 1
	warp_event 37, 26, ROUTE_31_VIOLET_GATE, 1
	warp_event 37, 27, ROUTE_31_VIOLET_GATE, 2
	warp_event  3, 25, SPROUT_TOWER_1F, 1
	warp_event 17, 31, VIOLET_POKECENTER_1F, 1
	warp_event  7,  1, ZEN_GARDEN_GATE, 3
	warp_event 19,  3, VIOLET_HERB_SHOP, 1 

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  34,  32, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletGymSageBlock, -1
	object_event   4,  27, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerOfficerSamson, -1
