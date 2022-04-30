	object_const_def ; object_event constants
	const CHERRYGROVEWOODS_YOUNGSTER

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
	text "NAME RATER"

	para "Get Your #MON"
	line "Nicknames Rated"
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
	warp_event 19,  7, GOLDENROD_NAME_RATER, 1
	
	db 0 ; coord events
 
	db 1 ; bg events
	bg_event 17,  7, BGEVENT_READ, CherrygroveWoodsNameRaterSign

	db 1 ; object events
	object_event 10, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherLenny, -1
