	object_const_def ; object_event constants
	const ROUTE34_SILVER
	const ROUTE34_ROCKET1
	const ROUTE34_WILL
	const ROUTE34_ROCKET2
	const ROUTE34_SHUCKLE
	const ROUTE34_SOLDIER
	const ROUTE34_LASS1
	const ROUTE34_LASS2
	const ROUTE34_LASS3
	const ROUTE34_POKEFAN

Route34_MapScripts:
	db 2 ; scene scripts
	scene_script .EmptyScene ; SCENE_ROUTE34_NOTHING
	scene_script .EmptyScene ; SCENE_ROUTE34_FOUGHT_WILL

	db 0 ; callbacks

.EmptyScene:
	end

; scripts here
Route34Silver:
	faceplayer
	waitsfx
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE34_SILVER, 15
	opentext
	writetext .Text
	waitbutton
	closetext
	setevent EVENT_AZALEA_POKECENTER_SHOW_SAVE_DIALOG
	credits
	end

.Text:
	text "Hey <PLAYER>!"
	line "You finally made"
	cont "it!"
	para "How was MT. HIVE?"
	line "I thought you'd get"
	cont "lost in it!"
	para "I caught some"
	line "cool bug #MON!"
	para "You better step it"
	line "up if you wanna"
	cont "keep up with me!"
	para "Welp, I'm off to"
	line "challenge the GYM"
	cont "in GOLDENROD!"
	para "Catch ya later!"
	done

Route34_WillEventIntroText:
	text "???: Well, I just"
	line "got a call from"
	cont "the other two."
	para "They got those"
	line "ELECTRODE we got"
	para "from KANTO to the"
	line "base."
	para "???: Excellent."
	line "We're officially"
	para "one step closer to"
	line "our goal now."
	done

Route34_WillEventTrigger1:
	opentext
	writetext Route34_WillEventIntroText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 18
	applymovement PLAYER, .MoveLeft
	sjump Route34_WillEventTriggerCommon

.MoveLeft:
	step LEFT
	step_end

Route34_WillEventTrigger2:
	opentext
	writetext Route34_WillEventIntroText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 18

Route34_WillEventTriggerCommon:
	applymovement PLAYER, .MoveToPosition
	opentext
	writetext .RocketWillIntroText
	waitbutton
	closetext
	turnobject ROUTE34_ROCKET1, DOWN
	turnobject ROUTE34_WILL, DOWN
	turnobject ROUTE34_ROCKET2, DOWN
	playmusic MUSIC_ROCKET_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE34_ROCKET2, 18
	applymovement ROUTE34_ROCKET2, .Rocket2ToPlayer
	opentext
	writetext .RocketNoticeText
	waitbutton
	closetext
	checkfollower
	iffalse .no_walkmon
; has follower
	applymovement ROUTE34_ROCKET1, .Rocket1ToPlayer_WithWalkMon
	turnobject FOLLOWER, LEFT
	sjump .rocket1_interrogates
.no_walkmon
	applymovement ROUTE34_ROCKET1, .Rocket1ToPlayer_WithoutWalkMon
.rocket1_interrogates
	turnobject PLAYER, DOWN
	opentext
	writetext .RocketNoticeText2
	waitbutton
	closetext
	opentext
	writetext .WillRelaxText
	waitbutton
	closetext
	opentext
	writetext .RocketsOKText
	waitbutton
	closetext
	checkfollower
	iffalse .no_walkmon2
	turnobject FOLLOWER, RIGHT
	applymovement ROUTE34_ROCKET1, .Rocket1BeginEscape_WithWalkMon
	turnobject FOLLOWER, UP
	sjump .rocket1_in_escape_position
.no_walkmon2
	applymovement ROUTE34_ROCKET1, .Rocket1BeginEscape
.rocket1_in_escape_position
	turnobject PLAYER, UP
	follow ROUTE34_ROCKET1, ROUTE34_ROCKET2
	applymovement ROUTE34_ROCKET1, .Rocket1DoEscape
	stopfollow
	applymovement ROUTE34_WILL, .WillToPlayer
	turnobject FOLLOWER, UP
	opentext
	writetext .WillEncounterText
	waitbutton
	closetext
	setlasttalked ROUTE34_WILL
	winlosstext .WillWinText, 0
	loadtrainer WILL, WILL1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	setevent EVENT_BEAT_ROUTE34_WILL
	setscene SCENE_ROUTE34_FOUGHT_WILL
	opentext
	writetext .WillEscapeText
	waitbutton
	closetext
	applymovement ROUTE34_WILL, .WillEscapes
	disappear ROUTE34_WILL
	disappear ROUTE34_ROCKET1
	disappear ROUTE34_ROCKET2
	special FadeOutMusic
	pause 15
	playmapmusic
	end

.WillEscapes:
	step UP
	step UP
	step UP
	step UP
	step_end

.WillToPlayer:
	step RIGHT
	step DOWN
	step DOWN
	step_end

.Rocket1BeginEscape_WithWalkMon:
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	step_end

.Rocket1BeginEscape:
	big_step RIGHT
	big_step UP
	big_step UP
	step_end

.Rocket1DoEscape:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

.Rocket1ToPlayer_WithWalkMon:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end

.Rocket1ToPlayer_WithoutWalkMon:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

.Rocket2ToPlayer:
	step DOWN
	step DOWN
	step_end

.MoveToPosition:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

.RocketWillIntroText:
	text "ROCKET: Yeah<...>"
	line "I'm sorry about"
	para "getting myself"
	line "caught by the cops"
	para "during that heist"
	line "though."
	para "WILL: Why are you"
	line "apologizing?"
	para "You got caught be-"
	line "cause you were"
	para "holding them off"
	line "for us all on your"
	cont "own."
	para "Rescuing you was"
	line "the least we could"
	cont "do."
	para "ROCKET: Daw<...>"
	line "thanks, WILL."
	done

.RocketNoticeText:
	text "ROCKET: Hey!"
	line "Hold up! This kid's"
	cont "been spying on us!"
	done

.RocketNoticeText2:
	text "What? A little"
	line "spy, huh?!"
	para "Trying to tell the"
	line "cops on us, are"
	cont "you?!"
	done

.WillRelaxText:
	text "WILL: Gentlemen,"
	line "relax. I will"
	cont "handle the child."
	para "You two just move"
	line "and head back to"
	cont "base."
	done

.RocketsOKText:
	text "Oh<...> uh, alright"
	line "WILL, whatever you"
	cont "say."
	done

.WillEncounterText:
	text "WILL: Now then<...>"
	para "I can't just let"
	line "you run off to the"
	cont "police, now can I?"
	para "Looks like I'll"
	line "have to use my"
	para "psychic powers to"
	line "cleanse your mind"
	cont "of this encounter."
	done

.WillWinText:
	text "Well, well."
	para "You're quite"
	line "strong."
	done

.WillEscapeText:
	text "You're quite strong"
	line "for a child, I'll"
	cont "give you that."
	para "Just don't get in"
	line "our way again."
	para "I cannot guaran-"
	line "tee that any"
	para "future attempts to"
	line "stand up to us"
	para "will go well for"
	line "you."
	done

Route34Shuckle:
	faceplayer
	opentext
	writetext .Txt
	cry SHUCKLE
	waitbutton
	closetext
	loadwildmon SHUCKLE, 14
	startbattle
	disappear ROUTE34_SHUCKLE
	reloadmapafterbattle
	setevent EVENT_ENCOUNTERED_ROUTE34_SHUCKLE
	end

.Txt:
	text "Hydriiiiii!"
	done

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

TrainerLassRuby:
	trainer LASS, RUBY, EVENT_BEAT_LASS_RUBY, .SeenTxt, .WinTxt, 0, .PostScript
.SeenTxt:
	text "My grandmother is"
	line "AGATHA of the"
	cont "INDIGO ELITE FOUR!"
	para "So you think you"
	line "can beat me?"
	done

.WinTxt:
	text "<...>What will grand-"
	line "ma think about"
	cont "this?"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt
.PSTxt:
	text "Status does not"
	line "always equal"
	cont "skill."
	para "But I will train"
	line "more to beat you"
	cont "someday!"
	done

TrainerLassNancy:
	trainer LASS, NANCY, EVENT_BEAT_LASS_NANCY, .SeenTxt, .WinTxt, 0, .PostScript
.SeenTxt:
	text "Eggs are"
	line "delicious!"
	done

.WinTxt:
	text "Do you like eggs,"
	line "too?"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt
.PSTxt:
	text "I prefer mine"
	line "fried, but other"
	para "ways are good as"
	line "well."
	done

TrainerLassCharlotte:
	trainer LASS, CHARLOTTE, EVENT_BEAT_LASS_CHARLOTTE, .SeenTxt, .WinTxt, 0, .PostScript
.SeenTxt:
	text "My PICHU is the"
	line "greatest!"
	done

.WinTxt:
	text "No, my PICHU!"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PSTxt
.PSTxt:
	text "Why does everyone"
	line "go crazy over"
	para "PIKACHU when PICHU"
	line "is clearly so much"
	cont "more cuter?"
	done

TrainerPokefanAriel:
	trainer POKEFANF, PKF_ARIEL, EVENT_BEAT_PKF_ARIEL, PKFArielSeenTxt, PKFArielWinTxt, 0, PKFArielScript

PKFArielSeenTxt:
	text "Real #FANS like"
	line "me adore RAICHU!"
	done

PKFArielWinTxt:
	text "No! My precious"
	line "RAICHU!"
	done

PKFArielScript:
	endifjustbattled
	jumptextfaceplayer .Txt
.Txt:
	text "Seriously, RAICHU"
	line "is the best."
	para "Too bad everyone's"
	line "busy fawning over"
	cont "PIKACHU<...>"
	done

Route34_PokefanFHack:
	checkevent EVENT_BEAT_PKF_ARIEL
	iftrue .skip
	loadtrainer POKEFANF, PKF_ARIEL
	encountermusic
	setlasttalked ROUTE34_POKEFAN
	showemote EMOTE_SHOCK, LAST_TALKED, 30
	applymovement PLAYER, .PlayerToTrainer
	opentext
	writetext PKFArielSeenTxt
	waitbutton
	closetext
	winlosstext PKFArielWinTxt, 0
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PKF_ARIEL
.skip
	end

.PlayerToTrainer: ; we do a little trolling
	step LEFT
	step_end

Route34_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 3 ; coord events
	coord_event 11, 28, SCENE_ROUTE34_NOTHING, Route34_WillEventTrigger1
	coord_event 10, 28, SCENE_ROUTE34_NOTHING, Route34_WillEventTrigger2
	coord_event  5,  9, SCENE_ROUTE34_FOUGHT_WILL, Route34_PokefanFHack

	db 0 ; bg events

	db 10 ; object events
	object_event  9,  2, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route34Silver, -1
	object_event  5, 23, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE34_WILL
	object_event  6, 23, SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE34_WILL
	object_event  7, 23, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE34_WILL
	object_event  8, 14, SPRITE_SHUCKLE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route34Shuckle, EVENT_ENCOUNTERED_ROUTE34_SHUCKLE
	object_event 10, 21, SPRITE_MANCHILD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerManchildZachary, -1
	object_event 11, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassRuby, -1
	object_event 10, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassNancy, -1
	object_event 11, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassCharlotte, -1
	object_event  3,  9, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPokefanAriel, -1
