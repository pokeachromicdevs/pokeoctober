	object_const_def
	const SPROUT_TOWER_7F_POKE_BALL1
	const SPROUT_TOWER_7F_MYSTIC
	const SPROUT_TOWER_7F_LASS

SproutTower7F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SproutTowerF7EscapeRope:
	itemball ESCAPE_ROPE
	
TrainerMysticStella:
	trainer MYSTIC, STELLA, EVENT_BEAT_MYSTIC_STELLA, MysticStellaSeenText, MysticStellaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext MysticStellaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLassAnnie:
	trainer LASS, ANNIE, EVENT_BEAT_LASS_ANNIE, LassAnnieSeenText, LassAnnieBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LassAnnieAfterBattleText
	waitbutton
	closetext
	end
	
MysticStellaSeenText:
	text "The TOWER!"
	
	para "It's going to fall"
	line "any minute now!"
	done
	
MysticStellaBeatenText:
	text "Ack! I've fallen"
	line "down!"
	done
	
MysticStellaAfterBattleText:
	text "It appears my"
	line "visions were<...>"
	
	para "slightly inaccu-" 
	line "rate. Hehe<...>"
	done
	
LassAnnieSeenText:
	text "Teehee! I sneaked"
	line "away from my" 
	cont "class!"
	
	para "They're still down-"
	line "stairs!"
	done 
	
LassAnnieBeatenText:
	text "Teehee!"
	done 
	
LassAnnieAfterBattleText:
	text "I'm going to be-"
	line "come a ninja when"
	cont "I get older!"

SproutTower7F_MapEvents:
	db 0, 0 ; filler

	db 9 ; warp events
	warp_event  1, 11, SPROUT_TOWER_6F, 5
	warp_event 13,  3, SPROUT_TOWER_6F, 6
	warp_event 19,  7, SPROUT_TOWER_6F, 7
	warp_event 19, 13, SPROUT_TOWER_6F, 8

	warp_event  3,  3, SPROUT_TOWER_8F, 1
	warp_event  7,  3, SPROUT_TOWER_8F, 2
	warp_event  7, 17, SPROUT_TOWER_8F, 3
	warp_event 13, 17, SPROUT_TOWER_8F, 4
	warp_event 19,  3, SPROUT_TOWER_8F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 17, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF7EscapeRope, EVENT_SPROUT_TOWERF7_ESCAPE_ROPE
	object_event 15, 5, SPRITE_MYSTIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerMysticStella, -1
	object_event  2, 6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassAnnie, -1
