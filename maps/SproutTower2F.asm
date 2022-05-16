	object_const_def ; object_event constants
	const SPROUTTOWER_SAGE1
	const SPROUTTOWER_SAGE2
	const SPROUTTOWER_BLACKBELT
	const SPROUTTOWER_POKE_BALL1
	const SPROUTTOWER_POKE_BALL2

SproutTower2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSageNico:
	trainer SAGE, NICO, EVENT_BEAT_SAGE_NICO, SageNicoSeenText, SageNicoBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageNicoAfterBattleText
	waitbutton
	closetext
	end
	
TrainerSageChow:
	trainer SAGE, CHOW, EVENT_BEAT_SAGE_CHOW, SageChowSeenText, SageChowBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SageChowAfterBattleText
	waitbutton
	closetext
	end
	
TrainerBlackbeltGenki:
	trainer BLACKBELT_T, GENKI, EVENT_BEAT_BLACKBELT_GENKI, BlackbeltGenkiSeenText, BlackbeltGenkiBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BlackbeltGenkiAfterBattleText
	waitbutton
	closetext
	end
	
SproutTowerXDefense:
	itemball X_DEFEND
	
SageNicoSeenText:
	text "This tower has"
	line "outlived many,"
	
	para "and will most"
	line "likely outlive" 
	cont "us."
	done
	
SageNicoBeatenText:
	text "A loss is a"
	line "loss."
	done

SageNicoAfterBattleText:
	text "Hopefully, one"
	line "day, we can find"
	
	para "a way to achieve"
	line "immortality."
	done 
	
SageChowSeenText:
	text "Hmm<...>it appears we"
	line "we have another"
		
	para "lone child climb-"
	line "ing the TOWER"
	cont "today."
	done 
	
SageChowBeatenText:
	text "My second defeat"
	line "today<...>"
	done 
	
SageChowAfterBattleText:
	text "I hope there won't"
	line "be too many more"
	
	para "visitors today."
	
	para "This place is"
	line "already getting"
	cont "crowded<...>"
	done 
	
BlackbeltGenkiSeenText:
	text "RAAH! I'm angrier"
	line "er than my MANKEY!"
	done

BlackbeltGenkiBeatenText:
	text "Even my MANKEY"
	line "is scared of my"
	cont "rage!"
	done 
	
BlackbeltGenkiAfterBattleText:
	text "My MANKEY drags"
	line "me to therapy a"
	cont "lot."
	done 
	
SproutTower2F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  7,  3, SPROUT_TOWER_1F, 3
	warp_event 15, 15, SPROUT_TOWER_1F, 4
	warp_event  9, 17, SPROUT_TOWER_3F, 1
	warp_event 15,  7, SPROUT_TOWER_3F, 2
	warp_event 19, 17, SPROUT_TOWER_3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 1,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSageNico, -1
	object_event 12, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageChow, -1
	object_event 13, 6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltGenki, -1
	object_event 13,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerXDefense, EVENT_SPROUT_TOWER_X_DEFENSE

