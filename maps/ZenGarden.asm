ZenGarden_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	
TrainerLassNiechelle:
	trainer LASSNIENIE, NIECHELLE, EVENT_BEAT_LASS_NIECHELLE, LassNiechelleSeenText, LassNiechelleBeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_LASS_NIECHELLE
	opentext
	checkflag ENGINE_NIECHELLE
	iftrue .WantsBattle
	checkcellnum PHONE_LASS_NIECHELLE
	iftrue Route46NumberAcceptedF
	checkevent EVENT_NIECHELLE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext LassNiechelleAfterBattleText
	buttonsound
	setevent EVENT_NIECHELLE_ASKED_FOR_PHONE_NUMBER
	scall Route46AskNumber1F
	sjump .AskForNumber

.AskedAlready:
	scall Route46AskNumber2F
.AskForNumber:
	askforphonenumber PHONE_LASS_NIECHELLE
	ifequal PHONE_CONTACTS_FULL, Route46PhoneFullF
	ifequal PHONE_CONTACT_REFUSED, Route46NumberDeclinedF
	gettrainername STRING_BUFFER_3, LASSNIENIE, NIECHELLE
	scall Route46RegisteredNumberF
	sjump Route46NumberAcceptedF

.WantsBattle:
	scall Route46RematchF
	winlosstext LassNiechelleBeatenText, 0
	readmem wNiechelleFightCount
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight3:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight3
.Fight2:
	checkevent EVENT_BEAT_JASMINE; EVENT_BEAT_JASMINE
	iftrue .LoadFight2
.Fight1:
	checkevent EVENT_BEAT_BUGSY
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer LASSNIENIE, NIECHELLE2
	startbattle
	reloadmapafterbattle
	loadmem wNiechelleFightCount, 1
	clearflag ENGINE_NIECHELLE
	end

.LoadFight1:
	loadtrainer LASSNIENIE, NIECHELLE3
	startbattle
	reloadmapafterbattle
	loadmem wNiechelleFightCount, 2
	clearflag ENGINE_NIECHELLE
	end
	
.LoadFight2:
	loadtrainer LASSNIENIE, NIECHELLE4
	startbattle
	reloadmapafterbattle
	loadmem wNiechelleFightCount, 3
	clearflag ENGINE_NIECHELLE
	end

.LoadFight3:
	loadtrainer LASSNIENIE, NIECHELLE5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_NIECHELLE
	checkevent EVENT_NIECHELLE_CALCIUM
	iftrue .HasCalcium
	checkevent EVENT_GOT_CALCIUM_FROM_NIECHELLE
	iftrue .GotCalciumAlready
	scall Route46RematchGiftF
	verbosegiveitem POKE_DOLL
	iffalse NiechelleNoRoomForCalcium
	setevent EVENT_GOT_CALCIUM_FROM_NIECHELLE
	sjump Route46NumberAcceptedF

.GotCalciumAlready:
	end

.HasCalcium:
	opentext
	writetext LassNiechelle2BeatenText
	waitbutton
	verbosegiveitem POKE_DOLL
	iffalse NiechelleNoRoomForCalcium
	clearevent EVENT_NIECHELLE_CALCIUM
	setevent EVENT_GOT_CALCIUM_FROM_NIECHELLE
	sjump Route46NumberAcceptedF

Route46AskNumber1F:
	jumpstd asknumber1f
	end

Route46AskNumber2F:
	jumpstd asknumber2f
	end

Route46RegisteredNumberF:
	jumpstd registerednumberf
	end

Route46NumberAcceptedF:
	jumpstd numberacceptedf
	end

Route46NumberDeclinedF:
	jumpstd numberdeclinedf
	end

Route46PhoneFullF:
	jumpstd phonefullf
	end

Route46RematchF:
	jumpstd rematchf
	end

NiechelleNoRoomForCalcium:
	setevent EVENT_NIECHELLE_CALCIUM
	jumpstd packfullf
	end

Route46RematchGiftF:
	jumpstd rematchgiftf
	end
	
LassNiechelleSeenText:
	text "Ah<...>"
	
	para "My boyfriend"
	line "would love this"
	cont "garden<...>"
	done

LassNiechelleBeatenText:
	text "It gives me so"
	line "much joy<...>"
	done

LassNiechelleAfterBattleText:
	text "I often come"
	line "here to feel"
	cont "peace."
	
	para "I want to take"
	line "my boyfriend Gabe"
	cont "here one day, but"
	
	para "he lives in KANTO."
	line "We`re planning a"
	cont "visit soon."
	done

LassNiechelle2BeatenText:
	text "Oh no! My"
	line "adorable orbs!"
	done

ZenGardenMediumScript:
	jumptextfaceplayer .Txt

.Txt:
	text "Ah, it's not every-"
	line "day a young one"
	para "such as yourself"
	line "comes to the"
	cont "SAKURA SHRINE."
	para "It's reassuring"
	line "that the young"
	para "ones still wish to"
	line "pay respects."
	done

ZenGardenSageScript:
	jumptextfaceplayer .Txt

.Txt:
	text "A strange little"
	line "fish called"
	para "SAKURAQUA dwells"
	line "in this pond."
	para "And yet, I haven't"
	line "gotten the chance"
	para "to witness one"
	line "myself<...>"
	done

ZenGardenGrampsScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I always make sure"
	line "to bring a blossom"
	para "home to my wife"
	line "when the trees"
	cont "bloom."
	para "Thirty years and"
	line "it still makes her"
	para "smile like the"
	line "first time I"
	cont "brought her one!"
	done

ZenGardenSageScript1:
	jumptextfaceplayer .Txt

.Txt:
	text "There used to be"
	line "a shrine like this"
	para "in CHERRYGROVE"
	line "CITY."
	para "It was so"
	line "beautiful<...>"
	para "I don't know what"
	line "happened to it,"
	cont "but it's gone now."
	done

TrainerFledglingTommy:
	trainer FLEDGLING, FLEDGLING_TOMMY, EVENT_BEAT_FLEDGLING_TOMMY, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "This GARDEN is a"
	line "paradise for my"
	cont "bird #MON!"
	done

.WinTxt:
	text "But not for me"
	line "anymore<...>"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "My birds are"
	line "allowed to run"
	para "wherever they"
	line "please here."
	para "They love pecking"
	line "at the grass to"
	cont "search for worms."
	done

TrainerSageChen:
	trainer SAGE, CHEN, EVENT_BEAT_SAGE_CHEN, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "There is no place"
	line "more soothing than"
	para "this wondrous gar-"
	line "den."
	done

.WinTxt:
	text "Even now, I feel"
	line "no rage."
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "If only there was"
	line "a way to keep the"
	para "soothing bliss"
	line "from this place"
	para "with me at all"
	line "times<...>"
	done

TrainerSageMonty:
	trainer SAGE, MONTY, EVENT_BEAT_SAGE_MONTY, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "Can you withhold"
	line "your anger from"
	para "your incoming"
	line "defeat?"
	done

.WinTxt:
	text "Hmm<...>"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "I've lost the"
	line "ability to feel"
	cont "anger."
	para "In fact, I've been"
	line "losing all of my"
	cont "emotions lately."
	done

TrainerMysticSonia:
	trainer MYSTIC, SONIA, EVENT_BEAT_MYSTIC_SONIA, .SeenTxt, .WinTxt, 0, .AfterScript

.SeenTxt:
	text "Hey! Get out of"
	line "here! You're dis-"
	cont "tracting me!"
	done

.WinTxt:
	text "Curses<...>"
	done

.AfterScript:
	endifjustbattled
	jumptextfaceplayer .AfterTxt

.AfterTxt:
	text "I'm sorry, but I"
	line "can't focus on"
	para "gazing into the"
	line "future with people"
	cont "around."
	para "Please, just<...>"
	line "leave."
	done

SakuraShrineSign:
	jumptext .Txt
.Txt:
	text "SAKURA SHRINE"
	done

ZenGarden_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  9, 33, ZEN_GARDEN_GATE, 1
	warp_event 10, 33, ZEN_GARDEN_GATE, 2
	warp_event 19,  5, SAKURA_SHRINE, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 22,  6, BGEVENT_READ, SakuraShrineSign

	db 9 ; object events
	object_event 21,  6, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZenGardenMediumScript, -1
	object_event 21, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ZenGardenSageScript, -1
	object_event 29, 11, SPRITE_SAGE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ZenGardenGrampsScript, -1
	object_event 16, 22, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ZenGardenSageScript1, -1
	object_event  5, 23, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerFledglingTommy, -1
	object_event  7,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageChen, -1
	object_event  9, 12, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSageMonty, -1
	object_event 35, 13, SPRITE_MYSTIC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerMysticSonia, -1
	object_event 29,  6, SPRITE_NIENIE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerLassNiechelle, -1
