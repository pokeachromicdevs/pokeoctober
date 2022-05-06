spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn VIRIDIAN_POKECENTER_1F,      5,  3

; kanto
	spawn PALLET_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,              23, 26
	spawn PEWTER_CITY,                13, 26
	spawn CERULEAN_CITY,              19, 22
	spawn ROUTE_10_NORTH,             11,  2
	spawn VERMILION_CITY,              9,  6
	spawn LAVENDER_TOWN,               5,  6
	spawn SAFFRON_CITY,                9, 30
	spawn CELADON_CITY,               29, 10
	spawn FUCHSIA_CITY,               33, 28
	spawn CINNABAR_ISLAND,            11, 12
	spawn ROUTE_23,                    9,  6

; johto
	spawn NEW_BARK_TOWN,               5,  6
	spawn CHERRYGROVE_CITY,           29, 22
	spawn VIOLET_CITY,                17, 32
	spawn ROUTE_32,                   11, 74
	spawn AZALEA_TOWN,                11, 6
	spawn CIANWOOD_CITY,              23, 44
	spawn GOLDENROD_CITY,             15, 24
	spawn OLIVINE_CITY,               21, 16
	spawn ECRUTEAK_CITY,              23, 28
	spawn MAHOGANY_TOWN,               7,  8
	spawn LAKE_OF_RAGE,                5, 12
	spawn BLACKTHORN_CITY,            15, 28
	spawn SILVER_CAVE_OUTSIDE,        23,  8
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2

; kansai
	spawn CHERRYGROVE_WOODS,          29,  2
	spawn CHERRYGROVE_SHRINE,         33, 23
	spawn ALDER_TOWN,                  3,  6

; '92 kanto
	spawn CITRINE_ISLAND,             24, 28
	spawn N_A,                        -1, -1
