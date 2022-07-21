	object_const_def ; object_event constants
	const EARLSPOKEMONACADEMY_EARL

EarlsPokemonAcademy_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .IsEarlHere

.IsEarlHere:
	checkevent EVENT_EARL_OUTSIDE_ACADEMY
	iftrue .yes
; no
	disappear EARLSPOKEMONACADEMY_EARL
	return
.yes
	appear EARLSPOKEMONACADEMY_EARL
	return

; scripts here
EarlsPokemonAcademy_EarlScript:
	applymovement EARLSPOKEMONACADEMY_EARL, .Speen
	faceplayer
	opentext
	writetext .IntroText
	yesorno
	iffalse .no
; yes
	writetext .Yes1Text
	yesorno
	iffalse .no
	writetext .Yes2Text
	waitbutton
	closetext
	end
.no
	writetext .NoText
	waitbutton
	closetext
	end

.IntroText:
	text "Your service,"
	line "teacher EARL"
	cont "DERVISH is at!"
	para "Wonderful, #MON"
	line "are!"
	para "Teach you, I"
	line "shall!"
	para "Wish to be a"
	line "CHAMPION, do you?"
	done

.Yes1Text:
	text "Wonderful!"
	para "In battle, come"
	line "out first, top"
	cont "#MON does!"
	para "Change order to"
	line "send different"
	para "#MON out first,"
	line "you must."
	para "Raise #MON"
	line "well, do you?"
	done

.Yes2Text:
	text "Delightful!"
	para "Gain EXP, #MON"
	line "does!"
	para "Even when no at-"
	line "tack is done, EXP."
	cont "#MON gets!"
	para "Place weak #MON"
	line "at top of party,"
	cont "you can!"
	para "Then switch imme-"
	line "diately, you also"
	cont "can!"
	para "Become stronger,"
	line "weak #MON will!"
	done

.NoText:
	text "No? Smart student,"
	line "you are!"
	para "Nothing to teach,"
	line "I have!"
	para "Become LEAGUE"
	line "CHAMPION, you"
	cont "shall!"
	para "Rooting for you,"
	line "I am!"
	done

.Speen:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

EarlsPokemonAcademy_Youngster1Script:
	jumptextfaceplayer .Text
.Text:
	text "I'm taking notes"
	line "of the teacher's"
	cont "lecture."

	para "I'd better copy"
	line "the stuff on the"
	cont "blackboard too."
	done

EarlsPokemonAcademy_GameboyKid1Script:
	jumptextfaceplayer .Text
.Text:
	text "I traded my best"
	line "#MON to the"
	cont "guy beside me."
	done

EarlsPokemonAcademy_GameboyKid2Script:
	jumptextfaceplayer .Text
.Text:
	text "Huh? The #MON I"
	line "just got is hold-"
	cont "ing something!"
	done

EarlsPokemonAcademy_Youngster2Script:
	jumptextfaceplayer .Text
.Text:
	text "A #MON holding"
	line "a BERRY will heal"
	cont "itself in battle."

	para "Many other items"
	line "can be held by"
	cont "#MON…"

	para "It sure is tough"
	line "taking notes…"
	done

EarlsPokemonAcademy_NotebookScript:
	opentext
	writetext .Text
	yesorno
	iffalse .done
	writetext .Text1
	yesorno
	iffalse .done
	writetext .Text2
	yesorno
	iffalse .done
	writetext .Text3
	waitbutton
.done
	closetext
	end

.Text:
	text "It's this kid's"
	line "notebook…"

	para "Catch #MON"
	line "using # BALLS."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done

.Text1:
	text "Before throwing a"
	line "# BALL, weaken"
	cont "the target first."

	para "A poisoned or"
	line "burned #MON is"
	cont "easier to catch."

	para "Keep reading?"
	done

.Text2:
	text "Some moves may"
	line "cause confusion."

	para "Confusion may make"
	line "a #MON attack"
	cont "itself."

	para "Leaving battle"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done

.Text3:
	text "People who catch"
	line "and use #MON"

	para "in battle are"
	line "#MON trainers."

	para "They are expected"
	line "to visit #MON"

	para "GYMS and defeat"
	line "other trainers."

	para "The next page"
	line "is… Blank!"

	para "Boy: E-he-he…"

	para "I haven't written"
	line "anymore…"
	done

EarlsPokemonAcademy_Youngster3Script:
	jumptextfaceplayer .Text
.Text:
	text "MR. EARL speaks in"
	line "backwards all the"
	cont "time."
	para "Everything he says"
	line "goes over my head!"
	done

EarlsPokemonAcademy_Blackboard:
	opentext
	writetext .BlackboardText
.Loop:
	writetext .BlackboardText2
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.BlackboardText:
	text "The blackboard"
	line "describes #MON"

	para "status changes in"
	line "battle."
	prompt

.BlackboardText2:
	text "Read which topic?"
	done

.Poison:
	writetext .PoisonText
	waitbutton
	sjump .Loop

.PoisonText:
	text "If poisoned, a"
	line "#MON steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "ANTIDOTE."
	done

.Paralysis:
	writetext .ParalysisText
	waitbutton
	sjump .Loop

.ParalysisText:
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a PARLYZ HEAL."
	done

.Sleep:
	writetext .SleepText
	waitbutton
	sjump .Loop

.SleepText:
	text "If asleep, your"
	line "#MON can't make"
	cont "a move."

	para "A sleeping #MON"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an AWAKENING."
	done

.Burn:
	writetext .BurnText
	waitbutton
	sjump .Loop

.BurnText:
	text "A burn steadily"
	line "depletes HP."

	para "It also reduces"
	line "attack power."

	para "A burn lingers"
	line "after battle."

	para "Use a BURN HEAL as"
	line "the cure."
	done

.Freeze:
	writetext .FreezeText
	waitbutton
	sjump .Loop

.FreezeText:
	text "If your #MON is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an ICE HEAL."
	done

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "PSN@"
	db "PAR@"
	db "SLP@"
	db "BRN@"
	db "FRZ@"
	db "QUIT@"

EarlsPokemonAcademy_StickerMachine:
	jumptext .Text
.Text:
	text "This super machine"
	line "prints data out as"
	cont "stickers!"
	done

EarlsPokemonAcademy_Bookshelf:
	jumpstd difficultbookshelf

EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3, 15, VIOLET_CITY, 11
	warp_event  4, 15, VIOLET_CITY, 11

	db 0 ; coord events

	db 5 ; bg events
	bg_event  3,  0, BGEVENT_READ, EarlsPokemonAcademy_Blackboard
	bg_event  4,  0, BGEVENT_READ, EarlsPokemonAcademy_Blackboard
	bg_event  0,  1, BGEVENT_READ, EarlsPokemonAcademy_Bookshelf
	bg_event  1,  1, BGEVENT_READ, EarlsPokemonAcademy_Bookshelf
	bg_event  6,  0, BGEVENT_READ, EarlsPokemonAcademy_StickerMachine

	db 7 ; object events
	object_event  4,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_EarlScript, EVENT_EARL_ENTERED_ACADEMY
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_Youngster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_GameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_GameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_Youngster2Script, -1
	object_event  2,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_NotebookScript, -1
	object_event  5,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademy_Youngster3Script, -1
