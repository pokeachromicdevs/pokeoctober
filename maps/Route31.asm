	object_const_def ; object_event constants
	const ROUTE31_FISHER
	const ROUTE31_YOUNGSTER
	const ROUTE31_SUPER_NERD
	const ROUTE31_COOLTRAINER_M
	const ROUTE31_FRUIT_TREE
	const ROUTE31_POKE_BALL1
	const ROUTE31_POKE_BALL2

Route31_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .CheckMomCall

.CheckMomCall:
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iffalse .DoMomCall
	return

.DoMomCall:
	specialphonecall SPECIALCALL_WORRIED
	return

TrainerInstructorStanley:
	trainer INSTRUCTOR, STANLEY, EVENT_BEAT_INSTRUCTOR_STANLEY, InstructorStanley1SeenText, InstructorStanley1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_INSTRUCTOR_STANLEY
	opentext
	checkflag ENGINE_STANLEY
	iftrue .WadeRematch
	checkflag ENGINE_STANLEY_HAS_ITEM
	iftrue .WadeItem
	checkcellnum PHONE_INSTRUCTOR_STANLEY
	iftrue .AcceptedNumberSTD
	checkevent EVENT_STANLEY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext InstructorStanley1AfterText
	waitbutton
	setevent EVENT_STANLEY_ASKED_FOR_PHONE_NUMBER
	scall .AskPhoneNumberSTD
	sjump .Continue

.AskAgain:
	scall .AskAgainSTD
.Continue:
	askforphonenumber PHONE_INSTRUCTOR_STANLEY
	ifequal PHONE_CONTACTS_FULL, .PhoneFullSTD
	ifequal PHONE_CONTACT_REFUSED, .DeclinedNumberSTD
	gettrainername STRING_BUFFER_3, BUG_CATCHER, STANLEY1
	scall .RegisterNumberSTD
	sjump .AcceptedNumberSTD

.WadeRematch:
	scall .RematchSTD
	winlosstext InstructorStanley1BeatenText, 0
	readmem wWadeFightCount
	ifequal 4, .Fight4
	ifequal 3, .Fight3
	ifequal 2, .Fight2
	ifequal 1, .Fight1
	ifequal 0, .LoadFight0
.Fight4:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight4
.Fight3:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
.Fight2:
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iftrue .LoadFight1
.LoadFight0:
	loadtrainer INSTRUCTOR, STANLEY
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 1
	clearflag ENGINE_STANLEY
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, STANLEY2
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 2
	clearflag ENGINE_STANLEY
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, STANLEY3
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 3
	clearflag ENGINE_STANLEY
	end

.LoadFight3:
	loadtrainer BUG_CATCHER, STANLEY4
	startbattle
	reloadmapafterbattle
	loadmem wWadeFightCount, 4
	clearflag ENGINE_STANLEY
	end

.LoadFight4:
	loadtrainer INSTRUCTOR, STANLEY
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_STANLEY
	end

.WadeItem:
	scall .ItemSTD
	checkevent EVENT_STANLEY_HAS_BERRY
	iftrue .Berry
	checkevent EVENT_STANLEY_HAS_PSNCUREBERRY
	iftrue .Psncureberry
	checkevent EVENT_STANLEY_HAS_PRZCUREBERRY
	iftrue .Przcureberry
	checkevent EVENT_STANLEY_HAS_BITTER_BERRY
	iftrue .BitterBerry
.Berry:
	verbosegiveitem BERRY
	iffalse .PackFull
	sjump .Done
.Psncureberry:
	verbosegiveitem PSNCUREBERRY
	iffalse .PackFull
	sjump .Done
.Przcureberry:
	verbosegiveitem PRZCUREBERRY
	iffalse .PackFull
	sjump .Done
.BitterBerry:
	verbosegiveitem BITTER_BERRY
	iffalse .PackFull
.Done:
	clearflag ENGINE_STANLEY_HAS_ITEM
	sjump .AcceptedNumberSTD
.PackFull:
	sjump .PackFullSTD

.AskPhoneNumberSTD:
	jumpstd asknumber1m
	end

.AskAgainSTD:
	jumpstd asknumber2m
	end

.RegisterNumberSTD:
	jumpstd registerednumberm
	end

.AcceptedNumberSTD:
	jumpstd numberacceptedm
	end

.DeclinedNumberSTD:
	jumpstd numberdeclinedm
	end

.PhoneFullSTD:
	jumpstd phonefullm
	end

.RematchSTD:
	jumpstd rematchm
	end

.ItemSTD:
	jumpstd giftm
	end

.PackFullSTD:
	jumpstd packfullm
	end
	
TrainerYoungsterMax:
	trainer YOUNGSTER, MAX, EVENT_BEAT_BUG_CATCHER_DON, YoungsterMaxSeenText, YoungsterMaxBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterMaxAfterText
	waitbutton
	closetext
	end

TrainerLassSam:
	trainer LASS, LASS_SAM, EVENT_BEAT_LASS_SAM, LassSamSeenText, LassSamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassSamAfterText
	waitbutton
	closetext
	end
	
TrainerTeacherAnn:
	trainer TEACHER, ANN, EVENT_BEAT_TEACHER_ANN, TeacherAnnSeenText, TeacherAnnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherAnnAfterText
	waitbutton
	closetext
	end

Route31MailRecipientScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM50_NIGHTMARE
	iftrue .DescribeNightmare
	checkevent EVENT_GOT_KENYA
	iftrue .TryGiveKenya
	writetext Text_Route31SleepyMan
	waitbutton
	closetext
	end

.TryGiveKenya:
	writetext Text_Route31SleepyManGotMail
	buttonsound
	checkpokemail ReceivedSpearowMailText
	ifequal POKEMAIL_WRONG_MAIL, .WrongMail
	ifequal POKEMAIL_REFUSED, .Refused
	ifequal POKEMAIL_NO_MAIL, .NoMail
	ifequal POKEMAIL_LAST_MON, .LastMon
	; POKEMAIL_CORRECT
	writetext Text_Route31HandOverMailMon
	buttonsound
	writetext Text_Route31ReadingMail
	buttonsound
	setevent EVENT_GAVE_KENYA
	verbosegiveitem TM_NIGHTMARE
	iffalse .NoRoomForItems
	setevent EVENT_GOT_TM50_NIGHTMARE
.DescribeNightmare:
	writetext Text_Route31DescribeNightmare
	waitbutton
.NoRoomForItems:
	closetext
	end

.WrongMail:
	writetext Text_Route31WrongMail
	waitbutton
	closetext
	end

.NoMail:
	writetext Text_Route31MissingMail
	waitbutton
	closetext
	end

.Refused:
	writetext Text_Route31DeclinedToHandOverMail
	waitbutton
	closetext
	end

.LastMon:
	writetext Text_Route31CantTakeLastMon
	waitbutton
	closetext
	end

ReceivedSpearowMailText:
	db   "DARK CAVE leads"
	next "to another road@"

Route31Sign:
	jumptext Route31SignText

DarkCaveSign:
	jumptext MrPokemonHouseText

Route31CooltrainerMScript:
	jumptextfaceplayer Route31CooltrainerMText

Route31FruitTree:
	fruittree FRUITTREE_ROUTE_31

Route31Potion:
	itemball POTION

Route31PokeBall:
	itemball POKE_BALL

Route31CooltrainerMText:
	text "DARK CAVE…"

	para "If #MON could"
	line "light it up, I'd"
	cont "explore it."
	done

InstructorStanley1SeenText:
	text "Do you want to"
	line "learn about"
	cont "BERRIES?"
	done

InstructorStanley1BeatenText:
	text "Oh…I guess not…"
	done

InstructorStanley1AfterText:
	text "We take kids out"
	line "here for some"

	para "experience out in"
	line "the real world"

	para "pretty frequently."
	done

Text_Route31SleepyMan:
	text "… Hnuurg… Huh?"

	para "I walked too far"
	line "today looking for"
	cont "#MON."

	para "My feet hurt and"
	line "I'm sleepy…"

	para "If I were a wild"
	line "#MON, I'd be"
	cont "easy to catch…"

	para "…Zzzz…"
	done

Text_Route31SleepyManGotMail:
	text "…Zzzz… Huh?"

	para "What's that? You"
	line "have MAIL for me?"
	done

Text_Route31HandOverMailMon:
	text "<PLAYER> handed"
	line "over the #MON"
	cont "holding the MAIL."
	done

Text_Route31ReadingMail:
	text "Let's see…"

	para "…DARK CAVE leads"
	line "to another road…"

	para "That's good to"
	line "know."

	para "Thanks for bring-"
	line "ing this to me."

	para "My friend's a good"
	line "guy, and you're"
	cont "swell too!"

	para "I'd like to do"
	line "something good in"
	cont "return too!"

	para "I know! I want you"
	line "to have this!"
	done

Text_Route31DescribeNightmare:
	text "TM50 is NIGHTMARE."

	para "It's a wicked move"
	line "that steadily cuts"

	para "the HP of a sleep-"
	line "ing enemy."

	para "Ooooh…"
	line "That's scary…"

	para "I don't want to"
	line "have bad dreams."
	done

Text_Route31WrongMail:
	text "This MAIL isn't"
	line "for me."
	done

Text_Route31MissingMail:
	text "Why is this #-"
	line "MON so special?"

	para "It doesn't have"
	line "any MAIL."
	done

Text_Route31DeclinedToHandOverMail:
	text "What? You don't"
	line "want anything?"
	done

Text_Route31CantTakeLastMon:
	text "If I take that"
	line "#MON from you,"

	para "what are you going"
	line "to use in battle?"
	done

Route31SignText:
	text "ROUTE 31"

	para "VIOLET CITY -"
	line "CHERRYGROVE CITY"
	done

MrPokemonHouseText:
	text "MR. #MON's"
	line "HOUSE"
	done
	
YoungsterMaxSeenText:
	text "Hahaha!"
	line "Prepare to lose!"
	done

YoungsterMaxBeatenText:
	text "You must've"
	line "cheated!"
	done

YoungsterMaxAfterText:
	text "I'm unstoppable!"
	line "I always beat"
	cont "everyone else in"

	para "my class!"
	done
	
LassSamSeenText:
	text "Woo! Finally, my"
	line "first trainer"
	cont "battle!"
	done
	
LassSamBeatenText:
	text "And I lose."
	line "Great."
	done
	
LassSamAfterText:
	text "This is the first"
	line "time the teachers"
	cont "have taken me out"
	
	para "for some #MON"
	line "action outside of"
	cont "the school."
	done
	
TeacherAnnSeenText:
	text "Pay attention!"
	done
	
TeacherAnnBeatenText:
	text "Oh, you're not"
	line "a student."
	done
	
TeacherAnnAfterText:
	text "I hope you still"
	line "learned from our"
	cont "battle."
	done

Route31_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 21,  3, MR_POKEMONS_HOUSE, 1
	warp_event  2,  8, ROUTE_31_VIOLET_GATE, 3
	warp_event  2,  9, ROUTE_31_VIOLET_GATE, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 19,  3, BGEVENT_READ, MrPokemonHouseText

	db 8 ; object events
	object_event  8,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31MailRecipientScript, -1
	object_event 23,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerInstructorStanley, -1
	object_event 10,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31FruitTree, -1
	object_event 35,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31Potion, EVENT_ROUTE_31_POTION
	object_event 36,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route31PokeBall, EVENT_ROUTE_31_POKE_BALL
	object_event 13, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerYoungsterMax, -1
	object_event 27, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassSam, -1
	object_event 16,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerTeacherAnn, -1
