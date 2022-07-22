	object_const_def ; object_event constants
	const ROUTE34_SILVER
	const ROUTE34_ROCKET1
	const ROUTE34_WILL
	const ROUTE34_ROCKET2

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

Route34_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 2 ; coord events
	coord_event 11, 28, SCENE_ROUTE34_NOTHING, Route34_WillEventTrigger1
	coord_event 10, 28, SCENE_ROUTE34_NOTHING, Route34_WillEventTrigger2

	db 0 ; bg events

	db 4 ; object events
	object_event  9,  2, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route34Silver, -1
	object_event  5, 23, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE34_WILL
	object_event  6, 23, SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE34_WILL
	object_event  7, 23, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE34_WILL
