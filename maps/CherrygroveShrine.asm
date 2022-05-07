	object_const_def
	const SAKURASHRINE_MEDIUM
	const SAKURASHRINE_SAGE
	const SAKURASHRINE_GRAMPS

CherrygroveShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SakuraShrineMediumScript:
	jumptextfaceplayer SakuraShrineMediumText
	
SakuraShrineMediumText:
	text "Ah, it's not every-"
	line "day a young one such"
	
	para "as yourself comes to"
	line "to the SAKURA SHRINE."
	
	para "It's reassuring that"
	line "the young ones still"
	
	para "wish to pay respects."
	done


CherrygroveShrine_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 21, 22, CHERRYGROVE_SHRINE_GATE, 3
	warp_event 21, 23, CHERRYGROVE_SHRINE_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  15,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SakuraShrineMediumScript, -1

