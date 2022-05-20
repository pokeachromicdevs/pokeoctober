	object_const_def
	const SPROUT_TOWER5F_ROCKCLIMBER

SproutTower5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerRockClimberLoid:
	trainer ROCKCLIMBER, LOID, EVENT_BEAT_ROCKCLIMBER_LOID, RockClimberLoidSeenText, RockClimberLoidBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext RockClimberAfterBattleText
	waitbutton
	closetext
	end
	
RockClimberLoidSeenText:
	text "What?"
	
	para "Never heard of"
	line "a ROCKCLIMBER"
	
	para "climbing a"
	line "tower before?"
	done 
	
RockClimberLoidBeatenText:
	text "Haha!"
	done 
	
RockClimberAfterBattleText:
	text "Towers are basically"
	line "just manmade moun-"
	
	para "tains in my eyes."
	done 
	
SproutTower5F_MapEvents:
	db 0, 0 ; filler

	db 11 ; warp events
	warp_event  1,  3, SPROUT_TOWER_4F, 5
	warp_event  1,  7, SPROUT_TOWER_4F, 6
	warp_event  1, 17, SPROUT_TOWER_4F, 7
	warp_event  5,  7, SPROUT_TOWER_4F, 8
	warp_event 15,  5, SPROUT_TOWER_4F, 9
	warp_event 19,  9, SPROUT_TOWER_4F, 10
	warp_event 19, 13, SPROUT_TOWER_4F, 11

	warp_event  7,  3, SPROUT_TOWER_6F, 1
	warp_event  5, 17, SPROUT_TOWER_6F, 2
	warp_event 19,  3, SPROUT_TOWER_6F, 3
	warp_event 19, 17, SPROUT_TOWER_6F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  1, 15, SPRITE_ROCKCLIMBER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerRockClimberLoid, -1

