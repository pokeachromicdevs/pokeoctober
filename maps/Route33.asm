	object_const_def
	const ROUTE33_ROCKET_1
	const ROUTE33_ROCKET_2
	const ROUTE33_ROCKET_HYUCK
	const ROUTE33_KAREN
	const ROUTE33_KURT
	const ROUTE33_BUGSY
	const ROUTE33_BLOCKER
	const ROUTE33_RIVAL
	const ROUTE33_NERD
	const ROUTE33_BUG_CATCHER
	const ROUTE33_MANCHILD
	const ROUTE33_FIREBREATHER
	const ROUTE33_HIKER_GUY
	const ROUTE33_KURT_2
	const ROUTE33_ELM
	const ROUTE33_TONBOSS

Route33_MapScripts:
	db 4 ; scene scripts
	scene_script .EmptyScene ; SCENE_ROUTE33_NOTHING
	scene_script .EmptyScene ; SCENE_ROUTE33_BATTLED_KAREN
	scene_script .EmptyScene ; SCENE_ROUTE33_BATTLED_RIVAL
	scene_script .EmptyScene ; SCENE_ROUTE33_BATTLED_KURT

	db 2 ; callbacks
	callback MAPCALLBACK_NEWMAP, .LoadCallback
	callback MAPCALLBACK_SPRITES, .CheckSprites

.LoadCallback:
	setevent EVENT_ROUTE33_BUGSY_APPEARS
	return

.CheckSprites:
; -- switch Karen/Elm --
	checkevent EVENT_BEAT_BUGSY
	iftrue .Elm
	variablesprite SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITE_KAREN
	sjump .ManageSpriteAppears
.Elm
	variablesprite SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITE_ELM
	;sjump .ManageSpriteAppears

.ManageSpriteAppears:
; always hide tonboss
	disappear ROUTE33_TONBOSS
	checkevent EVENT_BEAT_BUGSY
	iftrue .appears
; some npcs disappear before bugsy is beaten
	disappear ROUTE33_HIKER_GUY

	sjump .HideRival
.appears
; some npcs appear once bugsy is beaten
	appear ROUTE33_HIKER_GUY

	;sjump .HideRival
.HideRival:
	checkscene
	iftrue .done ; if not SCENE_ROUTE33_NOTHING
	disappear ROUTE33_RIVAL
.done
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
	text "Looks like I found"
	line "myself a worthy"
	cont "rival!"

	para "Hyuck!"
	done

Route33_EncounterKaren:
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject PLAYER, LEFT

; start dialog
	opentext
	writetext .KarenText1
	waitbutton
	closetext

	opentext
	writetext .KurtText
	waitbutton
	closetext

	opentext
	writetext .KarenText2
	waitbutton
	closetext

; karen and kurt notice player
	turnobject ROUTE33_KURT, RIGHT
	turnobject ROUTE33_KAREN, RIGHT
	showemote EMOTE_SHOCK, ROUTE33_KAREN, 15
	applymovement ROUTE33_KAREN, .KarenToPlayer

	opentext
	writetext .KarenText3
	waitbutton
	closetext

; battle
	winlosstext .WinAgainstKarenText, 0
	loadtrainer KAREN, KAREN1
	startbattle

; after battle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER

	setevent EVENT_BEAT_ROUTE33_KAREN

	opentext
	writetext .AfterBeatingKarenText
	waitbutton
	closetext

	setscene SCENE_ROUTE33_BATTLED_KAREN

; karen goes away
	applymovement ROUTE33_KAREN, .MoveAway
	disappear ROUTE33_KAREN

; kurt thanks player
	special FadeOutMusic
	pause 15
	playmapmusic
	applymovement ROUTE33_KURT, .KurtToPlayer

	faceobject PLAYER, ROUTE33_KURT
	opentext
	writetext .KurtTalksToPlayerText
	waitbutton
	closetext

; wild bugsy appears
	appear ROUTE33_BUGSY
	applymovement ROUTE33_BUGSY, .BugsyToKurt

	turnobject ROUTE33_KURT, LEFT
	opentext
	writetext .BugsyToKurtText
	waitbutton
	closetext

	opentext
	writetext .KurtToBugsyText
	waitbutton
	closetext

; kurt
	hidefollower
	applymovement PLAYER, .PlayerMovesOutOfWay
	applymovement ROUTE33_KURT, .KurtGoingHome
	disappear ROUTE33_KURT
	clearevent EVENT_KURT_IN_ALDER_POKEMON_CENTER

	applymovement ROUTE33_BUGSY, .BugsyToPlayer

; bugsy talks to player
	opentext
	writetext .BugsyPlayerText
	waitbutton
	closetext

; bugsy goes home
	applymovement ROUTE33_BUGSY, .BugsyGoingHome
	disappear ROUTE33_BUGSY

; rockets go away
	disappear ROUTE33_ROCKET_1
	disappear ROUTE33_ROCKET_2
	disappear ROUTE33_ROCKET_HYUCK

	setmapscene ALDER_TOWN, SCENE_ALDER_TOWN_GYM_UNLOCKED
	moveobject FOLLOWER, 43, 11
	showfollower
	end

.KarenText1:
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

.KurtText:
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

.KarenText2:
	text "KAREN: Keep saying"
	line "that, and I'll have"
	para "my SNEASEL come"
	line "back out to cut"
	cont "you up some more!"
	done

.KarenText3:
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

.WinAgainstKarenText:
	text "What?! How'd you"
	line "beat me?!"
	done

.AfterBeatingKarenText:
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

.KurtTalksToPlayerText:
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

.BugsyToKurtText:
	text "BUGSY: Oh, hello"
	line "KURT."

	para "How are you doing"
	line "today?"
	done

.KurtToBugsyText:
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

.BugsyPlayerText:
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

	step RIGHT
	step_end

.MoveAway:
	step LEFT
	step LEFT
	step UP
	step UP
	step LEFT
	step LEFT
	step_end

.KurtToPlayer:
	step UP
	step RIGHT
	step_end

.BugsyToKurt:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step_end

.KarenToPlayer:
	step RIGHT
	step_end

.BugsyToPlayer:
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

.PlayerMovesOutOfWay:
	step DOWN
	turn_head UP
	step_end

.KurtGoingHome:
	step RIGHT
.BugsyGoingHome:
	step UP
	step UP
	step UP
	step UP
	step_end

Route33_Sign:
	jumptext .Text

.Text
	text "ROUTE 33"
	para "ALDER TOWN -"
	line "AZALEA TOWN"
	para "Thru MT. HIVE"
	done

Route33_EncounterRival:
; rival enters the chat
	moveobject ROUTE33_RIVAL, 46, 8
	appear ROUTE33_RIVAL
	turnobject PLAYER, UP
	turnobject FOLLOWER, UP
	applymovement ROUTE33_RIVAL, .RivalEnters
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE33_RIVAL, 15
	opentext
	writetext .RivalIntroText
	waitbutton
	closetext
; battle
	setlasttalked ROUTE33_RIVAL
	winlosstext .WinAgainstRivalText, 0
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .CyndaTeam
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .TotoTeam
.ChikoTeam:
	loadtrainer RIVAL1, RIVAL1_3_CHIKORITA
	sjump .GotTeam
.CyndaTeam:
	loadtrainer RIVAL1, RIVAL1_3_CYNDAQUIL
	sjump .GotTeam
.TotoTeam:
	loadtrainer RIVAL1, RIVAL1_3_TOTODILE
	; sjump .GotTeam
.GotTeam:
	startbattle
; after battle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_AFTER
	setevent EVENT_BEAT_ROUTE33_RIVAL
	opentext
	writetext .RivalAfterText
	waitbutton
	closetext
	setscene SCENE_ROUTE33_BATTLED_RIVAL
; rival goes away
	applymovement PLAYER, .PlayerMovesOutOfWay
	applymovement ROUTE33_RIVAL, .RivalMovesAway
	disappear ROUTE33_RIVAL
	special FadeOutMusic
	pause 15
	playmapmusic
	end

.PlayerMovesOutOfWay:
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

.RivalMovesAway:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step_end

.RivalIntroText:
	text "Hey! You're just"
	line "getting ready to"
	para "challenge the GYM,"
	line "<PLAY_G>?"

	para "I cleared through"
	line "that place a"
	cont "little while ago!"

	para "I even reached the"
	line "next town over in"
	cont "no time!"

	para "Only reason I came"
	line "back here was"
	cont "because<...>"

	para "I, uh, left my"
	line "#DEX in the"
	cont "#MON CENTER."

	para "Whatever!"

	para "All that matters"
	line "is that you're here"
	para "now, and we're"
	line "going to have"
	cont "another rematch!"

	para "Let's go!"
	done

.WinAgainstRivalText:
	text "Come on!"
	para "That's twice now!"
	done

.RivalAfterText:
	text "Ah well, a loss is"
	line "a loss."

	para "Huh? What? What"
	line "happened to my"
	cont "SENTRET?"

	para "I put it in the"
	line "PC, duh!"

	para "Anyways, I'm going"
	line "to steamroll"
	para "through the next"
	line "GYM, and then I'm"
	para "going to train so"
	line "hard that I will"
	cont "finally beat you!"

	para "See ya,"
	line "<PLAY_G>!"
	done


.RivalEnters:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

Route33BugCatcherScript:
	jumptextfaceplayer .Text

.Text:
	text "Shh! Be quiet!"
	para "You might scare"
	line "the TONBOSS away!"
	done

Route33CaveBlockageScript:
	jumptextfaceplayer .Text

.Text:
	text "Don't step here,"
	line "please!"
	para "Some poacher has"
	line "stolen one of our"
	para "precious"
	line "CHARMANDER from"
	cont "here!"
	para "If you can figure"
	line "out who stole it,"
	para "then we'll open"
	line "this place up."
	done

TrainerBugCatcherNate:
	trainer BUG_CATCHER, BC_NATE, EVENT_BEAT_BUG_CATCHER_NATE, .Seen, .Beaten, 0, .After

.Seen
	text "MT. HIVE is a bug-"
	line "catcher's paradise!"
	done

.Beaten
	text "You just had to"
	line "ruin the fun,"
	cont "didn't you?"
	done

.After
	endifjustbattled
	jumptext .AfterText
	end

.AfterText
	text "I caught all my"
	line "bugs here!"
	para "Aren't they great?"
	done

TrainerManchildMarco:
	trainer MANCHILD, MARCO, EVENT_BEAT_MANCHILD_MARCO, .Seen, .Beaten, 0, .After

.Seen
	text "A-are there bugs"
	line "at my feet<...>?"
	done

.Beaten
	text "O-oh<...>!"
	done

.After
	endifjustbattled
	jumptext .AfterText
	end

.AfterText
	text "I'm on my way to"
	line "see my grandma in"
	para "GOLDENROD, but"
	line "bug-types really"
	cont "frighten me<...>"
	done

TrainerFirebreatherRob:
	trainer FIREBREATHER, FB_ROB, EVENT_BEAT_FIREBREATHER_ROB, .Seen, .Beaten, 0, .After

.Seen
	text "Go! My<...> not-bug-"
	line "typed<...> SLUGMA!"
	done

.Beaten
	text "Strange, isn't it?"
	done

.After
	endifjustbattled
	jumptext .AfterText

.AfterText
	text "Seriously, if"
	line "SLUGMA descended"
	para "from slugs, then"
	line "why isn't it a bug-"
	cont "type #MON?"
	para "It's one of the"
	line "greatest mysteries"
	cont "to me."
	done

Route33HikerGuyScript:
	jumptextfaceplayer .Txt

.Txt:
	text "Phew! That was"
	line "a long trek."
	para "It's quite the view"
	line "from up here!"
	done

Route33_MoveLeftBeforeEncounterKurt:
	hidefollower
	applymovement PLAYER, .MoveLeft
	scall Route33_EncounterKurt
	moveobject FOLLOWER, 8, 7
	showfollower
	end

.MoveLeft:
	step LEFT
	step_end

Route33_HideFollowerBeforeEncounterKurt:
	hidefollower
	scall Route33_EncounterKurt
	moveobject FOLLOWER, 8, 7
	showfollower
	end

Route33_EncounterKurt:
	turnobject ROUTE33_ELM, UP
	showemote EMOTE_SHOCK, ROUTE33_ELM, 15
	turnobject PLAYER, DOWN
	opentext
	writetext .ElmText1
	waitbutton
	closetext
	turnobject ROUTE33_KURT_2, DOWN
	opentext
	writetext .KurtText1
	waitbutton
	closetext
	applymovement ROUTE33_KURT_2, .KurtToPlayer
	turnobject PLAYER, RIGHT
	opentext
	writetext .KurtText1b
	waitbutton
	closetext
; battle
	setlasttalked ROUTE33_KURT_2
	winlosstext .KurtWinText, 0
	loadtrainer BALLSMITH, KURT
	startbattle
; after battle
	reloadmapafterbattle
	opentext
	writetext .KurtText2
	waitbutton
	closetext
	applymovement ROUTE33_KURT_2, .KurtLeaves
	disappear ROUTE33_KURT_2
; elm talk
	turnobject PLAYER, DOWN
	opentext
	writetext .ElmText2
	waitbutton
	closetext
	opentext
	writetext .TonbossText1
	cry TONBOSS
	waitsfx
	playmusic MUSIC_NONE
	closetext
	turnobject ROUTE33_ELM, RIGHT
	opentext
	writetext .ElmText3
	waitbutton
	closetext
	special FadeBlackQuickly
	appear ROUTE33_TONBOSS
	special ReloadSpritesNoPalettes
	special UpdateSprites
	wait 8
	special FadeInQuickly
	opentext
	writetext .TonbossText2
	cry TONBOSS
	waitsfx
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject ROUTE33_ELM, UP
	turnobject PLAYER, UP
	closetext
	opentext
	writetext .ElmText4
	waitbutton
	closetext
; tonboss battle
	loadwildmon TONBOSS, 16
	startbattle
; after tonboss
	reloadmapafterbattle
	turnobject PLAYER, DOWN
	opentext
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .has_totodile
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .has_cyndaquil
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .has_chikorita
; no special handling here
.has_totodile
	getmonname STRING_BUFFER_3, TOTODILE
	sjump .last_elm
.has_chikorita
	getmonname STRING_BUFFER_3, CHIKORITA
	sjump .last_elm
.has_cyndaquil
	getmonname STRING_BUFFER_3, CYNDAQUIL
	;sjump .last_elm
.last_elm
	writetext .ElmText5
	waitbutton
	closetext
	applymovement ROUTE33_ELM, .ElmGTFO
	disappear ROUTE33_ELM
	setscene SCENE_ROUTE33_BATTLED_KURT
	end

.ElmGTFO:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

.KurtLeaves:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

.KurtToPlayer:
	step UP
	turn_head LEFT
	step_end

.ElmText1:
	text "ELM: Ah!"
	line "<PLAYER>! It's"
	para "been a while,"
	line "hasn't it?"
	para "I was just chatt-"
	line "ing away with KURT"
	para "here for a bit be-"
	line "fore I set out to"
	para "do my research on"
	line "ROUTE 33!"
	para "Well, more"
	line "specifically, MT."
	cont "HIVE."
	para "Then again, every"
	line "inch of ROUTE 33"
	para "is part of MT."
	line "HIVE<...>"
	done

.KurtText1:
	text "KURT: Indeed, MT."
	line "HIVE covers a very"
	cont "large area."
	para "While I was"
	line "healing in the"
	para "#MON CENTER, I"
	line "realized that you"
	para "must be quite"
	line "strong to beat the"
	para "ROCKETs that were"
	line "harrassing me, and"
	para "you even bested"
	line "their commander to"
	cont "boot!"
	done

.KurtText1b:
	text "Now that I'm fully"
	line "recovered, I wish"
	para "to challenge you"
	line "myself, to see"
	para "just exactly how"
	line "strong you are."
	done

.KurtWinText:
	text "You're even"
	line "stronger than I"
	cont "anticipated."
	para "Congratulations."
	done

.KurtText2:
	text "KURT: Marvelous."
	para "I can already tell"
	line "you're going to get"
	cont "far in life."
	para "Well, I better get"
	line "going back home."
	para "My granddaughter,"
	line "MAIZIE, must be"
	para "worried sick over"
	line "me."
	para "Say, child, if you"
	line "come to my home in"
	para "AZALEA TOWN, I can"
	line "give you a gift as"
	para "thanks for saving"
	line "me."
	para "Farewell to both"
	line "of you, and I hope"
	para "your journeys go"
	line "well."
	done

.ElmText2:
	text "Yeah<...> I already"
	line "heard about some"
	para "TEAM ROCKET mem-"
	line "bers roaming"
	para "around here before"
	line "I left the LAB,"
	cont "but sheesh!"
	para "I still wasn't ex-"
	line "pecting poor KURT"
	para "to end up getting"
	line "his back slashed"
	cont "up by them."
	para "Thank you so much"
	line "for saving him."
	para "He's a kind man,"
	line "and he deserves"
	para "far better than"
	line "dealing with such"
	cont "vile people."
	para "Anyways, I better"
	line "get on with my"
	cont "research."
	done

.TonbossText1:
	text "???: Bzzzzzzzzzzz!"
	line "Zzzzzzzzzz!"
	done

.ElmText3:
	text "<...>Wait, do you hear"
	line "something?"
	done

.TonbossText2:
	text "TONBOSS: Bossuuuu!"
	done

.ElmText4:
	text "ELM: Aah! I-It's a"
	line "TONBOSS!"
	para "Watch out!"
	done

.ElmText5:
	text "What on earth was"
	line "that about?!"
	para "TONBOSS isn't nor-"
	line "mally spotted"
	para "around here, and"
	line "I doubt my"
	para "@"
	text_ram wStringBuffer3
	text " could've"
	line "handled it right"
	cont "now."
	para "Thanks for hand-"
	line "ling it,"
	cont "<PLAYER>!"
	para "I'm glad I could"
	line "depend on you!"
	para "I should be off"
	line "now before"
	para "anything else"
	line "happens<...>"
	para "S-Stay safe out"
	line "there!"
	done

Route33_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event 57,  6, ROUTE_33_EAST_GATE, 1
	warp_event 57,  7, ROUTE_33_EAST_GATE, 2
	warp_event  0,  7, ROUTE_33_WEST_GATE, 1

	db 4 ; coord events
	coord_event 44, 10, SCENE_ROUTE33_NOTHING, Route33_EncounterKaren
	coord_event 51, 10, SCENE_ROUTE33_BATTLED_KAREN, Route33_EncounterRival
	coord_event  8,  8, SCENE_ROUTE33_BATTLED_RIVAL, Route33_HideFollowerBeforeEncounterKurt
	coord_event  9,  8, SCENE_ROUTE33_BATTLED_RIVAL, Route33_MoveLeftBeforeEncounterKurt

	db 1 ; bg events
	bg_event 54,  6, BGEVENT_READ, Route33_Sign

	db 17 ; object events
; rocket grunts
	object_event 54,  9, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRoute33RocketGrunt1, EVENT_BEAT_ROUTE33_KAREN
	object_event 50,  8, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRoute33RocketGrunt2, EVENT_BEAT_ROUTE33_KAREN
	object_event 47,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerRoute33Hyuck, EVENT_BEAT_ROUTE33_KAREN
; karen + kurt
	object_event 42, 10, SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_BEAT_ROUTE33_KAREN
	object_event 42, 11, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_BEAT_ROUTE33_KAREN
	object_event 39,  8, SPRITE_BUGSY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_ROUTE33_BUGSY_APPEARS
; bloooooooooocking
	object_event 37,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, Route33BugCatcherScript, EVENT_BEAT_BUGSY
	object_event 61, 17, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, ObjectEvent, EVENT_BEAT_ROUTE33_RIVAL
	object_event 14,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, Route33CaveBlockageScript, -1
; trainers
	object_event 28,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherNate, -1
	object_event 20,  8, SPRITE_MANCHILD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerManchildMarco, -1
	object_event 17, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerFirebreatherRob, -1
	object_event 39,  4, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route33HikerGuyScript, EVENT_HIKER_GUY_ATOP_MT_HIVE
; kurt battle 2
	object_event  9,  9, SPRITE_KURT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE33_KURT
	object_event  8,  9, SPRITE_ROUTE33_KAREN_ELM_WILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE33_KURT
	object_event  8,  7, SPRITE_YANMEGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BEAT_ROUTE33_TONBOSS
