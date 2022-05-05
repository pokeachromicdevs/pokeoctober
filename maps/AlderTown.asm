AlderTown_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

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
	done
	; TODO: slogan

AlderTown_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  5, ALDER_POKECENTER_1F, 1
	warp_event 15,  3, GOLDENROD_HAPPINESS_RATER, 1
	warp_event 11,  5, ALDER_MART, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 14,  4, BGEVENT_READ, AlderTownHappinessRaterSign
	bg_event 10,  8, BGEVENT_READ, AlderTownSign

	db 0 ; object events
