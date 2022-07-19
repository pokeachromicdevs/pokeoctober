CherrygrovePagoda4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
CherrygrovePagoda4F_PokemonStatue:
	sjump CherrygovePagoda_Common_FadedInscriptionScript

CherrygrovePagoda4FMartScript:
	opentext
	pokemart MARTTYPE_PAGODA_TM, MART_PAGODA_4F
	closetext
	end

CherrygrovePagoda4FSageScript:
	jumptextfaceplayer .Txt

.Txt:
	text "Are you here to"
	line "pay respects?"
	para "The fifth floor is"
	line "still reserved for"
	cont "it, if you are."
	done

CherrygrovePagoda4F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CHERRYGROVE_PAGODA_3F, 1
	warp_event  7,  7, CHERRYGROVE_PAGODA_5F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4,  1, BGEVENT_READ, CherrygrovePagoda4F_PokemonStatue

	db 2 ; object events
	object_event  0,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePagoda4FMartScript, -1
	object_event  7,  2, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePagoda4FSageScript, -1
