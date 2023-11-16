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

TrainerSageTakao:
	trainer SAGE, TAKAO, EVENT_BEAT_SAGE_TAKAO, .SeenTxt, .WinTxt, 0, .PostScript
.SeenTxt:
	text "The mystic #MON"
	line "that used to"
	cont "rest here<...>"
	para "Is your heart"
	line "pure enough to"
	cont "get it to return?"
	done

.WinTxt:
	text "Your heart<...> it's"
	line "pure indeed!"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt
.PSTxt:
	text "When ILEX FOREST"
	line "got cut down,"
	para "CELEBI fled some-"
	line "where within the"
	cont "ORANGE ISLANDS."
	para "It's quite sad."
	line "I hope that"
	para "it'll come back"
	line "one day."
	done

TrainerMysticAndrea:
	trainer MYSTIC, ANDREA, EVENT_BEAT_MYSTIC_ANDREA, .SeenTxt, .BeatenTxt, 0, .AfterScript

.SeenTxt:
	text "Let me read"
	line "your fortune"
	para "using my ghost-"
	line "type #MON!"
	done

.BeatenTxt:
	text "Oh, I didn't"
	line "foresee that!"
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
	setevent EVENT_BEAT_SAGE_TAKAO
	setevent EVENT_BEAT_MYSTIC_ANDREA
	setevent EVENT_BEAT_INSTRUCTOR_FRANK
	setevent EVENT_BEAT_MEDIUM_DOROTHY
	variablesprite SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITE_WILL
	writetext .AfterTxt2
	buttonsound
	verbosegivetmhm SHADOW_BALL_TMNUM
	;iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
;.AfterShadowBall:
	writetext .AfterTxt3
	waitbutton
;.NoRoomForShadowBall:
	closetext
	end
.AfterShadowBall:
	writetext .AfterTxt4
	waitbutton
	closetext
	end

.BeginTxt:
	text "Greetings,"
	line "<PLAYER>."

	para "You've proven your"
	line "wisdom in battle"
	para "by reaching the"
	line "end of my GYM."

	para "I am MORTY, LEADER"
	line "of the AZALEA GYM."
	
	para "Legends of this"
	line "town say that a"
	para "mysterious #MON"
	line "once inhabited the"
	para "forest that stood"
	line "here long before."

	para "I've looked into"
	line "both the past and"
	para "the future hoping"
	line "to gain a clearer"
	cont "picture."

	para "With a little more"
	line "power, I can"
	para "surely fulfill my"
	line "dream of meeting"
	para "the forest"
	line "#MON that"
	para "leaps through"
	line "time."

	para "And now, I"
	line "believe<...>"

	para "You're going to"
	line "help me reach that"
	cont "level!"
	done

.WinTxt:
	text "I see now that I"
	line "still have much"
	cont "room to improve."
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
	line "makes #MON up"
	para "to level 50 obey"
	line "you without"
	cont "question."

	para "It also allows the"
	line "use of WATER SPORT"
	para "outside of"
	line "battle."

	para "Here, take this as"
	line "well."
	done

.AfterTxt3:
	text "TM 30 is SHADOW"
	line "BALL."

	para "It's a powerful"
	line "ghost-type attack"
	para "that also has a"
	line "chance of lowering"
	para "the target's"
	line "SPECIAL DEFENSE."

	para "I hope that you"
	line "make good use of"
	para "it on your journey"
	line "as it is one of my"
	para "personal"
	line "favorites."
	done

.AfterTxt4:
	text "At the end of our"
	line "battle, I had a"
	cont "brief vision."

	para "Just the smallest"
	line "glimpse of a"
	cont "rainbow."

	para "Keep growing"
	line "stronger,"
	para "<PLAYER>, as"
	line "will I."
	done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	db 20 ; warp events
; entry
	warp_event  4, 25, AZALEA_TOWN, 5
	warp_event  5, 25, AZALEA_TOWN, 5
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
	warp_event 15,  4, AZALEA_GYM, 1
	warp_event  5, 14, AZALEA_GYM, 1
	warp_event 17, 14, AZALEA_GYM, 1
	warp_event  6, 18, AZALEA_GYM, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 23, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 23, BGEVENT_READ, AzaleaGymStatue

	db 5 ; object events
	object_event  4, 18, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSageTakao, -1
	object_event  5, 12, SPRITE_MYSTIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerMysticAndrea, -1
	object_event 17, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerInstructorFrank, -1
	object_event 17,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerMediumDorothy, -1
	object_event  6,  3, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaGymMortyScript, -1
