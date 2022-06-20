	object_const_def
	const FIGHTINGDOJO_BLACKBELT1
	const FIGHTINGDOJO_BLACKBELT2
	const FIGHTINGDOJO_BLACKBELT3
	const FIGHTINGDOJO_BLACKBELT4

FightingDojo_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
TrainerBlackBeltKaori:
	trainer BLACKBELT_T, KAORI, EVENT_BEAT_BLACKBELT_KAORI, .Seen, .Beaten, 0, .Script
.Seen:
	text "We don't just use"
	line "fighting-types"
	cont "here, kiddo!"
	done
.Beaten:
	text "You've got"
	line "strength!"
	done
.Script:
	setmapscene CHERRYGROVE_POKECENTER_1F, SCENE_CHERRYGROVEPOKECENTER1F_A_LINE_FORMS
	endifjustbattled
	jumptextfaceplayer .AfterTxt
.AfterTxt:
	text "Using more than"
	line "just fighting-"
	para "types will help us"
	line "stand out more so"
	para "the DOJO won't be"
	line "overshadowed by"
	para "the CHERRYGROVE"
	line "GYM!"
	para "We'll use anything"
	line "that really loves"
	cont "to brawl!"
	done

TrainerBlackBeltJiro:
	trainer BLACKBELT_T, JIRO, EVENT_BEAT_BLACKBELT_JIRO, .Seen, .Beaten, 0, .Script
.Seen:
	text "Haha! Feisty kid"
	line "wants to join in"
	para "on our training,"
	line "eh?!"
	done
.Beaten:
	text "Feisty and strong!"
	line "Haha!"
	done
.Script:
	setmapscene CHERRYGROVE_POKECENTER_1F, SCENE_CHERRYGROVEPOKECENTER1F_A_LINE_FORMS
	endifjustbattled
	jumptextfaceplayer .AfterTxt
.AfterTxt:
	text "I like you, kid!"
	para "Keep training, and"
	line "you'll go far in"
	cont "life!"
	para "I can even see you"
	line "climbing up MT."
	cont "SILVER one day!"
	done

TrainerBlackBeltKiyoshi:
	trainer BLACKBELT_T, KIYOSHI, EVENT_BEAT_BLACKBELT_KIYOSHI, .Seen, .Beaten, 0, .Script
.Seen:
.Beaten:
	text "<...>"
	done
.Script:
	setmapscene CHERRYGROVE_POKECENTER_1F, SCENE_CHERRYGROVEPOKECENTER1F_A_LINE_FORMS
	endifjustbattled
	jumptextfaceplayer .AfterTxt
.AfterTxt:
	text "<...>Sorry."
	line "I just don't like"
	para "talking more than"
	line "I have to."
	done

TrainerBlackBeltKiyo:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iftrue .FightDone
	writetext .Seen
	waitbutton
	closetext
	winlosstext .Beaten, 0
	loadtrainer BLACKBELT_T, KIYO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLACKBELT_KIYO
	setmapscene CHERRYGROVE_POKECENTER_1F, SCENE_CHERRYGROVEPOKECENTER1F_NOTHING
	opentext
	writetext .AfterTxt
	buttonsound
	waitsfx
	writetext .ReceivedTyrogueTxt
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TYROGUE, 10
.FightDone:
	writetext .AfterGottenTyrogueTxt
	waitbutton
	closetext
	setevent EVENT_BEAT_BLACKBELT_KIYOSHI
	setevent EVENT_BEAT_BLACKBELT_JIRO
	setevent EVENT_BEAT_BLACKBELT_KAORI
	end

.Seen:
	text "Ah, you wish to"
	line "challenge the"
	para "KARATE KING"
	line "himself?"
	para "Must've heard of"
	line "the prize I give"
	cont "to victors!"
	para "Ahaha!"
	line "Well, then let us"
	cont "brawl!"
	done
.Beaten:
	text "You've done well!"
	done
.Script:
	setmapscene CHERRYGROVE_POKECENTER_1F, SCENE_CHERRYGROVEPOKECENTER1F_NOTHING
	jumptextfaceplayer .AfterTxt
.AfterTxt:
	text "I'll admit, I wasn't"
	line "using my best team"
	cont "against you."
	para "You seem too new"
	line "to stand up"
	cont "against them."
	para "Still, you have"
	line "great strength"
	cont "already."
	para "Maybe later on,"
	line "you can go against"
	cont "my full team."
	para "For now though,"
	line "have a special"
	para "#MON as proof"
	line "of your victory"
	cont "here today!"
	done
.ReceivedTyrogueTxt:
	text "<PLAYER>"
	line "received TYROGUE!"
	done
.AfterGottenTyrogueTxt:
	text "TYROGUE can evolve"
	line "into three differ-"
	para "ent fighting-type"
	line "#MON, each with"
	para "their own"
	line "strengths!"
	para "Though it is a"
	line "little hard to get"
	para "it to evolve the"
	line "way you want, but"
	para "all three are"
	line "worthy teammates!"
	done

FightingDojo_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 4, 13, CHERRYGROVE_CITY, 10
	warp_event 5, 13, CHERRYGROVE_CITY, 10

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3, 11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBlackBeltKaori, -1
	object_event  6,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT,  0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBlackBeltJiro, -1
	object_event  3,  7, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBlackBeltKiyoshi, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN,  0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT,  0, TrainerBlackBeltKiyo, -1
