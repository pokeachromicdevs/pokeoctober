	object_const_def ; object_event constants
	const CHERRYGROVECITY_GRAMPS
	const CHERRYGROVECITY_SILVER
	const CHERRYGROVECITY_TEACHER
	const CHERRYGROVECITY_YOUNGSTER
	const CHERRYGROVECITY_FISHER

CherrygroveCity_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_CHERRYGROVECITY_NOTHING
	scene_script .DummyScene1 ; SCENE_CHERRYGROVECITY_MEET_RIVAL

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	return

CherrygroveCityGuideGent:
	faceplayer
	opentext
	writetext GuideGentIntroText
	yesorno
	iffalse .No
	sjump .Yes
.Yes:
	writetext GuideGentTourText1
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow CHERRYGROVECITY_GRAMPS, PLAYER
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement1
	turnobject PLAYER, UP
	opentext
	writetext GuideGentPokecenterText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement2
	turnobject PLAYER, UP
	opentext
	writetext GuideGentMartText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement3
	turnobject PLAYER, LEFT
	opentext
	writetext GuideGentRoute30Text
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement4
	turnobject PLAYER, UP
	opentext
	writetext GuideGentSeaText
	waitbutton
	closetext
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement5
	turnobject PLAYER, UP
	pause 60
	turnobject CHERRYGROVECITY_GRAMPS, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext GuideGentGiftText
	buttonsound
	getstring STRING_BUFFER_4, .mapcardname
	scall .JumpstdReceiveItem
	setflag ENGINE_MAP_CARD
	writetext GotMapCardText
	buttonsound
	writetext GuideGentPokegearText
	waitbutton
	closetext
	stopfollow
	special RestartMapMusic
	turnobject PLAYER, UP
	applymovement CHERRYGROVECITY_GRAMPS, GuideGentMovement6
	playsound SFX_ENTER_DOOR
	disappear CHERRYGROVECITY_GRAMPS
	clearevent EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
	waitsfx
	end

.JumpstdReceiveItem:
	jumpstd receiveitem
	end

.mapcardname
	db "MAP CARD@"

.No:
	writetext GuideGentNoText
	waitbutton
	closetext
	end

CherrygroveSilverSceneSouth:
	moveobject CHERRYGROVECITY_SILVER, 39, 24
CherrygroveSilverSceneNorth:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear CHERRYGROVECITY_SILVER
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalWalksToYou
	turnobject PLAYER, RIGHT
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext CherrygroveRivalText_Seen
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Totodile:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chikorita:
	winlosstext SilverCherrygroveWinText, SilverCherrygroveLossText
	setlasttalked CHERRYGROVECITY_SILVER
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouWon
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext CherrygroveRivalText_YouLost
	waitbutton
	closetext
.FinishRival:
	playsound SFX_TACKLE
	applymovement PLAYER, CherrygroveCity_RivalPushesYouOutOfTheWay
	turnobject PLAYER, LEFT
	applymovement CHERRYGROVECITY_SILVER, CherrygroveCity_RivalExitsStageLeft
	disappear CHERRYGROVECITY_SILVER
	setscene SCENE_CHERRYGROVECITY_NOTHING
	special HealParty
	playmapmusic
	end

CherrygroveTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_MAP_CARD
	iftrue .HaveMapCard
	writetext CherrygroveTeacherText_NoMapCard
	waitbutton
	closetext
	end

.HaveMapCard:
	writetext CherrygroveTeacherText_HaveMapCard
	waitbutton
	closetext
	end

CherrygroveYoungsterScript:
	faceplayer
	opentext
	checkflag ENGINE_POKEDEX
	iftrue .HavePokedex
	writetext CherrygroveYoungsterText_NoPokedex
	waitbutton
	closetext
	end

.HavePokedex:
	writetext CherrygroveYoungsterText_HavePokedex
	waitbutton
	closetext
	end

MysticWaterGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
	iftrue .After
	writetext MysticWaterGuyTextBefore
	buttonsound
	verbosegiveitem MYSTIC_WATER
	iffalse .Exit
	setevent EVENT_GOT_MYSTIC_WATER_IN_CHERRYGROVE
.After:
	writetext MysticWaterGuyTextAfter
	waitbutton
.Exit:
	closetext
	end

CherrygroveCitySign:
	jumptext CherrygroveCitySignText

GuideGentsHouseSign:
	jumptext GuideGentsHouseSignText

CherrygroveCityPokecenterSign:
	jumpstd pokecentersign

CherrygroveCityMartSign:
	jumpstd martsign

GuideGentMovement1:
	step LEFT
	step LEFT
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement3:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

GuideGentMovement4:
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

GuideGentMovement5:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

GuideGentMovement6:
	step UP
	step UP
	step_end

CherrygroveCity_RivalWalksToYou:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

CherrygroveCity_RivalPushesYouOutOfTheWay:
	big_step DOWN
	turn_head UP
	step_end

CherrygroveCity_UnusedMovementData:
	step LEFT
	turn_head DOWN
	step_end

CherrygroveCity_RivalExitsStageLeft:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

GuideGentIntroText:
	text "Ah, another"
	line "rookie, eh?"
	
	para "Haha!"
	line "Don't sweat it!"

	para "Everyone starts"
	line "out as a rookie,"
	cont "after all!"

	para "Anyways, want me"
	line "to show you the"
	cont "ropes? They don't"
	
	para "call me the GUIDE"
	line "GENT for no"
	cont "reason!"
	done

GuideGentTourText1:
	text "Splendid!"
	line "Come with me!"
	done

GuideGentPokecenterText:
	text "This here is the"
	line "#MON CENTER,"
	cont "as you might have"
	
	para "guessed. For no"
	line "charge at all,"
	cont "the nurse inside"
	
	para "will heal your"
	line "#MON back to"
	cont "normal for free!"
	
	para "It's so wonderful!"
	done

GuideGentMartText:
	text "And this is the"
	line "# MART."

	para "They have all"
	line "sorts of useful"
	cont "items for your" 
	
	para "journey…for a"
	line "price. They're"
	cont "slightly less"
	
	para "wonderful than the"
	line "#MON CENTER."
	done

GuideGentRoute30Text:
	text "Umm…yeah. That"
	line "large building"

	para "over there is"
	line "something that"
	cont "I'd like to avoid."

	para "Things get so"
    line "rough in there"
    cont "that #MON are"
	
	para "sent flying out"
	line "of it! It's insane!"
	done

GuideGentSeaText:
	text "Ah, the" 
	line "CHERRYGROVE CITY"
	cont "GYM! GYMs are"
	
	para "where GYM LEADERS"
	line "are, of course!"
	cont "And you won't get"
	
	para "very far as a"
	line "trainer if you"
	cont "don't defeat the"
	
	para "GYM LEADERS!"
	done

GuideGentGiftText:
	text "And this here…is"
	line "my house! Haha!"
	cont "You've kept up"
	
	para "with me quite"
	line "well! Most of the"
	cont "time, people are"
	
	para "straggling behind"
	line "me in these tours!"
	cont "Here, have a small"
	
	para "gift as well."
	done

GotMapCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a MAP!"
	done

GuideGentPokegearText:
	text "Ah, the #GEAR!"
	line "Such a lovely"
	cont "tool!" 
	
	para "It seems you only"
	line "have one more CARD"
	cont "necessary to"
	
	para "complete yours!"
	line "Best of luck"
	cont "finding it!"	
	done

GuideGentNoText:
	text "Oh…but it's"
	line "basically my" 
	cont "passion to show"
	
	para "people around"
	line "town…and the only"
	cont "thing I can"
	
	para "contribute to"
	line "society anymore…"
	done

CherrygroveRivalText_Seen:
	text "<……> <……> <……>"

	para "You got a #MON"
	line "at the LAB."

	para "What a waste."
	line "A wimp like you."

	para "<……> <……> <……>"

	para "Don't you get what"
	line "I'm saying?"

	para "Well, I too, have"
	line "a good #MON."

	para "I'll show you"
	line "what I mean!"
	done

SilverCherrygroveWinText:
	text "Humph. Are you"
	line "happy you won?"
	done

CherrygroveRivalText_YouLost:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

SilverCherrygroveLossText:
	text "Humph. That was a"
	line "waste of time."
	done

CherrygroveRivalText_YouWon:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

CherrygroveTeacherText_NoMapCard:
	text "Did you talk to"
	line "the old man by the"
	cont "#MON CENTER?"

	para "He'll put a MAP of"
	line "JOHTO on your"
	cont "#GEAR."
	done

CherrygroveTeacherText_HaveMapCard:
	text "When you're with"
	line "#MON, going"
	cont "anywhere is fun."
	done

CherrygroveYoungsterText_NoPokedex:
	text "MR.#MON's house"
	line "is still farther"
	cont "up ahead."
	done

CherrygroveYoungsterText_HavePokedex:
	text "I battled the"
	line "trainers on the"
	cont "road."

	para "My #MON lost."
	line "They're a mess! I"

	para "must take them to"
	line "a #MON CENTER."
	done

MysticWaterGuyTextBefore:
	text "A #MON I caught"
	line "had an item."

	para "I think it's"
	line "MYSTIC WATER."

	para "I don't need it,"
	line "so do you want it?"
	done

MysticWaterGuyTextAfter:
	text "Back to fishing"
	line "for me, then."
	done

CherrygroveCitySignText:
	text "CHERRYGROVE CITY"

	para "The City of Cute,"
	line "Fragrant Flowers"
	done

GuideGentsHouseSignText:
	text "GUIDE GENT'S HOUSE"
	done

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 23, 21, CHERRYGROVE_MART, 2
	warp_event 29, 21, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 23, 15, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 33, 15, GUIDE_GENTS_HOUSE, 1
	warp_event 29, 15, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event 26,  5, CHERRYGROVE_GYM, 1

	db 2 ; coord events
	coord_event 36, 24, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneNorth
	coord_event 36, 25, SCENE_CHERRYGROVECITY_MEET_RIVAL, CherrygroveSilverSceneSouth

	db 4 ; bg events
	bg_event 30, 26, BGEVENT_READ, CherrygroveCitySign
	bg_event 23, 27, BGEVENT_READ, GuideGentsHouseSign
	bg_event 24, 21, BGEVENT_READ, CherrygroveCityMartSign
	bg_event 30, 21, BGEVENT_READ, CherrygroveCityPokecenterSign

	db 5 ; object events
	object_event 36, 24, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCityGuideGent, EVENT_GUIDE_GENT_IN_HIS_HOUSE
	object_event 39, 24, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_CHERRYGROVE_CITY
	object_event 22,  7, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygroveTeacherScript, -1
	object_event 15, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveYoungsterScript, -1
	object_event 18, 29, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MysticWaterGuy, -1
