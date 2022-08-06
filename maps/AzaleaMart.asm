	object_const_def ; object_event constants
	const AZALEAMART_CLERK

AzaleaMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AzaleaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

AzaleaMart_TwinScript:
	jumptextfaceplayer .Text
.Text:
	text "FLOWER MAIL is so"
	line "pretty!"
	para "Orange is even my"
	line "favorite color!"
	done

AzaleaMart_BlackbeltScript:
	jumptextfaceplayer .Text
.Text:
	text "CHARCOAL slightly"
	line "increases the"
	para "power of fire-type"
	line "moves."
	para "My FARFETCH'D"
	line "helps me find"
	para "twigs to use in"
	line "order to make it."
	done

AzaleaMart_GrannyScript:
	jumptextfaceplayer .Text
.Text:
	text "SUPER POTION is"
	line "slightly stronger"
	cont "than POTION."
	para "While a POTION"
	line "heals 20 HP, a"
	para "SUPER POTION heals"
	line "50 HP."
	para "However, they are"
	line "more expensive so"
	cont "choose wisely."
	done

AzaleaMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, AZALEA_TOWN, 3
	warp_event  3,  7, AZALEA_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMartClerkScript, -1
	object_event 11,  3, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMart_TwinScript, -1
	object_event  7,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMart_BlackbeltScript, -1
	object_event  4,  1, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMart_GrannyScript, -1
