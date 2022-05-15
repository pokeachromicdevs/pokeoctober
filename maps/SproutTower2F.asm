	object_const_def ; object_event constants
	const SPROUTTOWER_SAGE1
	const SPROUTTOWER_SAGE2
	const SPROUTTOWER_BLACKBELT

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
	
	para "a way to achive"
	line "immortality."
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

	db 1 ; object events
	object_event 1, 5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSageNico, -1

