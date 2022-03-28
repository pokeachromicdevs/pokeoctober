	object_const_def ; object_event constants
	const ROUTE31VIOLETGATE_OFFICER
	const ROUTE31VIOLETGATE_COOLTRAINER_F

Route31VioletGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route31VioletGateOfficerScript:
	jumptextfaceplayer Route31VioletGateOfficerText

Route31VioletGateCooltrainerFScript:
	jumptextfaceplayer Route31VioletGateCooltrainerFText
	
TrainerOfficerMatt:
	trainer OFFICER, MATT, EVENT_BEAT_OFFICER_MATT, OfficerMattSeenText, OfficerMattBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OfficerMattAfterText
	waitbutton
	closetext
	end

Route31VioletGateOfficerText:
	text "Sheesh. I've been"
	line "bombarded with"
	cont "question after"
	
	para "question just be-"
	line "cause three"
	cont "weirdos walked" 
	
	para "through here"
	line "earlier. I just"
	cont "want to go home" 
	
	para "already…"
	done

Route31VioletGateCooltrainerFText:
	text "SPROUT TOWER sure"
	line "is one tall build-"
	cont "ing. It has nine"
	
	para "floors and looms"
	line "over the rest of"
	cont "the city!"
	done
	
OfficerMattSeenText:
	text "A criminal always"
	line "returns to the"
	cont "scene of the"
	
	para "crime! Which"
	line "means…you must be"
	cont "one of those"
	
	para "ROCKETS that came"
	line "by here!"
	done
	
OfficerMattBeatenText:
	text "Or…not."
	done
	
OfficerMattAfterText:
	text "Three ROCKETS were"
	line "spotted around"
	cont "here earlier,"
	
	para "passing through"
	line "here and heading"
	cont "into VIOLET CITY."
	
	para "You better keep an"
	line "eye out."
	done

Route31VioletGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, VIOLET_CITY, 3
	warp_event  0,  5, VIOLET_CITY, 4
	warp_event  9,  4, ROUTE_31, 2
	warp_event  9,  5, ROUTE_31, 3

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route31VioletGateOfficerScript, -1
	object_event  1,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route31VioletGateCooltrainerFScript, -1
	object_event  8,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerOfficerMatt, -1
