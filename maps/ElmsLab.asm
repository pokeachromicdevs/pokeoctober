	object_const_def ; object_event constants
	const ELMSLAB_ELM
	const ELMSLAB_ELMS_AIDE
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMENTRANCE_SILVER

ElmsLab_MapScripts:
	db 6 ; scene scripts
	scene_script .DummyScene1 ; SCENE_ELMSLAB_NOTHING
	scene_script .MeetElm ; SCENE_MEETELM
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene1 ; SCENE_ELMSLAB_RECEIVE_DEX
	scene_script .DummyScene1 ; SCENE_ELMSLAB_AIDE_GIVES_POTION
	scene_script .DummyScene1 ; SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .MoveElmCallback

.MeetElm:
	prioritysjump .WalkUpToElm
	end

.DummyScene1:
	end

.MoveElmCallback:
	readmem wElmsLabSceneID
	ifequal SCENE_ELMSLAB_MEETELM, .doMove
	return
.doMove
	moveobject ELMSLAB_ELM, 4, 10
	return

.WalkUpToElm:
	appear ELMSLAB_ELM
	follow ELMSLAB_ELM, PLAYER
	applymovement ELMSLAB_ELM, ElmsLab_WalkUpToPCMovement
	clearevent EVENT_ELM_NOT_IN_LAB
	stopfollow
	applymovement ELMSLAB_ELM, ElmsLab_WalkUpToPC2Movement
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	turnobject ELMSLAB_ELM, RIGHT
	turnobject PLAYER, LEFT
	turnobject ELMENTRANCE_SILVER, LEFT
	opentext
	writetext ElmText_Intro
	waitbutton
	closetext
	opentext
	writetext ElmText_ResearchAmbitions
	waitbutton
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext SilverEmailShock
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, RIGHT
	opentext
	writetext ElmText_MissionFromMrPokemon
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	opentext
	writetext ElmText_MissionFromMrPokemon2
	waitbutton
	closetext
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement1
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement2
	turnobject PLAYER, UP
	turnobject ELMENTRANCE_SILVER, UP
	opentext
	writetext ElmText_ChooseAPokemon
	waitbutton
	setscene SCENE_ELMSLAB_CANT_LEAVE
	setevent EVENT_ELM_STILL_HAS_EMAIL_OPEN
	closetext
	end

ElmsLabSilverScript3:
	jumptextfaceplayer Text_Best

.ElmGetsEmail:
	writetext ElmText_ResearchAmbitions
	waitbutton
	closetext

HidePersonMovement:
	hide_person
	step_end

ProfElmScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue ElmCheckMasterBall
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue ElmGiveTicketScript
ElmCheckMasterBall:
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue ElmCheckEverstone
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
ElmCheckEverstone:
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue ElmScript_CallYou
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue ElmGiveEverstoneScript
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse ElmCheckTogepiEgg
	loadmonindex 1, TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	loadmonindex 2, TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writetext ElmThoughtEggHatchedText
	waitbutton
	closetext
	end

ElmEggHatchedScript:
	loadmonindex 1, TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	loadmonindex 2, TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	sjump ElmCheckGotEggAgain

ElmCheckTogepiEgg:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse ElmCheckGotEggAgain
	checkevent EVENT_TOGEPI_HATCHED
	iftrue ElmEggHatchedScript
ElmCheckGotEggAgain:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext ElmText_LetYourMonBattleIt
	waitbutton
	closetext
	end

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkscene
	iffalse LookAtElmPokeBallScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	getmonname STRING_BUFFER_3, CYNDAQUIL
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	applymovement ELMENTRANCE_SILVER, SilverGetTotodileMovement
	opentext
	writetext Text_SilverTakeThisOne
	waitbutton
	closetext
	disappear ELMSLAB_POKE_BALL2
	opentext
	writetext Text_SilverGetTotodile
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	sjump ElmDirectionsScript

TotodilePokeBallScript:
	checkscene
	iffalse LookAtElmPokeBallScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	getmonname STRING_BUFFER_3, TOTODILE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke TOTODILE, 5, BERRY
	closetext
	applymovement ELMENTRANCE_SILVER, SilverGetChikoritaMovement
	opentext
	writetext Text_SilverTakeThisOne
	waitbutton
	closetext
	disappear ELMSLAB_POKE_BALL3
	opentext
	writetext Text_SilverGetChikorita
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	closetext
	applymovement PLAYER, AfterTotodileMovement
	sjump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkscene
	iffalse LookAtElmPokeBallScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	buttonsound
	waitsfx
	getmonname STRING_BUFFER_3, CHIKORITA
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHIKORITA, 5, BERRY
	closetext
	applymovement ELMENTRANCE_SILVER, SilverGetCyndaquilMovement
	opentext
	writetext Text_SilverTakeThisOne
	waitbutton
	closetext
	disappear ELMSLAB_POKE_BALL1
	opentext
	writetext Text_SilverGetCyndaquil
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	closetext
	applymovement PLAYER, AfterChikoritaMovement
	sjump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject PLAYER, UP
	opentext
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	opentext
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setscene SCENE_ELM_ENTRANCE_BATTLE
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	setmapscene SILENT_TOWN, SCENE_FINISHED
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

ElmAfterTheftDoneScript:
	waitbutton
	closetext
	end

LabGetPokedexScript1:
	applymovement PLAYER, .WalkUpToElm
	opentext
	sjump ElmAfterTheftScript

.WalkUpToElm:
	step UP
	step UP
	step RIGHT
	step UP
	step_end

LabGetPokedexScript2:
	applymovement PLAYER, .WalkUpToElm
	opentext
	sjump ElmAfterTheftScript

.WalkUpToElm:
	step UP
	step UP
	step UP
	step_end

ElmAfterTheftScript:
	writetext ElmAfterTheftText1
	checkitem ELMS_EGG
	iffalse ElmAfterTheftDoneScript
	buttonsound
	writetext ElmAfterTheftText2
	waitbutton
	takeitem ELMS_EGG
	writetext ElmAfterTheftText3
	waitbutton
	writetext ElmAfterTheftText4a
	waitbutton
	closetext

	opentext
	writetext ElmAfterTheftText4b
	takeitem OAKS_PARCEL
	waitbutton
	closetext

	opentext
	writetext ElmAfterTheftText5
	waitsfx
	waitbutton
	writetext ElmGivesPokedexText
	playsound SFX_FANFARE
	waitsfx
	setflag ENGINE_POKEDEX
	buttonsound
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	setevent EVENT_CHERRYGROVE_BIRD_KEEPER_NOT_BLOCK_GYM
	clearevent EVENT_CHERRYGROVE_BIRD_KEEPER_BLOCKAGE
	setmapscene ROUTE_29, SCENE_ROUTE29_CATCH_TUTORIAL
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .TakeTotodile
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .TakeChikorita
.TakeCyndaquil
	applymovement ELMSLAB_ELM, .ElmTakesCyndaquil1
	pause 5
	disappear ELMSLAB_POKE_BALL1
	pause 5
	applymovement ELMSLAB_ELM, .ElmTakesCyndaquil2
	sjump .ElmGotPokemon
.TakeChikorita
	applymovement ELMSLAB_ELM, .ElmTakesChikorita1
	pause 5
	disappear ELMSLAB_POKE_BALL3
	pause 5
	applymovement ELMSLAB_ELM, .ElmTakesChikorita2
	sjump .ElmGotPokemon
.TakeTotodile
	applymovement ELMSLAB_ELM, .ElmTakesTotodile1
	pause 5
	disappear ELMSLAB_POKE_BALL2
	pause 5
	applymovement ELMSLAB_ELM, .ElmTakesTotodile2
	sjump .ElmGotPokemon
.ElmGotPokemon
	faceobject ELMSLAB_ELM, PLAYER
	opentext
	writetext ElmTakesMonText
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS
	end

.ElmTakesTotodile1:
	step LEFT
	step DOWN
	step DOWN
	step DOWN ; account for follower
	step RIGHT
	step RIGHT ; elm is near table
	step RIGHT
	step UP ; elm at position
	step_end

.ElmTakesTotodile2:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step RIGHT
	step_end

.ElmTakesChikorita1:
	step LEFT
	step DOWN
	step DOWN
	step DOWN ; account for follower
	step RIGHT
	step RIGHT ; elm is near table
	step RIGHT
	step RIGHT
	step UP ; elm at position
	step_end

.ElmTakesChikorita2:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step RIGHT
	step_end

.ElmTakesCyndaquil1:
	step LEFT
	step DOWN
	step DOWN
	step DOWN ; account for follower
	step RIGHT
	step RIGHT ; elm is near table
	step UP ; elm at position
	step_end

.ElmTakesCyndaquil2:
	step DOWN
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step RIGHT
	step_end

ElmStudyingEggScript:
	writetext ElmStudyingEggText
	waitbutton
	closetext
	end

ElmAideHasEggScript:
	writetext ElmAideHasEggText
	waitbutton
	closetext
	end

ElmWaitingEggHatchScript:
	writetext ElmWaitingEggHatchText
	waitbutton
	closetext
	end

ShowElmTogepiScript:
	writetext ShowElmTogepiText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	opentext
	writetext ShowElmTogepiText2
	buttonsound
	writetext ShowElmTogepiText3
	buttonsound
ElmGiveEverstoneScript:
	writetext ElmGiveEverstoneText1
	buttonsound
	verbosegiveitem EVERSTONE
	iffalse ElmScript_NoRoomForEverstone
	writetext ElmGiveEverstoneText2
	waitbutton
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end

ElmScript_CallYou:
	writetext ElmText_CallYou
	waitbutton
ElmScript_NoRoomForEverstone:
	closetext
	end

ElmGiveMasterBallScript:
	writetext ElmGiveMasterBallText1
	buttonsound
	verbosegiveitem MASTER_BALL
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetext
	end

ElmGiveTicketScript:
	writetext ElmGiveTicketText1
	buttonsound
	verbosegiveitem S_S_TICKET
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetext
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GivePotion:
	opentext
	writetext AideText_GiveYouPotion
	buttonsound
	verbosegiveitem POTION
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	clearevent EVENT_ELM_STILL_HAS_EMAIL_OPEN
	setmapscene SILENT_TOWN, SCENE_ELM_ENTRANCE_BATTLE
	end

AideScript_WalkBalls1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkBalls2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GiveYouBalls:
	opentext
	writetext AideText_GiveYouBalls
	buttonsound
	getitemname STRING_BUFFER_4, POKE_BALL
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext AideText_ExplainBalls
	buttonsound
	itemnotify
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue .InCharge
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .ExplainBalls
.AlwaysBusy:
	writetext AideText_AlwaysBusy
	sjump .End
.InCharge:
	writetext AideText_InCharge
	sjump .End
.ExplainBalls:
	writetext AideText_ExplainBalls
	;sjump .End
.End:
	waitbutton
	closetext
	end

ElmsLabWindow:
	jumptext ElmsLabWindowText1

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	checkevent EVENT_ELM_STILL_HAS_EMAIL_OPEN
	iftrue .CheckEmail
	jumptext ElmsLabPCText

.CheckEmail:
	jumptext .EmailText

.EmailText:
	text "The e-mail that"
	line "PROF. ELM just"
	cont "read is there<...>"
	done

SilverGetCyndaquilMovement:
	step RIGHT
	turn_head UP
	step_end

SilverGetChikoritaMovement:
	step RIGHT
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	step_end

SilverGetTotodileMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	step_end

ElmsLabTrashcan2:
; unused
	jumpstd trashcan

ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLabSilverScript:
	checkscene
	iftrue .letPlayerChoose
	checkevent EVENT_ELM_NOT_IN_LAB
	iftrue .elmNotInLab
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .gotPoke
	return

.elmNotInLab
	jumptextfaceplayer ElmsLabSilverText
.gotPoke
	jumptextfaceplayer Text_Best
.letPlayerChoose
	jumptextfaceplayer ElmsLabSilverText2

SilverLeavesLab:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

Movement_SilverDownOne:
	step DOWN
	return
	step_end

Movement_SilverDownTwo:
	step DOWN
	step DOWN
	return
	step_end

Movement_DownOne:
	step DOWN
	turn_head UP
	step_end

ElmsLab_WalkUpToPCMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
ElmsLab_WalkUpToPC2Movement:
	step LEFT
	turn_head DOWN
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	step_end

AfterChikoritaMovement:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

Text_SilverTakeThisOne:
	text "This #MON looks"
	line "strong!"

	para "I will take this"
	line "one."
	done

Text_SilverGetCyndaquil:
	text "<RIVAL> received"
	line "CYNDAQUIL!"
	done

Text_SilverGetChikorita:
	text "<RIVAL> received"
	line "CHIKORITA!"
	done

Text_SilverGetTotodile:
	text "<RIVAL> received"
	line "TOTODILE!"
	done

ElmsLabSilverText:
	text "Yo <PLAY_G>!"

	para "Looks like PROF."
	line "ELM isn't here!"

	para "I wonder when"
	line "he would have"

	para "expected us to"
	line "show up!"
	done

ElmsLabSilverText2:
	text "Whatever #MON"
	line "I have, I'll be"
	para "sure to be better"
	line "than you, <PLAY_G>!"
	done

ElmText_Intro:
	text "Finally! We're all"
	line "together now!"

	para "<RIVAL>: ELM!"
	line "What took you so"
	para "long? I've been"
	line "waiting here for"
	cont "hours!"
	done

ElmText_ResearchAmbitions:
	text "ELM: Calm"
	line "yourself, <RIVAL>."
	para "No need to stay"
	line "impatient, as you"
	para "two are finally"
	line "going to get your"
	cont "own #MON!"
	done

SilverEmailShock:
	text "<RIVAL>: Hey,"
	line "ELM. What's with"
	cont "your computer?"
	done

ElmText_MissionFromMrPokemon:
	text "ELM: Hmm…"

	para "Well, I just got"
	line "an email from a"
	para "colleague of mine,"
	line "MR. #MON. He"
	para "says he's done"
	line "studying an EGG"
	para "I sent him a few"
	line "weeks ago."

	para "Normally, I would"
	line "go get the EGG"
	para "myself, but I'm"
	line "too busy writing"
	para "a paper for a"
	line "conference in"
	para "SAFFRON and"
	line "preparing for a"
	para "lengthy trip"
	line "outside of the"
	cont "LAB to go get it."

	para "Wait!"

	para "I know!"

	para "Since you two are"
	line "going to pass by"
	para "MR. #MON's"
	line "house, one of you"
	para "two can get it for"
	line "me!"
	done

ElmText_MissionFromMrPokemon2:
	text "<RIVAL>: Well,"
	line "that sounds like"
	para "the perfect job"
	line "for <PLAY_G>!"
	para "Sorry, <PLAY_G>,"
	line "but I'm way too"
	para "excited to run"
	line "such a boring"
	cont "errand!"

	para "I've got a huge"
	line "adventure to"
	cont "go on, you know!"

	para "ELM: Er<...> well"
	line "then."
	done

ElmText_ChooseAPokemon:
	text "<PLAY_G>, I guess"
	line "you'll go to MR."
	para "#MON's house."
	line "His place is on"
	para "ROUTE 31, on top"
	line "of a hill. You"
	para "can't miss it."
	line "But first, you'll"
	para "need to pick a"
	line "#MON to aid you"
	para "on your journeys"
	line "ahead. And since"
	para "you were a bit…"
	line "forced into"
	para "taking on this"
	line "task, you can"
	cont "pick first."
	done

ElmText_LetYourMonBattleIt:
	text "If a wild #MON"
	line "appears, let your"
	cont "#MON battle it!"
	done

LabWhereGoingText:
	text "ELM: Wait! Where"
	line "are you going?"
	done

TakeCyndaquilText:
	text "ELM: You'll take"
	line "CYNDAQUIL, the"
	cont "fire #MON?"
	done

TakeTotodileText:
	text "ELM: Do you want"
	line "TOTODILE, the"
	cont "water #MON?"
	done

TakeChikoritaText:
	text "ELM: So, you like"
	line "CHIKORITA, the"
	cont "grass #MON?"
	done

DidntChooseStarterText:
	text "ELM: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "ELM: I think"
	line "that's a great"
	cont "#MON too!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "Alright!"

	para "Remember, his"
	line "house is on ROUTE"
	cont "31."

	para "If you see anyone"
	line "raving on about"
	para "strange findings"
	line "around there,"
	cont "it's probably him."

	para "If you find a"
	line "need to contact"
	para "me, here's my"
	line "number. Call me"
	para "if anything comes"
	line "up!"
	done

ElmDirectionsText3:
	text "If your #MON"
	line "are hurt, you can"
	para "heal them at the"
	line "town's #MON"
	para "CENTER, just"
	line "behind the LAB."

	para "Good luck!"
	done

Text_Best:
	text "My #MON is"
	line "gonna be the best"
	cont "one!"
	done

GotElmsNumberText:
	text "<PLAYER> got ELM's"
	line "phone number."
	done

ElmDescribesMrPokemonText:
	text "Remember, his"
	line "house is on ROUTE"
	cont "31."

	para "If you see anyone"
	line "raving on about"
	para "strange findings"
	line "around there,"
	cont "it's probably him."

	para "Good luck!"
	done

ElmPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.ELM."
	done

ElmsLabHealingMachineText1:
	text "I wonder what this"
	line "does?"
	done

ElmAfterTheftText1:
	text "Ah, you've re-"
	line "turned!"
	para "Do you have the"
	line "EGG?"
	done

ElmAfterTheftText2:
	text "<PLAYER> gave"
	line "ELM'S EGG back."
	done

ElmAfterTheftText3:
	text "Indeed you do!"
	line "Thank you so much!"
	para "Did MR. #MON"
	line "have anything to"
	cont "say about it?"
	done

ElmAfterTheftText4a:
	text "Huh? He thinks it"
	line "houses a never"
	para "before seen #-"
	line "MON? If that's"
	para "true, then history"
	line "is in the making!"

	para "This reminds me of"
	line "when I first"
	para "discovered PICHU,"
	line "haha!"

	para "Huh? What's that?"
	line "OAK was at MR."
	para "#MON's house,"
	line "and he has a"
	cont "PARCEL for me?"
	done

ElmAfterTheftText4b:
	text "<PLAYER> handed"
	line "over OAK's PARCEL."
	done

ElmAfterTheftText5:
	text "Let's see what's"
	line "inside<...>"

	para "Oh! Several new"
	line "#DEXes! I"
	para "needed some of"
	line "these!"

	para "Bless OAK for"
	line "going out of his"
	cont "way for me!"

	para "Come to think of"
	line "it, would you take"
	para "one of these and"
	line "record #MON"
	cont "data with it?"

	para "It's always been"
	line "OAK's dream to"
	para "know of every"
	line "#MON in exist-"
	para "ence, and OAK's"
	line "dreams are my"
	cont "dreams!"
	done

ElmGivesPokedexText:
	text "<PLAYER> got a"
	line "#DEX from ELM."
	done

ElmAfterTheftText6:
	text "Since <RIVAL>"
	line "is nowhere near"
	para "here, I think I'll"
	line "have to send my"
	para "aide to deliver a"
	line "#DEX to him."

	para "Heck, even I might"
	line "as well take one!"

	para "Having to write"
	line "down all of my"
	para "notes is annoying"
	line "and this is a"
	para "great excuse to"
	line "get out of the LAB"
	para "every once in a"
	line "while!"

	para "And come to think"
	line "of it<...>"
	done

ElmTakesMonText:
	text "This #MON needs"
	line "a reason to get"
	para "out and see the"
	line "world instead of"
	para "being cooped up in"
	line "the LAB, too."

	para "Have fun on your"
	line "journey!"

	para "And don't forget"
	line "to let your"
	para "<MOM> know"
	line "before leaving!"
	done


ElmStudyingEggText:
	text "ELM: Have fun on"
	line "your journey!"
	para "Don't give up!"
	done

ElmAideHasEggText:
	text "ELM: <PLAY_G>?"
	line "Didn't you meet my"
	cont "assistant?"

	para "He should have met"
	line "you with the EGG"

	para "at CHERRYGROVE"
	line "CITY's #MON"
	cont "CENTER."

	para "You must have just"
	line "missed him. Try to"
	cont "catch him there."
	done

ElmWaitingEggHatchText:
	text "ELM: Hey, has that"
	line "EGG changed any?"
	done

ElmThoughtEggHatchedText:
	text "<PLAY_G>? I thought"
	line "the EGG hatched."

	para "Where is the"
	line "#MON?"
	done

ShowElmTogepiText1:
	text "ELM: <PLAY_G>, you"
	line "look great!"
	done

ShowElmTogepiText2:
	text "What?"
	line "That #MON!?!"
	done

ShowElmTogepiText3:
	text "The EGG hatched!"
	line "So, #MON are"
	cont "born from EGGS…"

	para "No, perhaps not"
	line "all #MON are."

	para "Wow, there's still"
	line "a lot of research"
	cont "to be done."
	done

ElmGiveEverstoneText1:
	text "Thanks, <PLAY_G>!"
	line "You're helping"

	para "unravel #MON"
	line "mysteries for us!"

	para "I want you to have"
	line "this as a token of"
	cont "our appreciation."
	done

ElmGiveEverstoneText2:
	text "That's an"
	line "EVERSTONE."

	para "Some species of"
	line "#MON evolve"

	para "when they grow to"
	line "certain levels."

	para "A #MON holding"
	line "the EVERSTONE"
	cont "won't evolve."

	para "Give it to a #-"
	line "MON you don't want"
	cont "to evolve."
	done

ElmText_CallYou:
	text "ELM: <PLAY_G>, I'll"
	line "call you if any-"
	cont "thing comes up."
	done

AideText_AfterTheft:
	text "…sigh… That"
	line "stolen #MON."

	para "I wonder how it's"
	line "doing."

	para "They say a #MON"
	line "raised by a bad"

	para "person turns bad"
	line "itself."
	done

ElmGiveMasterBallText1:
	text "ELM: Hi, <PLAY_G>!"
	line "Thanks to you, my"

	para "research is going"
	line "great!"

	para "Take this as a"
	line "token of my"
	cont "appreciation."
	done

ElmGiveMasterBallText2:
	text "The MASTER BALL is"
	line "the best!"

	para "It's the ultimate"
	line "BALL! It'll catch"

	para "any #MON with-"
	line "out fail."

	para "It's given only to"
	line "recognized #MON"
	cont "researchers."

	para "I think you can"
	line "make much better"

	para "use of it than I"
	line "can, <PLAY_G>!"
	done

ElmGiveTicketText1:
	text "ELM: <PLAY_G>!"
	line "There you are!"

	para "I called because I"
	line "have something for"
	cont "you."

	para "See? It's an"
	line "S.S.TICKET."

	para "Now you can catch"
	line "#MON in KANTO."
	done

ElmGiveTicketText2:
	text "The ship departs"
	line "from OLIVINE CITY."

	para "But you knew that"
	line "already, <PLAY_G>."

	para "After all, you've"
	line "traveled all over"
	cont "with your #MON."

	para "Give my regards to"
	line "PROF.OAK in KANTO!"
	done

ElmsLabSignpostText_Egg:
	text "It's the #MON"
	line "EGG being studied"
	cont "by PROF.ELM."
	done

AideText_GiveYouPotion:
	text "<PLAY_G>, I want"
	line "you to have this"
	cont "for your errand."
	done

AideText_AlwaysBusy:
	text "There are only two"
	line "of us, so we're"
	cont "always busy."
	done

AideText_InCharge:
	text "ELM's left the lab"
	line "already, so I'm"
	para "watching over the"
	line "lab while he's"
	cont "gone."
	para "In the meantime,"
	line "take good care of"
	cont "the EGG."
	done

AideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Use these on your"
	line "#DEX quest!"
	done

AideText_ExplainBalls:
	text "To add to your"
	line "#DEX, you have"
	cont "to catch #MON."

	para "Throw # BALLS"
	line "at wild #MON"
	cont "to get them."
	done

ElmsLabWindowText1:
	text "It's full of com-"
	line "plicated diagrams."
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 1:"

	para "Press START to"
	line "open the MENU."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 2:"

	para "Record your trip"
	line "with SAVE!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 3:"

	para "Open your PACK and"
	line "press SELECT to"
	cont "move items."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Travel Tip 4:"

	para "Check your #MON"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

ElmsLabTrashcanText:
	text "The wrapper from"
	line "the snack PROF.ELM"
	cont "ate is in there…"
	done

ElmsLabPCText:
	text "OBSERVATIONS ON"
	line "#MON EVOLUTION"

	para "…It says on the"
	line "screen…"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, SILENT_TOWN, 1
	warp_event  5, 11, SILENT_TOWN, 1

	db 8 ; coord events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls2
	coord_event  4,  6, SCENE_ELMSLAB_RECEIVE_DEX, LabGetPokedexScript1
	coord_event  5,  6, SCENE_ELMSLAB_RECEIVE_DEX, LabGetPokedexScript2

	db 17 ; bg events
	bg_event  0,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  4,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	db 6 ; object events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, EVENT_ELM_NOT_IN_LAB
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event  5,  4, SPRITE_SILVER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsLabSilverScript, EVENT_RIVAL_ELMS_LAB
