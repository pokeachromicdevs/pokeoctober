	object_const_def ; object_event constants
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER
	const NEWBARKTOWN_ELM
	const NEWBARKTOWN_FISHER_2
	const NEWBARKTOWN_SILVER_2

SilentTown_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_TEACHER_STOPS
	scene_script .DummyScene1 ; SCENE_SILENT_NOTHING
	scene_script .SilentTownSilverBattleScript ; SCENE_ELM_ENTRANCE_BATTLE


	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILENT
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	setevent EVENT_ELM_APPEARED_SILENT_TOWN
	return

.SilentTownSilverBattleScript:
	end

SilentTown_RivalGreets:
	setevent EVENT_ELM_NOT_IN_LAB
	disappear NEWBARKTOWN_SILVER_2

	variablesprite SPRITE_SILENTTOWN_RIVAL_DUDE, SPRITE_SILVER
	special LoadUsedSpritesGFX

	applymovement NEWBARKTOWN_SILVER, RivalMeetsPlayer
	turnobject PLAYER, RIGHT
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SilentTownRivalText1
	waitbutton
	closetext
	opentext
	writetext SilentTownRivalText2
	special NameMom
	closetext
	showemote EMOTE_SHOCK, NEWBARKTOWN_SILVER, 15
	opentext
	writetext SilentTownRivalText3
	waitbutton
	closetext
	applymovement NEWBARKTOWN_SILVER, RivalGoesToLab
	disappear NEWBARKTOWN_SILVER
	setscene SCENE_TEACHER_STOPS
	special FadeOutMusic
	pause 15
	special RestartMapMusic
	setevent EVENT_RIVAL_SILENT_TOWN
	end

ElmStopsYouScene1:
	checkevent EVENT_ELM_SILENT_TOWN
	iftrue .skip
	setevent EVENT_ELM_SILENT_TOWN
	setmapscene ELMS_LAB, SCENE_ELMSLAB_MEETELM
	playmusic MUSIC_SHOW_ME_AROUND
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	appear NEWBARKTOWN_ELM
	applymovement NEWBARKTOWN_ELM, ElmStopsPlayer1
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	setevent EVENT_RIVAL_SILENT_TOWN
	follow NEWBARKTOWN_ELM, PLAYER
	applymovement NEWBARKTOWN_ELM, ElmTakesPlayerToLab1
	stopfollow
	playsound SFX_ENTER_DOOR
	disappear NEWBARKTOWN_ELM
	applymovement PLAYER, PlayerEntersLab
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	warpfacing UP, ELMS_LAB, 4, 11
.skip
	end

ElmStopsYouScene2:
	checkevent EVENT_ELM_SILENT_TOWN
	iftrue .skip
	setevent EVENT_ELM_SILENT_TOWN
	setmapscene ELMS_LAB, SCENE_ELMSLAB_MEETELM
	playmusic MUSIC_SHOW_ME_AROUND
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	appear NEWBARKTOWN_ELM
	applymovement NEWBARKTOWN_ELM, ElmStopsPlayer2
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	setevent EVENT_RIVAL_SILENT_TOWN
	follow NEWBARKTOWN_ELM, PLAYER
	applymovement NEWBARKTOWN_ELM, ElmTakesPlayerToLab2
	stopfollow
	playsound SFX_ENTER_DOOR
	disappear NEWBARKTOWN_ELM
	applymovement PLAYER, PlayerEntersLab
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	setevent ProfElmScript
	warpfacing UP, ELMS_LAB, 4, 11
.skip
	end

SilentTownRivalScript:
	faceplayer
	opentext
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

SilentTownElmScript:
	opentext
	writetext Text_Study101
	waitbutton
	closetext
	end

SilentTownTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .CallMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end

.MonIsAdorable:
	checkmbc30
	iffalse .PretendToSeeMon
	checkfollower
	iffalse .NoneFollowing

.PretendToSeeMon:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

.NoneFollowing:
	writetext Text_WheresYourMon
	waitbutton
	closetext
	end

.TellMomYoureLeaving:
	writetext Text_TellMomIfLeaving
	waitbutton
	closetext
	end

.CallMom:
	writetext Text_CallMomOnGear
	waitbutton
	closetext
	end

SilentTownSilverBattleScript:
	moveobject NEWBARKTOWN_SILVER_2, 13, 15
	appear NEWBARKTOWN_SILVER_2
	playsound SFX_ENTER_DOOR
	checkfollower
	iftrue .has_follower
	applymovement NEWBARKTOWN_SILVER_2, MovementBattle
	sjump .got_movement
.has_follower
	applymovement NEWBARKTOWN_SILVER_2, MovementBattleDontBump
.got_movement
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	setlasttalked NEWBARKTOWN_SILVER_2 ; ensure rival is visible
	turnobject PLAYER, RIGHT
	opentext
	writetext TimeToBattle
	yesorno
	iffalse .no
	writetext RivalYesText
	waitbutton
	closetext
; player has:
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .TOTODILE
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .CHIKORITA
; has cyndaquil
	winlosstext SilverEntranceWinText, SilverEntranceLossText
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.TOTODILE:
	winlosstext SilverEntranceWinText, SilverEntranceLossText
	loadtrainer RIVAL1, RIVAL1_1_CHIKORITA
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.CHIKORITA:
	winlosstext SilverEntranceWinText, SilverEntranceLossText
	loadtrainer RIVAL1, RIVAL1_1_CYNDAQUIL
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat

.AfterVictorious:
.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext EntranceRivalText_EitherResult
	waitbutton
	closetext
.FinishRival:
	checkfollower
	iftrue .FinishWithFollower
	applymovement PLAYER, PlayerMovesOutOfWay
	applymovement ELMENTRANCE_SILVER, SilverAfterBattle
	sjump .Done
.FinishWithFollower:
	applymovement PLAYER, PlayerMovesOutOfWayWithFollower
	applymovement ELMENTRANCE_SILVER, SilverAfterBattleWithFollower
.Done:
	disappear NEWBARKTOWN_SILVER_2
	special HealParty
	setscene SCENE_SILENT_NOTHING
	setevent EVENT_RIVAL_ELMS_LAB
	playmapmusic

	variablesprite SPRITE_SILENTTOWN_RIVAL_DUDE, SPRITE_COOLTRAINER_M
	special LoadUsedSpritesGFX
	end

.no:
	writetext RivalNoText
	waitbutton
; player has:
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .TOTODILE
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .CHIKORITA
; has cyndaquil
	winlosstext SilverEntranceWinText, SilverEntranceLossText
	loadtrainer RIVAL1, RIVAL1_1_TOTODILE
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	jump .AfterYourDefeat
	end

SilentTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon

SilentTownFisher2Script:
	jumptextfaceplayer KantoRockText

SilentTownSign:
	jumptext SilentTownSignText

SilentTownPlayersHouseSign:
	jumptext SilentTownPlayersHouseSignText

SilentTownElmsLabSign:
	jumptext SilentTownElmsLabSignText

SilentTownElmsHouseSign:
	jumptext SilentTownElmsHouseSignText

PlayerMovesOutOfWayWithFollower:
	step UP
PlayerMovesOutOfWay:
	step UP
	turn_head DOWN
	step_end

SilverAfterBattleWithFollower:
	step LEFT
SilverAfterBattle:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

MovementBattle:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	step_end

MovementBattleDontBump:
	big_step DOWN
	big_step LEFT
	step_end

ElmTakesPlayerToLab1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
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
	step UP
	step_end

ElmTakesPlayerToLab2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
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
	step UP
	step_end

ElmStopsPlayer1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

ElmStopsPlayer2:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

RivalMeetsPlayer:
	step UP
	step UP
	step UP
	step UP
	step UP
	step LEFT
	step_end

RivalGoesToLab:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PlayerEntersLab:
	step UP
	step_end

Movement_TeacherRunsToYou1_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Movement_TeacherRunsToYou2_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

Movement_TeacherBringsYouBack1_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Movement_TeacherBringsYouBack2_NBT:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

Text_Study101:
	text "…And if we spend"
	line "just a few more"
	para "days observing the"
	line "#MON living in"
	cont "ROUTE 29<...>"

	para "<...>"

	para "He seems to be"
	line "completely"
	cont "occupied<...>"
	done

Text_GearIsImpressive:
	text "Wow, your #GEAR"
	line "is impressive!"

	para "Did your mom get"
	line "it for you?"
	done

Text_WaitPlayer:
	text "Woah! Hold on!"
	done

Text_ItsDangerousToGoAlone:
	text "Hold your"
	line "RAPIDASH!"

	para "<PLAY_G>, don't"
	line "you know that it's"
	para "a bad idea to just"
	line "wander out into"
	para "ROUTE 29 without"
	line "a #MON? Wild"
	para "#MON live in"
	line "the tall grass,"
	para "and who knows"
	line "what else could"
	para "happen to you out"
	line "in the wild!"

	para "Come on, let's"
	line "head to my LAB."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done

Text_WheresYourMon:
	text "You got a #MON"
	line "at the LAB?"
	para "Can I see it,"
	line "please?"
	para "Take it for a"
	line "walk with you!"
	done

Text_TellMomIfLeaving:
	text "Hi, <PLAY_G>!"
	line "Leaving again?"

	para "You should tell"
	line "your mom if you"
	cont "are leaving."
	done

Text_CallMomOnGear:
	text "Call your mom on"
	line "your #GEAR to"
	para "let her know how"
	line "you're doing."
	done

Text_ElmDiscoveredNewMon:
	text "Yo, <PLAYER>!"

	para "I hear PROF.ELM"
	line "discovered some"
	cont "new #MON."
	done

SilentTownRivalText1:
	text "<PLAY_G>!"

	para "I've been waiting"
	line "at the LAB for"
	para "hours, and you're"
	line "just coming out"
	cont "of your house?"

	para "Man, are you not"
	line "excited to get"
	para "your first"
	line "#MON?"

	para "Although, you"
	line "might've had the"
	para "right idea to stay"
	line "home for so long."
	para "ELM's been gone,"
	line "and all that"
	para "waiting in the"
    line "LAB was boring!"
	done

SilentTownRivalText2:
	text "All that boredom's"
	line "the only reason I"
	para "left to check on"
	line "you!"

	para "Anyways… "

	para "Well, you, uhh…"

	para "What is it that"
	line "you call your"
	cont "mother again?"
	done

SilentTownRivalText3:
	text "Bahaha!"

	para "'<MOM>'?"
	para "Don't make me"
	line "laugh!"

	para "Calling her"
	line "something so"
	para "childish is"
	line "hilarious!"

	para "Well, see ya!"

	para "I'm gonna head"
	line "back to ELM's!"
	done

SilentTownSignText:
	text "SILENT TOWN"
	para "Forever Peaceful"
	done

SilentTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

SilentTownElmsLabSignText:
	text "ELM #MON LAB"
	done

SilentTownElmsHouseSignText:
	text "ELM'S HOUSE"
	done

KantoRockText:
	text "Hngh…"

	para "Sorry, kid. The"
	line "road ahead is"
	para "all blocked off"
	line "until I can find a"
	para "way to move this"
	line "rock out of the"
	cont "way."
	done

SilverEntranceWinText:
	text "Wow! I thought my"
	line "#MON would have"
	para "been the best!"
	done

SilverEntranceLossText:
	text "Alright! My"
	line "#MON rules!"
	done

EntranceRivalText_EitherResult:
	text "<PLAY_G>! I'm"
	line "so ready to show"
	para "the world how"
	line "great my #MON"
	cont "is!"
	para "I'll see you"
	line "around soon!"
	done

TimeToBattle:
	text "Hey, wait up!"

	para "You have a #-"
	line "MON… And so do I."

	para "You know what"
	line "this means,"
	cont "right?"
	done

RivalYesText:
	text "That's right. We"
	line "battle, and you"
	para "become my first"
	line "step on my stair-"
	cont "way to the top!"
	done

RivalNoText:
	text "Hehe. Looks like"
	line "it's time for"
	para "some show and"
	line "tell!"
	done

SilentTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 13, 15, ELMS_LAB, 1
	warp_event  5,  7, PLAYERS_HOUSE_1F, 1
	warp_event  3, 15, ELMS_HOUSE, 1
	warp_event 11,  7, SILENT_POKECENTER_1F, 1

	db 4 ; coord events
	coord_event  1, 10, SCENE_TEACHER_STOPS, ElmStopsYouScene1
	coord_event  1, 11, SCENE_TEACHER_STOPS, ElmStopsYouScene2
	coord_event  5,  8, SCENE_DEFAULT, SilentTown_RivalGreets
	coord_event 10, 16, SCENE_ELM_ENTRANCE_BATTLE, SilentTownSilverBattleScript

	db 4 ; bg events
	bg_event 12, 10, BGEVENT_READ, SilentTownSign
	bg_event  3,  7, BGEVENT_READ, SilentTownPlayersHouseSign
	bg_event 11, 15, BGEVENT_READ, SilentTownElmsLabSign
	bg_event  7, 15, BGEVENT_READ, SilentTownElmsHouseSign

	db 6 ; object events
	object_event  8,  8, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentTownTeacherScript, -1
	object_event 15, 10, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SilentTownFisherScript, -1
	object_event  7, 13, SPRITE_SILENTTOWN_RIVAL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentTownRivalScript, EVENT_RIVAL_SILENT_TOWN
	object_event  7, 10, SPRITE_ELM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SilentTownElmScript, EVENT_ELM_APPEARED_SILENT_TOWN
	object_event 19, 10, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilentTownFisher2Script, -1
	object_event  7, 16, SPRITE_SILENTTOWN_RIVAL_DUDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilentTownSilverBattleScript, EVENT_FOUGHT_RIVAL_SILENT_TOWN
