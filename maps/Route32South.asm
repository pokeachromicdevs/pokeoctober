	object_const_def ; object_event constants

Route32South_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	scene_script .DummyScene2 ; SCENE_ROUTE32_NOTHING

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

TrainerFisherKoi:
; lmao
	trainer FISHER, KOI, EVENT_BEAT_FISHER_KOI, .SeenTxt, .WinTxt, 0, .PostScript

.SeenTxt:
	text "All hail MAGIKARP!"
	done

.WinTxt:
	text "No! MAGIKARP!"
	done


.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt

.PSTxt:
	text "You should be"
	line "ashamed!"
	para "Hurting MAGIKARP"
	line "is practically a"
	cont "crime!"
	done


TrainerFisherGeorge:
	trainer FISHER, FISHER_GEORGE, EVENT_BEAT_FISHER_GEORGE, .SeenTxt, .WinTxt, 0, .PostScript

.SeenTxt:
	text "I did it!"
	para "I caught a huge"
	line "one!"
	done

.WinTxt:
	text "What a huge dis-"
	line "appointment."
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt

.PSTxt:
	text "Ah well."
	para "I probably should"
	line "be happy I made"
	para "such a catch in-"
	line "stead of getting"
	para "ornery about"
	line "losing."
	done

TrainerBeautyPeony:
	trainer BEAUTY, PEONY, EVENT_BEAT_BEAUTY_PEONY, .SeenTxt, .WinTxt, 0, .PostScript

.SeenTxt:
	text "Ah<...> a beautiful"
	line "beach<...> how dreamy!"
	done

.WinTxt:
	text "Well, the dream's"
	line "ruined."
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt

.PSTxt:
	text "Nice job, little"
	line "brat."
	para "I can't enjoy the"
	line "beach knowing a"
	para "child wouldn't let"
	line "me win."
	done

TrainerFledglingWinston:
	trainer FLEDGLING, WINSTON, EVENT_BEAT_FLEDGLING_WINSTON, .SeenTxt, .WinTxt, 0, .PostScript

.SeenTxt:
	text "Who are you?"
	done

.WinTxt:
	text "Who am I?"
	done

.PostScript:
	jumptextfaceplayer .PSTxt

.PSTxt:
	text "What is anything?"
	done

TrainerBugCatcherHikaru:
	trainer BUG_CATCHER, HIKARU, EVENT_BEAT_BUGCATCHER_HIKARU, .SeenTxt, .WinTxt, 0, .PostScript

.SeenTxt:
	text "Ninja strike!"
	done

.WinTxt:
	text "Curses! I've been"
	line "bested!"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt

.PSTxt:
	text "Uncle KOGA is"
	line "going to train me"
	para "to become a ninja"
	line "when I'm older!"
	para "Just you wait!"
	done

Route32South_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 14, DREAD_WOODS, 3
	warp_event  2, 15, DREAD_WOODS, 4

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event 13, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherKoi, -1
	object_event 13, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherGeorge, -1
	object_event 10, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBeautyPeony, -1
	object_event  7, 28, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFledglingWinston, -1
	object_event 11, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherHikaru, -1

