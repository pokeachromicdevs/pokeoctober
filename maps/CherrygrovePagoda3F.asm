CherrygrovePagoda3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
CherrygrovePagoda3F_PokemonStatue:
	sjump CherrygovePagoda_Common_FadedInscriptionScript

CherrygrovePagoda3FMartScript:
	opentext
	pokemart MARTTYPE_PAGODA, MART_PAGODA_3F
	closetext
	end

CherrygrovePagoda3F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CHERRYGROVE_PAGODA_4F, 1
	warp_event  7,  7, CHERRYGROVE_PAGODA_2F, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4,  1, BGEVENT_READ, CherrygrovePagoda3F_PokemonStatue

	db 1 ; object events
	object_event  7,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePagoda3FMartScript, -1
