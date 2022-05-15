	object_const_def ; object_event constants
	const DREADWOODS_MANCHILD
	const DREADWOODS_BEAUTY
	const DREADWOODS_OFFICER1
	const DREADWOODS_SAILOR
	const DREADWOODS_OFFICER2

DreadWoods_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerManchildMiguel:
	trainer MANCHILD, MIGUEL, EVENT_BEAT_MANCHILD_MIGUEL, ManchildMiguelSeenText, ManchildMiguelBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ManchildMiguelAfterBattleText
	waitbutton
	closetext
	end
	
ManchildMiguelSeenText:
	text "I'm scared, but my"
	line "mom told me to"
	
	para "stop callig her"
	line "and grow up<...>"
	
	para "I haven't moved"
	line "from this spot"
	cont "since."
	
	para "Could you hold"
	line "my hand?"
	done
	
ManchildMiguelBeatenText:
	text "Oh no, my only"
	line "friends!"
	done
	
ManchildMiguelAfterBattleText:
	text "I went into the"
	line "woods hoping to"
	
	para "end up in one of"
	line "the fantasy worlds"
	
	para "I always dream of,"
	line "only to experience"
	
	para "horror and fright"
	line "beyond even my"
	
	para "late night horror"
	line "marathons<...>"
	done 

DreadWoods_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 29,  2, ROUTE_32, 1
	warp_event 29,  3, ROUTE_32, 2
	warp_event 29, 36, ROUTE_32, 3
	warp_event 29, 37, ROUTE_32, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  22,  7, SPRITE_MANCHILD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerManchildMiguel, -1

