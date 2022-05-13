	object_const_def ; object_event constants
	const ALDERPOKECENTER1F_NURSE

AlderPokecenter1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene

	db 0 ; callbacks

.DummyScene:
	end

AlderPokecenter1FNurseScript:
	jumpstd pokecenternurse

AlderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, ALDER_TOWN, 1
	warp_event  6,  7, ALDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FNurseScript, -1
