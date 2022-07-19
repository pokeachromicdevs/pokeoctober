CherrygrovePagoda1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
CherrygrovePagoda1FSageScript:
	jumptext .Txt
.Txt:
	text "Greetings,"
	line "traveller."

	para "Welcome to"
	line "the CHERRYGROVE"
	cont "PAGODA."

	para "This tower stood"
	line "here for time un-"
	para "told, and as such"
	line "you may find very"
	para "interesting things"
	line "here."

	para "Feel free to have"
	line "a look around."
	done

CherrygovePagoda_Common_FadedInscriptionScript::
	jumptext .Txt

.Txt:
	text "<...>The inscription"
	line "here seems to have"
	cont "faded away<...>"
	done

CherrygrovePagoda1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CHERRYGROVE_CITY, 11
	warp_event  4,  7, CHERRYGROVE_CITY, 11
	warp_event  0,  1, CHERRYGROVE_PAGODA_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  7,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePagoda1FSageScript, -1
