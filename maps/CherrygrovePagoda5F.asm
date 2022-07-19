CherrygrovePagoda5F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
CherrygrovePagoda5F_PokemonStatue:
	jumptext .Txt

.Txt:
	text "All #MON have"
	line "their strengths"
	cont "and weaknesses."
	para "We must honor"
	line "every #MON, for"
	para "each of them has"
	line "enriched our"
	cont "world."
	done

CherrygrovePagoda5F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5,  5, CHERRYGROVE_PAGODA_4F, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event  4,  1, BGEVENT_READ, CherrygrovePagoda5F_PokemonStatue

	db 0 ; object events
