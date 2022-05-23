	object_const_def
	const SPROUT_TOWER5F_YOUNGSTER
	const SPROUT_TOWER5F_ROCKCLIMBER
	const SPROUT_TOWER5F_INSTRUCTOR
	const SPROUT_TOWER5F_POKE_BALL1
	const SPROUT_TOWER5F_POKE_BALL2

SproutTower5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerYoungsterDan:
	trainer YOUNGSTER, DAN, EVENT_BEAT_YOUNGSTER_DAN, YoungsterDanSeenText, YoungsterDanBeatenText, 0, .AfterScript
	
.AfterScript:
	endifjustbattled
	opentext
	writetext YoungsterDanAfterBattleText
	waitbutton
	closetext
	end

TrainerRockClimberLoid:
	trainer ROCKCLIMBER, LOID, EVENT_BEAT_ROCKCLIMBER_LOID, RockClimberLoidSeenText, RockClimberLoidBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext RockClimberLoidAfterBattleText
	waitbutton
	closetext
	end
	
TrainerInstructorCurtis:
	trainer INSTRUCTOR, CURTIS, EVENT_BEAT_INSTRUCTOR_CURTIS, InstructorCurtisSeenText, InstructorCurtisBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext InstructorCurtisAfterBattleText
	waitbutton
	closetext
	end
	
SproutTowerF5EscapeRope:
	itemball ESCAPE_ROPE
	
SproutTowerF5PokeBall:
	itemball POKE_BALL
	
YoungsterDanSeenText:
	text "That large beam in"
	line "the middle was"
	
	para "once a BELLIGNAN!"
	done
	
YoungsterDanBeatenText:
	text "I feel so tiny<...>"
	done 
	
YoungsterDanAfterBattleText:
	text "My HOOTHOOT keeps"
	line "bobbing its head"
	
	para "to the sways of"
	line "the beam."
	done 
	
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
	
RockClimberLoidAfterBattleText:
	text "Towers are basi-"
	line "cally just manmade"
	
	para "mountains in my"
	line "eyes."
	done 
	
InstructorCurtisSeenText:
	text "I remember my"
	line "first visit to"
	
	para "this glorious" 
	line "place<...>"
	done 
	
InstructorCurtisBeatenText:
	text "So many years ago<...>"
	done 
	
InstructorCurtisAfterBattleText:
	text "I've aged a bit"
	line "since then."
	
	para "But this TOWER"
	line "hasn't aged a"
	cont "day, it seems."
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

	db 5 ; object events
	object_event 14, 8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerYoungsterDan, -1
	object_event 1, 15, SPRITE_ROCKCLIMBER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRockClimberLoid, EVENT_BEAT_ROUTE33_KAREN
	object_event 16, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerInstructorCurtis, -1
	object_event 14, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF5EscapeRope, EVENT_SPROUT_TOWERF5_ESCAPE_ROPE
	object_event 11, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF5PokeBall, EVENT_SPROUT_TOWERF5_POKE_BALL

