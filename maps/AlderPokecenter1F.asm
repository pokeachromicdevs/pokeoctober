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

AlderPokecenter1FGameBoyGuyScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I heard that"
	line "trainers across"
	para "the pond are able"
	line "to connect with"
	para "one another around"
	line "the world with"
	para "their GAME BOY"
	line "COLOR."
	para "Unfortunately, we"
	line "don't have that"
	para "sort of tech-"
	line "nology here."
	para "Sigh<...> if only"
	line "things were more"
	cont "advanced."
	done

AlderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, ALDER_TOWN, 1
	warp_event  6,  7, ALDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FNurseScript, -1
	object_event  9,  5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_KURT_IN_ALDER_POKEMON_CENTER
	object_event 10,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FGameBoyGuyScript, -1
