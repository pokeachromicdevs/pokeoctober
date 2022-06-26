VioletHerbShop_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
VioletHerbShopCooltrainer: ; told you this was the weed shop
	jumptextfaceplayer .Text
.Text:
	text "I tried some of"
	line "the herbs once."
	para "Hoo boy<...> the"
	line "aftermath from"
	cont "that was<...>"
	para "Wait, I probably"
	line "shouldn't tell you"
	cont "more."
	para "It's<...> an extremely"
	line "unpleasant story."
	done

VioletHerbShopFledgling:
	jumptextfaceplayer .Text
.Text:
	text "Bleh! Herbs!"
	line "They're so gross!"
	para "Who let such nasty"
	line "things exist?!"
	done

VioletHerbShopGramps:
	jumptextfaceplayer .Text
.Text:
	text "Hoho! The herbs"
	line "here are quite"
	cont "potent!"
	para "But #MON des-"
	line "pise the taste, to"
	para "the point where"
	line "they'll like you"
	para "less for feeding"
	line "them the herbs."
	para "Hoho<...>"
	done

VioletHerbShopClerk:
	opentext
	pokemart MARTTYPE_BITTER, MART_UNDERGROUND
	closetext
	end

VioletHerbShop_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9,  9, VIOLET_CITY, 8
	warp_event 10,  9, VIOLET_CITY, 8
	warp_event  5,  7, VIOLET_HERB_SHOP_BASEMENT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletHerbShopCooltrainer, -1
	object_event 10,  3, SPRITE_FLEDGLING, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletHerbShopFledgling, -1
	object_event  8,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletHerbShopGramps, -1
	object_event 13,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletHerbShopClerk, -1
	
