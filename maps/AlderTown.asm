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

AlderTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  3,  5, ALDER_POKECENTER_1F, 1
	warp_event 15,  3, ALDER_HAPPINESS_RATER, 1
	warp_event 11,  5, ALDER_MART, 1
	warp_event  4, 11, ALDER_GYM, 1

	db 1 ; coord events
	coord_event  4, 12, SCENE_ALDER_TOWN_NOTHING, AlderTown_GymLocked

	db 2 ; bg events
	bg_event 14,  4, BGEVENT_READ, AlderTownHappinessRaterSign
	bg_event 10,  8, BGEVENT_READ, AlderTownSign

	db 0 ; object events
