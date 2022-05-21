	object_const_def
	const SPROUT_TOWER6F_POKE_BALL1
	const SPROUT_TOWER6F_POKE_BALL2
	const SPROUT_TOWER6F_BLACKBELT1
	const SPROUT_TOWER6F_BLACKBELT2

SproutTower6F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SproutTowerF6Potion:
	itemball POTION
	
SproutTowerF6Ether:
	itemball ETHER
	
TrainerBlackbeltHitoshi:
	trainer BLACKBELT_T, HITOSHI, EVENT_BEAT_BLACKBELT_HITOSHI, BlackbeltHitoshiSeenText, BlackbeltHitoshiBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BlackbeltHitoshiAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackbeltLee:
	trainer BLACKBELT_T, LEE, EVENT_BEAT_BLACKBELT_LEE, BlackbeltLeeSeenText, BlackbeltLeeBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BlackbeltLeeAfterBattleText
	waitbutton
	closetext
	end
	
BlackbeltHitoshiSeenText:
	text "Let's go, TYROGUE!"
	done
	
BlackbeltHitoshiBeatenText:
	text "No! TYROGUE!"
	done 
	
BlackbeltHitoshiAfterBattleText:
	text "TYROGUE is a rare"
	line "#MON I got in"
	cont "CHERRYGROVE."
	
	para "Getting it was"
	line "supposed to be"
	
	para "a challenge, but"
	line "training it up"
	
	para "is the real"
	line "challenge."
	done 
	
BlackbeltLeeSeenText:
	text "No! I am not SAGE"
	line "LI!"
	done 
	
BlackbeltLeeBeatenText:
	text "Stop asking that!"
	done
	
BlackbeltLeeAfterBattleText:
	text "That's it! I'm"
	line "leaving this"
	cont "place!"
	
	para "I can't take these"
	line "people thinking"
	
	para "I'm the elder SAGE"
	line "anymore!"
	done 

SproutTower6F_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  7,  3, SPROUT_TOWER_5F, 8
	warp_event  5, 17, SPROUT_TOWER_5F, 9
	warp_event 19,  3, SPROUT_TOWER_5F, 10
	warp_event 19, 17, SPROUT_TOWER_5F, 11

	warp_event  1, 11, SPROUT_TOWER_7F, 1
	warp_event 13,  3, SPROUT_TOWER_7F, 2
	warp_event 19,  7, SPROUT_TOWER_7F, 3
	warp_event 19, 13, SPROUT_TOWER_7F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 0, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF6Potion, EVENT_SPROUT_TOWERF6_POTION
	object_event 15, 7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF6Ether, EVENT_SPROUT_TOWERF6_ETHER
	object_event 17, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltHitoshi, -1
	object_event 1,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltLee, -1


