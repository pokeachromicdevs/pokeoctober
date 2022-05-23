	object_const_def
	const SPROUT_TOWER_4F_SAGE1
	const SPROUT_TOWER_4F_SAGE2
	const SPROUT_TOWER_4F_POKE_BALL1
	const SPROUT_TOWER_4F_POKE_BALL2
	

SproutTower4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSageEdmond:
	trainer SAGE, EDMOND, EVENT_BEAT_SAGE_EDMOND, SageEdmondSeenText, SageEdmondBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageEdmondAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageJinAfterBattleText
	waitbutton
	closetext
	end

SproutTowerF4Potion:
	itemball POTION
	
SproutTowerF4FullHeal:
	itemball FULL_HEAL
	
SageEdmondSeenText:
	text "Do you think you"
	line "can make it to"
	cont "the top?"
	done 
	
SageEdmondBeatenText:
	text "Hmm<...>I think you"
	line "can."
	done
	
SageEdmondAfterBattleText:
	text "Just believe in"
	line "yourself and your"
	
	para "#MON, and push"
	line "forward." 
	
	para "You can do it."
	done
	
SageJinSeenText:
	text "I've been training"
	line "here for many"
	
	para "years<...>"
	done 
	
SageJinBeatenText:
	text "It's been so long<...>"
	done
	
SageJinAfterBattleText:
	text "So many faces have"
	line "visited SPROUT"
	cont "TOWER over the"
	
	para "years." 
	
	para "Yet<...>only a"
	line "have ever revis-"
	
	para "ited this place."
	done
 	
SproutTower4F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  5, 15, SPROUT_TOWER_3F, 4
	warp_event  7,  3, SPROUT_TOWER_3F, 5
	warp_event 13, 13, SPROUT_TOWER_3F, 6
	warp_event 13, 17, SPROUT_TOWER_3F, 7

	warp_event  1,  3, SPROUT_TOWER_5F, 1
	warp_event  1,  7, SPROUT_TOWER_5F, 2
	warp_event  1, 17, SPROUT_TOWER_5F, 3
	warp_event  5,  7, SPROUT_TOWER_5F, 4
	warp_event 15,  5, SPROUT_TOWER_5F, 5
	warp_event 19,  9, SPROUT_TOWER_5F, 6
	warp_event 19, 13, SPROUT_TOWER_5F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 16, 15, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageEdmond, -1
	object_event 1,  9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSageJin, -1
	object_event 13, 4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF4Potion, EVENT_SPROUT_TOWERF4_POTION
	object_event 7, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF4FullHeal, EVENT_SPROUT_TOWERF4_FULL_HEAL


