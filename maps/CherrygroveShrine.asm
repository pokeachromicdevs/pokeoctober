	object_const_def
	const SAKURASHRINE_MEDIUM
	const SAKURASHRINE_SAGE
	const SAKURASHRINE_GRAMPS

CherrygroveShrine_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
SakuraShrineMediumScript:
	jumptextfaceplayer SakuraShrineMediumText
	
SakuraShrineSageScript:
	jumptextfaceplayer SakuraShrineSageText
	
SakuraShrineGrampsScript:
	jumptextfaceplayer SakuraShrineGrampText
	
SakuraShrineMediumText:
	text "Ah, it's not every-"
	line "day a young one"
	
	para "such as yourself"
	line "comes to the"
	cont "SAKURA SHRINE."
	
	para "It's reassuring"
	line "that the young"
	
	para "ones still wish"
	line "to pay respects."
	done
	
SakuraShrineSageText:
	text "A strange little"
	line "fish called"
	
	para "SAKURAQUA dwells"
	line "in this pond."
	
	para "Yet I haven't"
	line "gotten the chance"
	
	para "to witness one"
	line "myself…"
	done 
	
SakuraShrineGrampText:
	text "I always make"
	line "sure to bring a"
	
	para "blossom home to"
	line "my wife when the"
	
	para "trees bloom."
	
	para "Thirty years and"
	line "it still makes"
	
	para "her smile like"
	line "the first time I"
	
	para "brought her one!"
	done 
	

CherrygroveShrine_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 21, 22, CHERRYGROVE_SHRINE_GATE, 3
	warp_event 21, 23, CHERRYGROVE_SHRINE_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  15,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SakuraShrineMediumScript, -1
	object_event   8,  9, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SakuraShrineSageScript, -1
	object_event  12,  17, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SakuraShrineGrampsScript, -1

