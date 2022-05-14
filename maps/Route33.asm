	object_const_def
	const ROUTE33_ROCKET_1
	const ROUTE33_ROCKET_2
	const ROUTE33_ROCKET_HYUCK
	const ROUTE33_KAREN
	const ROUTE33_KURT
	const ROUTE33_BUGSY

Route33_MapScripts:
	db 2 ; scene scripts
	scene_script .EmptyScene ; SCENE_ROUTE33_NOTHING
	scene_script .EmptyScene ; SCENE_ROUTE33_BATTLED_KAREN

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .LoadCallback

.LoadCallback:
	setevent EVENT_ROUTE33_BUGSY_APPEARS
	return

.EmptyScene:
	end

TrainerRoute33RocketGrunt1:
	trainer GRUNTM, GRUNTM_ROUTE_33, EVENT_BEAT_ROUTE33_ROCKET_1, .Seen, .Beaten, 0, .After

.Seen
	text "Hey! Get out of"
	line "here, brat!"

	para "My back hurts so"
	line "bad, and the last"
	para "thing I need to"
	line "deal with are nosy"
	cont "kids!"
	done

.Beaten
	text "Gah! I feel like"
	line "I'm eighty!"
	done

.After
	endifjustbattled
	jumptext .AfterText
	end

.AfterText
	text "Having to march"
	line "across half the"
	para "region and then"
	line "climb MT. HIVE"
	para "really did a"
	line "number on my back!"

	para "Geez!"
	done

TrainerRoute33RocketGrunt2:
	trainer GRUNTF, GRUNTF_ROUTE_33, EVENT_BEAT_ROUTE33_ROCKET_2, .Seen, .Beaten, 0, .After

.Seen
	text "Kid, get out of"
	line "here."

	para "Now."
	done

.Beaten
	text "Listen to me."
	done

.After
	; talk to player right after battling - it's just that important
	jumptext .AfterText
	end

.AfterText
	text "Seriously, leave."
	
	para "You don't want to"
	line "mess with KAREN."
	para "She'll let her"
	line "HOUNDOUR burn you"
	cont "so badly."

	para "Do it for your"
	line "sake."
	done

TrainerRoute33Hyuck:
	trainer GRUNTM, GRUNTM_ROUTE_33_HYUCK, EVENT_BEAT_ROUTE33_ROCKET_HYUCK, .Seen, .Beaten, 0, .After
	end

.Seen
	text "Hyuck-hyuck-hyuck!"
	para "Who do you think"
	line "you are?"
	done

.Beaten
	text "Hyuck! You're"
	line "pretty good!"
	done

.After
	endifjustbattled
	jumptext .AfterText
	end

.AfterText
	;     XXXXXXXXXXXXXXXXXX
	text "Looks like I found"
	line "myself a worthy"
	cont "rival!"

	para "Hyuck!"
	done

Route33_EncounterKaren1: ; top
	scall Route33_EncounterKarenIntro
	applymovement ROUTE33_KAREN, .MoveToPlayer
	scall Route33_EncounterKarenEnd
	applymovement ROUTE33_KAREN, .MoveAway
	disappear ROUTE33_KAREN
	playmapmusic
	applymovement ROUTE33_KURT, .KurtToPlayer
	scall Route33_KurtTalksToPlayer
	moveobject ROUTE33_BUGSY, 0, 6
	appear ROUTE33_BUGSY
	applymovement ROUTE33_BUGSY, Route33_BugsyToKurt
	scall Route33_BugsyKurtTalk
	applymovement ROUTE33_KURT, .KurtGoingHome
	disappear ROUTE33_KURT
	applymovement ROUTE33_BUGSY, Route33_BugsyToPlayer
	scall Route33BugsyPlayerTalk
	applymovement ROUTE33_BUGSY, .BugsyGoingHome
	disappear ROUTE33_BUGSY
	setmapscene ALDER_TOWN, SCENE_ALDER_TOWN_GYM_UNLOCKED
	end

.MoveToPlayer:
	step RIGHT
	step_end

.MoveAway:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.KurtToPlayer:
	step UP
	step RIGHT
	step_end

.KurtGoingHome:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.BugsyGoingHome:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step_end

Route33_EncounterKaren2: ; 2nd from north
	scall Route33_EncounterKarenIntro
	applymovement ROUTE33_KAREN, .MoveToPlayer
	scall Route33_EncounterKarenEnd
	applymovement ROUTE33_KAREN, .MoveAway
	disappear ROUTE33_KAREN
	playmapmusic
	applymovement ROUTE33_KURT, .KurtToPlayer
	scall Route33_KurtTalksToPlayer
	moveobject ROUTE33_BUGSY, 0, 7
	appear ROUTE33_BUGSY
	applymovement ROUTE33_BUGSY, Route33_BugsyToKurt
	scall Route33_BugsyKurtTalk
	applymovement ROUTE33_KURT, .KurtGoingHome
	disappear ROUTE33_KURT
	applymovement ROUTE33_BUGSY, Route33_BugsyToPlayer
	scall Route33BugsyPlayerTalk
	applymovement ROUTE33_BUGSY, .BugsyGoingHome
	disappear ROUTE33_BUGSY
	setmapscene ALDER_TOWN, SCENE_ALDER_TOWN_GYM_UNLOCKED
	end

.MoveToPlayer:
	step RIGHT
	step DOWN
	turn_head RIGHT
	step_end

.MoveAway:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.KurtToPlayer:
	step RIGHT
	step_end

.KurtGoingHome:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.BugsyGoingHome:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step_end

Route33_EncounterKaren3: ; 3rd from north
	turnobject PLAYER, UP
	scall Route33_EncounterKarenIntro
	applymovement ROUTE33_KAREN, .MoveToPlayer
	turnobject PLAYER, LEFT
	scall Route33_EncounterKarenEnd
	applymovement ROUTE33_KAREN, .MoveAway
	disappear ROUTE33_KAREN
	playmapmusic
	applymovement ROUTE33_KURT, .KurtToPlayer
	scall Route33_KurtTalksToPlayer
	moveobject ROUTE33_BUGSY, 0, 8
	appear ROUTE33_BUGSY
	applymovement ROUTE33_BUGSY, Route33_BugsyToKurt
	scall Route33_BugsyKurtTalk
	applymovement ROUTE33_KURT, .KurtGoingHome
	disappear ROUTE33_KURT
	applymovement ROUTE33_BUGSY, Route33_BugsyToPlayer
	scall Route33BugsyPlayerTalk
	applymovement ROUTE33_BUGSY, .BugsyGoingHome
	disappear ROUTE33_BUGSY
	setmapscene ALDER_TOWN, SCENE_ALDER_TOWN_GYM_UNLOCKED
	end

.BugsyGoingHome:
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step_end

.MoveToPlayer:
	step RIGHT
	step DOWN
	step DOWN
	turn_head RIGHT
	step_end

.MoveAway:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.KurtToPlayer:
	step DOWN
	step RIGHT
	step_end

.KurtGoingHome:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route33_EncounterKaren4: ; bottom
	turnobject PLAYER, UP
	scall Route33_EncounterKarenIntro
	applymovement ROUTE33_KAREN, .MoveToPlayer
	turnobject PLAYER, LEFT
	scall Route33_EncounterKarenEnd
	applymovement ROUTE33_KAREN, .MoveAway
	disappear ROUTE33_KAREN
	playmapmusic
	applymovement ROUTE33_KURT, .KurtToPlayer
	scall Route33_KurtTalksToPlayer
	moveobject ROUTE33_BUGSY, 0, 9
	appear ROUTE33_BUGSY
	applymovement ROUTE33_BUGSY, Route33_BugsyToKurt
	scall Route33_BugsyKurtTalk
	applymovement ROUTE33_KURT, .KurtGoingHome
	disappear ROUTE33_KURT
	applymovement ROUTE33_BUGSY, Route33_BugsyToPlayer
	scall Route33BugsyPlayerTalk
	applymovement ROUTE33_BUGSY, .BugsyGoingHome
	disappear ROUTE33_BUGSY
	setmapscene ALDER_TOWN, SCENE_ALDER_TOWN_GYM_UNLOCKED
	end

.MoveToPlayer:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	turn_head RIGHT
	step_end

.MoveAway:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.KurtToPlayer:
	step DOWN
	step DOWN
	step RIGHT
	step_end

.KurtGoingHome:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

.BugsyGoingHome:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step_end

Route33_BugsyToKurt:
	step RIGHT
Route33_BugsyToPlayer:
	step RIGHT
	step_end

Route33_KurtTalksToPlayer:
	faceobject PLAYER, ROUTE33_KURT
	jumptext .Text

.Text:
	text "KURT: Thank you so"
	line "much for saving"
	cont "me, child."

	para "I was able to"
	line "drive off a few of"
	para "those blasted"
	line "ROCKETs, but"
	para "eventually I got"
	line "overwhelmed."

	para "So sorry for"
	line "having you do what"
	para "I should've"
	line "accomplished."
	done

Route33_BugsyKurtTalk:
	turnobject ROUTE33_KURT, LEFT
	opentext
	writetext .BugsyText
	waitbutton
	closetext
	jumptext .KurtText

.BugsyText:
	text "BUGSY: Oh, hello"
	line "KURT."

	para "How are you doing"
	line "today?"
	done

.KurtText:
	text "KURT: Not well, I'm"
	line "afraid."

	para "I was just"
	line "ambushed by some"
	para "TEAM ROCKET"
	line "hooligans, and"
	para "their leader"
	line "brought so much"
	cont "pain upon my back."

	para "I'm going to have"
	line "to stay at the"
	para "#MON CENTER"
	line "before I make it"
	cont "back home."
	done

Route33BugsyPlayerTalk:
	jumptext .Text

.Text:
	text "I assume you came"
	line "to KURT's aid, yes?"

	para "I'm BUGSY."

	para "I'm the GYM LEADER"
	line "in ALDER TOWN."

	para "I just finished my"
	line "weekly outdoor"
	para "studies on BUG"
	line "types, so I'll be"
	para "back at the GYM"
	line "for a good while"
	cont "now."

	para "Hope to see you"
	line "there."
	done

Route33_EncounterKarenIntro:
	playmusic MUSIC_ROCKET_ENCOUNTER

	opentext
	writetext Route33_KarenText1
	waitbutton
	closetext

	opentext
	writetext Route33_KurtText
	waitbutton
	closetext

	opentext
	writetext Route33_KarenText2
	waitbutton
	closetext

	turnobject ROUTE33_KURT, RIGHT
	turnobject ROUTE33_KAREN, RIGHT
	showemote EMOTE_SHOCK, ROUTE33_KAREN, 15
	end

Route33_EncounterKarenEnd:
	opentext
	writetext Route33_KarenText3
	waitbutton
	closetext

; battle
	winlosstext .WinText, 0
	loadtrainer KAREN, KAREN1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER

	setevent EVENT_BEAT_ROUTE33_KAREN

	opentext
	writetext .AfterText
	waitbutton
	closetext

	setscene SCENE_ROUTE33_BATTLED_KAREN
	end

.WinText:
	text "What?! How'd you"
	line "beat me?!"
	done

.AfterText:
	text "Gah!"

	para "You're lucky I"
	line "didn't bring all of"
	para "my #MON for"
	line "this mission,"

	para "or else you would"
	line "have gone through"
	cont "a world of pain!"

	para "Just know that not"
	line "only are you on"
	para "TEAM ROCKET's hit-"
	line "list, but we'll"
	para "come back for the"
	line "old man later!"

	para "Sayonara, pest!"
	done

Route33_KarenText1:
	text "KAREN: Look, I may"
	line "be in a generous"
	para "mood, but that"
	line "doesn't mean I'm"
	para "going to accept"
	line "your nonsense,"
	cont "old man!"

	para "Now you're going"
	line "to make us some"
	para "# BALLS that"
	line "can master the"
	para "likes of MASTER"
	line "BALLs, and you're"
	cont "going to like it!"
	done

Route33_KurtText:
	text "KURT: I already"
	line "told you!"

	para "I refuse to make"
	line "fiendish tools!"

	para "# BALLS that"
	line "not only guarantee"
	para "capture, as well"
	line "as corrupt the"
	para "poor #MON that"
	line "they capture<...>"

	para "Such vile weapons"
	line "should not exist!"
	done

Route33_KarenText2:
	text "KAREN: Keep saying"
	line "that, and I'll have"
	para "my SNEASEL come"
	line "back out to cut"
	cont "you up some more!"
	done

Route33_KarenText3:
	text "Oh great, now a"
	line "kid insists on"
	para "getting in the"
	line "way?"

	para "That's it!"

	para "My generous mood"
	line "is gone!"

	para "Face the fiery"
	line "wrath of TEAM"
	cont "ROCKET, twerp!"
	done

Route33_Sign:
	jumptext .Text

.Text
	text "ROUTE 33"
	para "ALDER TOWN -"
	line "AZALEA TOWN"
	para "Thru MT. HIVE"
	done

Route33_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 4 ; coord events
	coord_event  4,  6, SCENE_ROUTE33_NOTHING, Route33_EncounterKaren1
	coord_event  4,  7, SCENE_ROUTE33_NOTHING, Route33_EncounterKaren2
	coord_event  4,  8, SCENE_ROUTE33_NOTHING, Route33_EncounterKaren3
	coord_event  4,  9, SCENE_ROUTE33_NOTHING, Route33_EncounterKaren4

	db 1 ; bg events
	bg_event 36,  6, BGEVENT_READ, Route33_Sign

	db 6 ; object events
	object_event 34, 10, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, \
					0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRoute33RocketGrunt1, EVENT_BEAT_ROUTE33_KAREN
	object_event 29,  8, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, \
					0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRoute33RocketGrunt2, EVENT_BEAT_ROUTE33_KAREN
	object_event 13, 10, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, \
					0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRoute33Hyuck, -1

	object_event  2,  6, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, \
					0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_BEAT_ROUTE33_KAREN
	object_event  2,  7, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, \
					0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_BEAT_ROUTE33_KAREN
	object_event  0,  0, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_RIGHT, \
					0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_ROUTE33_BUGSY_APPEARS
