	object_const_def ; object_event constants
	const SILENTPOKECENTER1F_NURSE

SilentPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilentPokecenterNurse:
	jumpstd pokecenternurse

SilentPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, NEW_BARK_TOWN, 4
	warp_event  6,  7, NEW_BARK_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentPokecenterNurse, -1

