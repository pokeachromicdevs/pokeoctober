	object_const_def ; object_event constants
	const ROUTE32NORTH_LASS

Route32North_MapScripts:
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

TrainerLassTina:
	trainer LASS, TINA, EVENT_BEAT_LASS_TINA, .Seen, .Beat, 0, .PostScript

.Seen:
	text "H-Hey! Have you"
	line "seen my little"
	cont "brother?!"
	done

.Beat:
	text "Answer me!"
	done

.PostScript:
	checkevent EVENT_BEAT_FLEDGLING_TIMOTHY
	iftrue .LassTinaFetchesTim
	jumptextfaceplayer .PostBattleTxt

.LassTinaFetchesTim:
	faceplayer
	opentext
	writetext .FetchTimTxt
	waitbutton
	closetext
	applymovement ROUTE32NORTH_LASS, .LassGoesNorthMovement
	setevent EVENT_TALKED_TO_LASS_TINA
	disappear ROUTE32NORTH_LASS
	end

.PostBattleTxt:
	text "Normally I wouldn't"
	line "be so upset over"
	para "my brother going"
	line "missing, but I"
	para "heard there's some"
	line "criminals on the"
	cont "loose<...>"
	para "Please let me know"
	line "if you find him!"
	done

.FetchTimTxt:
	text "You've seen some-"
	line "one looking for"
	cont "his sister?"
	para "That must be my"
	line "brother!"
	para "<...>"
	para "What? He's in the"
	line "SPROUT TOWER?"
	para "Thanks, I'll go"
	line "get him now!"
	done

.LassGoesNorthMovement:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step RIGHT
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	step_end
	
TrainerProdigyAxel:
	trainer PRODIGY, AXEL, EVENT_BEAT_PRODIGY_AXEL, .SeenTxt, .WinTxt, 0, .PostScript

.SeenTxt:
	text "Haha!"
	
	para "I'm stronger than"
	line "everyone in"
	cont "VIOLET's school!"
	
	para "Including you!"
	done

.WinTxt:
	text "My pride! It's"
	line "wounded!"
	done


.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt

.PSTxt:
	text "Bleh<...>"
	
	para "I used to be the"
	line "best in my school"
	cont "like how my big"
	
	para "sis is at her"
	line "school<...> now I'm"
	cont "just a loser<...>"
	done

Route32Sign1:
	jumptext .Text
.Text:
	text "ROUTE 32"
	para "VIOLET CITY -"
	line "ALDER TOWN"
	done

DreadWoodsSign1:
	jumptext .Text
.Text:
	text "DREAD WOODS"
	para "Beware of ghost"
	line "#MON!"
	done

Route32North_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 15, DREAD_WOODS, 1
	warp_event  1, 17, DREAD_WOODS, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event 12, 10, BGEVENT_READ, Route32Sign1
	bg_event  5, 13, BGEVENT_READ, DreadWoodsSign1

	db 3 ; object events
	object_event  4, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassTina, EVENT_TALKED_TO_LASS_TINA
	object_event 10, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFisherKoi, -1
	object_event 10, 10, SPRITE_PRODIGY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerProdigyAxel, -1