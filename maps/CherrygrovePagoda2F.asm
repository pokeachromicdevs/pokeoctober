CherrygrovePagoda2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
CherrygrovePagoda2F_PokemonStatue:
	sjump CherrygovePagoda_Common_FadedInscriptionScript

CherrygrovePagoda2FMartScript:
	opentext
	pokemart MARTTYPE_PAGODA, MART_PAGODA_2F
	closetext
	end

CherrygrovePagoda2FFarmerScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I'll be honest,"
	line "this place wasn't"
	para "what I was expec-"
	line "ting to supply our"
	para "farm fresh BERRIES"
	line "and APRICORNS to."
	para "But it was hard"
	line "work regardless,"
	para "and worth the"
	line "effort!"
	done

CherrygrovePagoda2F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  0,  1, CHERRYGROVE_PAGODA_1F, 3
	warp_event  7,  7, CHERRYGROVE_PAGODA_3F, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4,  1, BGEVENT_READ, CherrygrovePagoda2F_PokemonStatue

	db 2 ; object events
	object_event  0,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePagoda2FMartScript, -1
	object_event  6,  3, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePagoda2FFarmerScript, -1
