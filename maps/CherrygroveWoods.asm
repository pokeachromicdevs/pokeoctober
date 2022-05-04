	object_const_def ; object_event constants
	const CHERRYGROVEWOODS_BUG_CATCHER1
	const CHERRYGROVEWOODS_BUG_CATCHER2

CherrygroveWoods_MapScripts:
	db 0 ; scene scripts
	
	db 0 ; callbacks
	
TrainerBugCatcherLenny:
	trainer BUG_CATCHER, LENNY, EVENT_BEAT_BUG_CATCHER_LENNY, BugCatcherLennySeenText, BugCatcherLennyBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext BugCatcherLennyAfterText
	waitbutton
	closetext
	end
	
TrainerBugCatcherTimothy:
	trainer BUG_CATCHER, BC_TIMOTHY, EVENT_BEAT_BUG_CATCHER_TIMOTHY, BugCatcherTimothySeenText, BugCatcherTimothyBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherTimothyAfterText
	waitbutton
	closetext
	end
	
CherrygroveWoodsNameRaterSign:
	jumptext CherrygroveWoodsNameRaterSignText
	
BugCatcherLennySeenText:
	text "Buzz off! You're"
	line "scaring the bugs"
	cont "away!"
	done
	
BugCatcherLennyBeatenText:
	text "I said buzz off!"
	done
	
BugCatcherLennyAfterText:
	text "Geez! Now you've"
	line "scared all the"
	cont "bugs into hiding!"
	
	para "Nice job, idiot!"
	done

CherrygroveWoodsNameRaterSignText:
	text "HAPPINESS RATER"

	para "Find Out How Happy"
	line "Your #MON"
	cont "Really Are"
	done
	
BugCatcherTimothySeenText:
	text "Have you seen any"
	line "PINSIR around"
	cont "here?"
	done
	
BugCatcherTimothyBeatenText:
	text "No? Dang…"
	done
	
BugCatcherTimothyAfterText:
	text "Some people said"
	line "there's a weird"
	cont "PINSIR around"
	
	para "here. Its body is"
	line "supposed to be"
	cont "shiny like steel!"
	done 

.DummyScene0:
	end
 
.DummyScene1:
	end

CherrygroveWoods_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 57,  7, CHERRYGROVE_WOODS_GATE, 3
	warp_event 2,   9, CHERRYGROVE_WOODS_EXIT_GATE, 1
	warp_event 29,  1, ROUTE_29_ROUTE_46_GATE, 3
	warp_event 19,  7, GOLDENROD_HAPPINESS_RATER, 1
	
	db 0 ; coord events
 
	db 1 ; bg events
	bg_event 17,  7, BGEVENT_READ, CherrygroveWoodsNameRaterSign

	db 2 ; object events
	object_event 10, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherLenny, -1
	object_event  42, 8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherTimothy, -1
