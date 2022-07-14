AzaleaGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
AzaleaGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	gettrainername STRING_BUFFER_4, MORTY, MORTY1
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, MORTY, MORTY1
	jumpstd gymstatue2

TrainerManchildZachary:
	trainer MANCHILD, ZACHARY, EVENT_BEAT_MANCHILD_ZACHARY, .SeenTxt, .BeatenTxt, 0, .AfterScript

.SeenTxt:
	text "GHOST-types give"
	line "me the shivers<...>"
	para "Then why am I"
	line "here? You'll see!"
	done

.BeatenTxt:
	text "But losing scares"
	line "me more!"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "MORTY found me and"
	line "took me in to help"
	para "me overcome my"
	line "fear."
	para "I owe a lot to"
	line "him."
	done

TrainerBeautyAndrea:
	trainer BEAUTY, ANDREA, EVENT_BEAT_BEAUTY_ANDREA, .SeenTxt, .BeatenTxt, 0, .AfterScript

.SeenTxt:
	text "Brains and stra-"
	line "tegy are more"
	para "important than"
	line "pure power!"
	para "My GHOST-types"
	line "will prove that"
	cont "to you!"
	done

.BeatenTxt:
	text "Looks like you"
	line "understood that."
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "My husband is an"
	line "INSTRUCTOR."
	para "He taught me lots"
	line "of #MON battle"
	cont "strategies."
	done

TrainerInstructorFrank:
	trainer INSTRUCTOR, FRANK, EVENT_BEAT_INSTRUCTOR_FRANK, .SeenTxt, .BeatenTxt, 0, .AfterScript

.SeenTxt:
	text "GHOST moves are"
	line "useless against"
	cont "NORMAL-types."
	para "But, I do know a"
	line "secret that will"
	cont "help me win!"
	done

.BeatenTxt:
	text "<...>How'd you figure"
	line "it out?!"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "FORESIGHT can make"
	line "NORMAL and GHOST"
	para "moves affect each"
	line "other!"
	para "Isn't that neat?"
	done

TrainerMediumDorothy:
	trainer MEDIUM, DOROTHY, EVENT_BEAT_MEDIUM_DOROTHY, .SeenTxt, .BeatenTxt, 0, .AfterScript

.SeenTxt:
	text "I can sense your"
	line "every thought!"
	done

.BeatenTxt:
	text "Oh, I"
	line "miscalculated!"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "I use my GHOST-"
	line "types to help me"
	para "sense change in"
	line "the atmosphere."
	done


AzaleaGymMortyScript:
	faceplayer
	opentext

	checkevent EVENT_BEAT_MORTY
	iftrue .AfterFight

	writetext .BeginTxt
	waitbutton
	closetext
	winlosstext .WinTxt, 0
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_MANCHILD_ZACHARY
	setevent EVENT_BEAT_BEAUTY_ANDREA
	setevent EVENT_BEAT_INSTRUCTOR_FRANK
	setevent EVENT_BEAT_MEDIUM_DOROTHY
	opentext
	writetext .AfterTxt1
	waitbutton
	writetext .ReceivedFog
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
.AfterFight:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .AfterShadowBall
	writetext .AfterTxt2
	buttonsound
	verbosegivetmhm SHADOW_BALL_TMNUM
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
.AfterShadowBall:
	writetext .AfterTxt3
	waitbutton
.NoRoomForShadowBall:
	closetext
	end

.BeginTxt:
	text "Greetings,"
	line "trainer."
	para "I saw you coming"
	line "from a mile away."
	para "My name is MORTY,"
	line "and I am known as"
	para "'the mystic seer of"
	line "the future.'"
	para "I have trained"
	line "here my entire"
	para "life, and becoming"
	line "a GYM LEADER has"
	para "only allowed me to"
	line "hone my skills"
	cont "further."
	para "It is because of"
	line "my efforts that I"
	para "can now see what"
	line "others cannot."
	para "Perhaps one day,"
	line "I'll be able to see"
	para "the fabled rainbow"
	line "colored #MON."
	para "I'd like you to"
	line "help me reach that"
	cont "goal."
	para "Let's go!"
	done

.WinTxt:
	text "I see now where I"
	line "must improve."
	done

.AfterTxt1:
	text "I concede defeat."
	para "Here, take the"
	line "FOGBADGE."
	done

.ReceivedFog:
	text "<PLAYER> received"
	line "FOGBADGE."
	done

.AfterTxt2:
	text "The FOGBADGE makes"
	line "#MON up to"
	para "level 50 obey you"
	line "without question."
	para "It also allows the"
	line "use of WATER SPORT"
	cont "outside of battle."
	para "Here, take this as"
	line "well."
	done

.AfterTxt3:
	text "TM30 is SHADOW"
	line "BALL."
	para "It's a powerful"
	line "GHOST-type attack"
	para "that also has a"
	line "chance of lowering"
	para "the target's"
	line "SPECIAL DEFENSE."
	para "I hope that you"
	line "make good use of"
	para "it on your"
	line "journey."
	done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	db 20 ; warp events
; entry
	warp_event  4, 25, AZALEA_TOWN, 4
	warp_event  5, 25, AZALEA_TOWN, 4
; pit 1
	warp_event  8, 18, AZALEA_GYM, 19
	warp_event  8, 19, AZALEA_GYM, 19
; pit 2
	warp_event  8, 14, AZALEA_GYM, 20
	warp_event  8, 15, AZALEA_GYM, 20
; pit 3
	warp_event 13, 14, AZALEA_GYM, 18
	warp_event 13, 15, AZALEA_GYM, 18
; pit 4
	warp_event 16, 18, AZALEA_GYM, 20
	warp_event 17, 18, AZALEA_GYM, 20
; pit 5
	warp_event 16, 10, AZALEA_GYM, 17
	warp_event 17, 10, AZALEA_GYM, 17
; pit 6
	warp_event  5, 10, AZALEA_GYM, 19
	warp_event  5, 11, AZALEA_GYM, 19
; pit 7
	warp_event 16,  6, AZALEA_GYM, 20
	warp_event 17,  6, AZALEA_GYM, 20
; warp targets
	warp_event 10,  4, AZALEA_GYM, 1
	warp_event  5, 14, AZALEA_GYM, 1
	warp_event 17, 14, AZALEA_GYM, 1
	warp_event  6, 18, AZALEA_GYM, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 23, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 23, BGEVENT_READ, AzaleaGymStatue

	db 5 ; object events
	object_event  4, 18, SPRITE_MANCHILD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerManchildZachary, -1
	object_event  5, 12, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyAndrea, -1
	object_event 17, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerInstructorFrank, -1
	object_event 17,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerMediumDorothy, -1
	object_event  6,  3, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaGymMortyScript, -1
