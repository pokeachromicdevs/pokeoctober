	object_const_def ; object_event constants
	const ALDERMART_CLERK

AlderMart_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AlderMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_ALDER
	closetext
	end

AlderMart_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ALDER_TOWN, 3
	warp_event  3,  7, ALDER_TOWN, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderMartClerkScript, -1
