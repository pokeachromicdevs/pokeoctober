	object_const_def ; object_event constants
	const ALDERGYM_BUGSY
	const ALDERGYM_BUG_CATCHER1
	const ALDERGYM_BUG_CATCHER2
	const ALDERGYM_BUG_CATCHER3
	const ALDERGYM_TWIN1
	const ALDERGYM_TWIN2
	const ALDERGYM_GYM_GUY

AlderGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AlderGymBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_KURT_IN_ALDER_POKEMON_CENTER
	opentext
	writetext BugsyText_AboutToGiveBadgeSpeech
	waitbutton
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_MEI_AND_LEI
	setevent EVENT_BEAT_BUG_CATCHER_SHELBY
	setevent EVENT_BEAT_BUG_CATCHER_YUKIJI
	setevent EVENT_BEAT_PICNICKER_JAMIE
	writetext BugsyText_HiveBadgeSpeech
	buttonsound
	verbosegivetmhm FURY_CUTTER_TMNUM
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
.NoRoomForFuryCutter:
	closetext
	end

TrainerTwinsMeiAndLei1:
	trainer TWINS, MEIANDLEI1, EVENT_BEAT_TWINS_MEI_AND_LEI, TwinsMeiAndLei1SeenText, TwinsMeiAndLei1BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsMeiAndLei1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsMeiAndLei2:
	trainer TWINS, MEIANDLEI2, EVENT_BEAT_TWINS_MEI_AND_LEI, TwinsMeiAndLei2SeenText, TwinsMeiAndLei2BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsMeiAndLei2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherShelby:
	trainer BUG_CATCHER, SHELBY, EVENT_BEAT_BUG_CATCHER_SHELBY, BugCatcherShelbySeenText, BugCatcherShelbyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherShelbyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherYukiji:
	trainer BUG_CATCHER, YUKIJI, EVENT_BEAT_BUG_CATCHER_YUKIJI, BugCatcherYukijiSeenText, BugCatcherYukijiBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherYukijiAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerJamie:
	trainer PICNICKER, JAMIE, EVENT_BEAT_PICNICKER_JAMIE, PicnickerJamieSeenText, PicnickerJamieBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext PicnickerJamieAfterBattleText
	waitbutton
	closetext
	end

AlderGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AlderGymGuyWinScript
	opentext
	writetext AlderGymGuyText
	waitbutton
	closetext
	end

.AlderGymGuyWinScript:
	opentext
	writetext AlderGymGuyWinText
	waitbutton
	closetext
	end

AlderGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd gymstatue2

BugsyText_INeverLose:
	text "Ah, there you are."
	para "While I've only"
	line "been a GYM LEADER"
	para "for only about a"
	line "year now, I've"
	para "been studying and"
	line "training bug-types"
	para "for most of my"
	line "life."
	para "My family may not"
	line "have approved of"
	para "my studies, but"
	line "they have gotten"
	cont "me where I am now."
	para "Now then, let me"
	line "show you what I've"
	cont "learned."
	done

BugsyText_ResearchIncomplete:
	text "As expected, I"
	line "still have much to"
	cont "learn."
	para "Thank you."
	done

BugsyText_AboutToGiveBadgeSpeech:
	text "Victory is yours,"
	line "and so is the"
	cont "HIVEBADGE."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> received"
	line "HIVEBADGE."
	done

BugsyText_HiveBadgeSpeech:
	text "The HIVEBADGE,"
	line "named after the"
	para "nearby MT. HIVE,"
	line "blesses your"
	para "POKEMON with"
	line "boosted speed."
	para "It also grants you"
	line "the power to use"
	para "STRONG ARM outside"
	line "of battle."
	para "And before you go,"
	line "please take this."
	done

BugsyText_FuryCutterSpeech:
	text "That is TM49,"
	line "FURY CUTTER."
	para "Consecutive hits"
	line "with FURY CUTTER"
	para "increases its"
	line "power."
	para "Just be sure not"
	line "to miss, or else"
	para "its power will"
	line "revert to normal."
	done

BugsyText_BugMonsAreDeep:
	text "Bug #MON are"
	line "deep. There are"

	para "many mysteries to"
	line "be explored."

	para "Study your favor-"
	line "ites thoroughly."
	done

BugCatcherShelbySeenText:
	text "Bug-types evolve"
	line "really fast!"
	para "And with my fully-"
	line "evolved #MON,"
	cont "I will crush you!"
	done

BugCatcherShelbyBeatenText:
	text "Curses! Beaten"
	line "again!"
	done

BugCatcherShelbyAfterBattleText:
	text "Just you wait! I'll"
	line "have a whole army"
	para "of fully evolved"
	line "bug-types within"
	para "days, and then"
	line "we'll rule the"
	cont "world!"
	para "Muwahaha! Try"
	line "stomping on us"
	cont "then!"
	done

BugCatcherYukijiSeenText:
	text "I am the legendary"
	line "bug samurai!"
	para "Let us duel!"
	done

BugCatcherYukijiBeatenText:
	text "You're quite the"
	line "warrior."
	done

BugCatcherYukijiAfterBattleText:
	text "Once I am done"
	line "training here, I"
	para "will travel the"
	line "globe once more."
	para "May we meet again"
	line "then."
	done

PicnickerJamieSeenText:
	text "Where would we be"
	line "without bug-types"
	para "to pollinate the"
	line "flowers?"
	done

PicnickerJamieBeatenText:
	text "Hey! Be nice to my"
	line "bug-types!"
	done

PicnickerJamieAfterBattleText:
	text "Without bug-types"
	line "to pollinate stuff"
	para "we'd probably be"
	line "dead."
	para "Or, we'd be without"
	line "significantly less"
	para "BEEDRILL stings, I"
	line "guess."
	done

TwinsMeiAndLei1SeenText:
	text "MEI: You better"
	line "get ready for a"
	cont "melee!"
	done

TwinsMeiAndLei1BeatenText:
	text "MEI: We've lost<...>"
	line "How could this"
	cont "happen?"
	done

TwinsMeiAndLei1AfterBattleText:
	text "MEI: No! We lost!"
	done

TwinsMeiAndLei2SeenText:
	text "LEI: We've never"
	line "lost, and never"
	cont "will!"
	done

TwinsMeiAndLei2BeatenText:
	text "MEI: We've lost<...>"
	line "How could this"
	cont "happen?"
	done

TwinsMeiAndLei2AfterBattleText:
	text "LEI: Bleh<...> losing"
	line "stinks. Just like"
	cont "you."
	done

AlderGymGuyText:
	text "Yo, challenger!"

	para "BUGSY's young, but"
	line "his knowledge of"

	para "bug #MON is for"
	line "real."

	para "It's going to be"
	line "tough without my"
	cont "advice."

	para "Let's see<...> Flying-"
	line "type moves are"
	para "super-effective on"
	line "bug #MON<...>"
	para "<...>and they also"
	line "don't like fire."

	para "But be warned!"
	line "BUGSY equips his"
	para "#MON with FIRE"
	line "MANE, so fire-type"
	para "moves don't deal"
	line "too much damage."
	done

AlderGymGuyWinText:
	text "Well done! That"
	line "was a great clash"

	para "of talented young"
	line "trainers."

	para "With people like"
	line "you, the future of"
	cont "#MON is bright!"
	done

AlderGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 15, ALDER_TOWN, 4
	warp_event  5, 15, ALDER_TOWN, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 13, BGEVENT_READ, AlderGymStatue
	bg_event  6, 13, BGEVENT_READ, AlderGymStatue

	db 7 ; object events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, AlderGymBugsyScript, -1
	object_event  5,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherShelby, -1
	object_event  8,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherYukiji, -1
	object_event  0,  2, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerJamie, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsMeiAndLei1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsMeiAndLei2, -1
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AlderGymGuyScript, -1
