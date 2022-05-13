VioletCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_VIOLET_CITY_HIDDEN_HYPER_POTION

VioletCityPokecenterSign:
	jumpstd pokecentersign

VioletCityMartSign:
	jumpstd martsign

SproutTowerSign:
	jumptext .Text
.Text:
	text "SPROUT TOWER"

	para "Experience the"
	line "Way of #MON"
	done

VioletCitySign:
	jumptext .Text
.Text:
	text "VIOLET CITY"

	para "The City of"
	line "Nostalgic Scents"
	done

VioletGymSign:
	jumptext .Text
.Text:
	text "VIOLET CITY"
	line "#MON GYM"
	cont "LEADER: WHITNEY"

	para "The Incredibly"
	line "Pretty Girl!"
	done

VioletCity_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event 21, 31, VIOLET_MART, 2
	warp_event 34, 31, VIOLET_GYM, 1
	warp_event 37, 26, ROUTE_31_VIOLET_GATE, 1
	warp_event 37, 27, ROUTE_31_VIOLET_GATE, 2
	warp_event  3, 25, SPROUT_TOWER_1F, 1
	warp_event 17, 31, VIOLET_POKECENTER_1F, 1
	warp_event  7,  1, ZEN_GARDEN_GATE, 3
	warp_event 19, 15, VIOLET_HERB_SHOP, 1 

	db 0 ; coord events

	db 6 ; bg events
	bg_event 24, 20, BGEVENT_READ, VioletCitySign
	bg_event 35, 31, BGEVENT_READ, VioletGymSign
	bg_event  7, 33, BGEVENT_READ, SproutTowerSign
	bg_event 18, 31, BGEVENT_READ, VioletCityPokecenterSign
	bg_event 22, 31, BGEVENT_READ, VioletCityMartSign
	bg_event 33, 18, BGEVENT_ITEM, VioletCityHiddenHyperPotion

	db 0 ; object events
