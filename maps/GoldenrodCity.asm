	object_const_def ; object_event constants

GoldenrodCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Marigold_Gentleman:
  jumptextfaceplayer .Txt
.Txt:
       ;xxxxxxxxxxxxxxxxxx
  text "I saw a man walk"
  line "nearby with a"
  para "mysterious black"
  line "coat..."
  para "But wait, he"
  line "couldn't be"
  cont "GIOVANNI, right?"
  done
  


GoldenrodCity_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 19,  33, GOLDENROD_R34_GATE, 1
	warp_event 20,  33, GOLDENROD_R34_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
  object_event  17,  30, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Marigold_Gentleman, -1
