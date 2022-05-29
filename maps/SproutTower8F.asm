	object_const_def
	const SPROUTTOWER_8F_POKEBALL
	const SPROUTTOWER_8F_OFFICER
	const SPROUTTOWER_8F_SAGE
	
SproutTower8F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SproutTowerF8Potion:
	itemball POTION
	
SproutTowerF8HpUp:
	itemball HP_UP

TrainerOfficerAaron:
	trainer OFFICER, AARON_O, EVENT_BEAT_OFFICER_AARON, OfficerAaronSeenText, OfficerAaronBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext OfficerAaronAfterBattleText
	waitbutton
	closetext
	end
	
OfficerAaronSeenText:
	text "I'm so bored"
	line "of hanging around"
	
	para "here to watch"
	line "for ROCKETS."
	
	para "Wanna fight?"
	done
	
OfficerAaronBeatenText:
	text "And I'm bored"
	line "again<...>"
	done
	
OfficerAaronAfterBattleText:
	text "Well, I suppose"
	line "I shouldn't slack"
	
	para "off anymore. I"
	line "have a job to"
	
	para "do<...>even if it's"
	line "so boring."
	done 

SproutTower8F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  3,  3, SPROUT_TOWER_7F, 5
	warp_event  7,  3, SPROUT_TOWER_7F, 6
	warp_event  7, 17, SPROUT_TOWER_7F, 7
	warp_event 13, 17, SPROUT_TOWER_7F, 8
	warp_event 19,  3, SPROUT_TOWER_7F, 9
	warp_event  5, 13, SPROUT_TOWER_9F, 1
	warp_event 15, 13, SPROUT_TOWER_9F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 10, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF8Potion, EVENT_SPROUT_TOWERF8_POTION
	object_event  3, 8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF8HpUp, EVENT_SPROUT_TOWERF8_HP_UP
	object_event  4, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerOfficerAaron, -1

