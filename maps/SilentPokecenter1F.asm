	object_const_def ; object_event constants
	const SILENTPOKECENTER1F_NURSE
	const SILENTPOKECENTER1F_LASS

SilentPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilentPokecenterNurse:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iffalse .NoMons
	jumpstd pokecenternurse

.NoMons:
	jumptext .NoMonsText

.NoMonsText:
	text "Hello!"
	para "In order to use a"
	line "#MON CENTER,"
	para "you need at least"
	line "one #MON."
	done

SilentPokecenterLassScript:
	jumptextfaceplayer SilentPokecenterLassText
	
SilentPokecenterOldLadyScript:
	jumptextfaceplayer SilentPokecenterOldLadyText
	
SilentPokecenterGamerGirlScript:
	jumptextfaceplayer SilentPokecenterGamerGirlText
	
SilentPokecenterGamerBoyScript:
	jumptextfaceplayer SilentPokecenterGamerBoyText
	
SilentPokecenterTeacherScript:
	jumptextfaceplayer SilentPokecenterTeacherText
	
SilentPokecenterLassText:
	text "Healing is free in"
	line "#MON CENTERS!"
	
	para "There's never a"
	line "need to worry"
	cont "about cash here!"
	done
	
SilentPokecenterOldLadyText:
	text "My grandmother"
	line "told me, so I'll"
	cont "tell you."
	
	para "VULPII has three"
	line "distinct stages"
	cont "of life."
	
	para "It gets a new"
	line "name and coat for"
	cont "every three tails"
	
	para "it grows."
	done 
	
SilentPokecenterGamerGirlText:
	text "I'm playing TETRIS"
	line "with my boyfriend"
	cont "over LINK CABLE."
	
	para "We're so close to"
	line "tying!"
	done
	
SilentPokecenterGamerBoyText:
	text "I'm playing TETRIS"
	line "with my girlfriend"
	cont "over LINK CABLE."
	
	para "The blocks are"
	line "piling up faster"
	cont "than a MACHAMP's"
	
	para "reflexes!"
	done
	
SilentPokecenterTeacherText:
	text "Last year, it was"
	line "discovered that"
	cont "MR. MIME could be"
	
	para "both male and"
	line "female, so it was"
	cont "decided to change"
	
	para "MR. MIME's name to"
	line "MIMENTOR. We learn"
	cont "new things about"
	
	para "#MON every day."
	done 
	

SilentPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, SILENT_TOWN, 4
	warp_event  6,  7, SILENT_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentPokecenterNurse, -1
	object_event  2,  3, SPRITE_LASS,  SPRITEMOVEDATA_STANDING_DOWN, 1,  0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilentPokecenterLassScript, -1
	object_event  9,  5, SPRITE_GRANNY,  SPRITEMOVEDATA_STANDING_DOWN, 1,  0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilentPokecenterOldLadyScript, -1
	object_event  13,  5, SPRITE_GAMEBOY_GIRL,  SPRITEMOVEDATA_STANDING_DOWN, 1,  0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SilentPokecenterGamerGirlScript, -1
	object_event  14,  5, SPRITE_GAMEBOY_KID,  SPRITEMOVEDATA_STANDING_DOWN, 1,  0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilentPokecenterGamerBoyScript, -1
	object_event  10,  2, SPRITE_TEACHER,  SPRITEMOVEDATA_STANDING_DOWN, 1,  0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilentPokecenterTeacherScript, -1

