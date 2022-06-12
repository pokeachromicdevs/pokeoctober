AlderTown_MapScripts:
	db 2 ; scene scripts
	scene_script .EmptyScene ; SCENE_ALDER_TOWN_NOTHING
	scene_script .EmptyScene ; SCENE_ALDER_TOWN_GYM_UNLOCKED

	db 0 ; callbacks

.EmptyScene:
	end

AlderTownHappinessRaterSign:
	jumptext .SignContents
.SignContents:
	text "HAPPINESS RATER"

	para "Find Out How Happy"
	line "Your #MON"
	cont "Really Are"
	done

AlderTownSign:
	jumptext .SignContents
.SignContents:
	text "ALDER TOWN"

	para "The Quiet Town of"
	line "Aging Grace"
	done

AlderTown_GymLocked:
	turnobject PLAYER, UP
	opentext
	writetext .Text
	waitbutton
	closetext
	applymovement PLAYER, .MoveAway
	end

.Text:
	text "The door seems to"
	line "be locked<...>"
	done

.MoveAway:
	step DOWN
	step_end

AlderTownOutsideGymGuyScript:
	jumptextfaceplayer .Text

.Text:
	text "Sorry, CHAMP in"
	line "the making!"
	para "BUGSY's not here"
	line "at the moment."
	para "He's over at MT."
	line "HIVE, catching"
	para "some bugs as"
	line "usual."
	para "You can go look"
	line "for him yourself,"
	cont "though!"
	done

AlderTown_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event  3,  5, ALDER_POKECENTER_1F, 1
	warp_event 15,  3, ALDER_HAPPINESS_RATER, 1
	warp_event 11,  5, ALDER_MART, 1
	warp_event  4, 11, ALDER_GYM, 1
	warp_event  0,  6, ROUTE_33_EAST_GATE, 3
	warp_event  0,  7, ROUTE_33_EAST_GATE, 4

	db 1 ; coord events
	coord_event  4, 12, SCENE_ALDER_TOWN_NOTHING, AlderTown_GymLocked

	db 2 ; bg events
	bg_event 14,  4, BGEVENT_READ, AlderTownHappinessRaterSign
	bg_event 10,  8, BGEVENT_READ, AlderTownSign

	db 1 ; object events
	object_event  5, 12, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AlderTownOutsideGymGuyScript, EVENT_BEAT_ROUTE33_KAREN
