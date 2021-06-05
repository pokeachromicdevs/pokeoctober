; TODO: have the rival choose a starter and then battle you

	object_const_def ; object_event constants
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER
	const NEWBARKTOWN_SILVER
	const NEWBARKTOWN_ELM
	const NEWBARKTOWN_FISHER_2
	
NewBarkTown_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_NEW_BARK
	clearevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	setevent EVENT_ELM_APPEARED_NEW_BARK_TOWN
	return
	
NewBarkTown_RivalGreets:
	applymovement NEWBARKTOWN_SILVER, RivalMeetsPlayer
	turnobject PLAYER, RIGHT
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext NewBarkTownRivalText1
	waitbutton
	closetext
	opentext
	writetext NewBarkTownRivalText2
	special NameMom 
	waitbutton
	closetext 
	showemote EMOTE_SHOCK, NEWBARKTOWN_SILVER, 15
	opentext
	writetext NewBarkTownRivalText3
	closetext
	applymovement NEWBARKTOWN_SILVER, RivalGoesToLab
	disappear NEWBARKTOWN_SILVER
	setscene SCENE_TEACHER_STOPS
	special FadeOutMusic
	pause 15
	special RestartMapMusic
	setevent EVENT_RIVAL_NEW_BARK_TOWN
	end
	

ElmStopsYouScene1:
	checkevent EVENT_ELM_NEW_BARK_TOWN
	iftrue .skip
	setevent EVENT_ELM_NEW_BARK_TOWN
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
	setevent EVENT_RIVAL_NEW_BARK_TOWN
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
	checkevent EVENT_ELM_NEW_BARK_TOWN
	iftrue .skip
	setevent EVENT_ELM_NEW_BARK_TOWN
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
	setevent EVENT_RIVAL_NEW_BARK_TOWN
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
	
NewBarkTownRivalScript:
	faceplayer
	opentext
	writetext Text_GearIsImpressive
	waitbutton
	closetext
	end
	
NewBarkTownElmScript:
	opentext
	writetext Text_Study101
	waitbutton
	closetext
	end

NewBarkTownTeacherScript:
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
	writetext Text_YourMonIsAdorable
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

NewBarkTownFisherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon
	
NewBarkTownFisher2Script:
	jumptextfaceplayer KantoRockText

NewBarkTownSign:
	jumptext NewBarkTownSignText

NewBarkTownPlayersHouseSign:
	jumptext NewBarkTownPlayersHouseSignText

NewBarkTownElmsLabSign:
	jumptext NewBarkTownElmsLabSignText

NewBarkTownElmsHouseSign:
	jumptext NewBarkTownElmsHouseSignText
	
ElmTakesPlayerToLab1:
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
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
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
	step UP
	step_end
	
ElmStopsPlayer1:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

ElmStopsPlayer2:
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
	
	para "ROUTE 101…"
	
	para "…"
	
	para "He seems to be"
	
	line "completely"
	cont "occupied…"
	
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
	cont "a bad idea to just"

	para "wander out into"
	line "ROUTE 29 without"
	
	para "a #MON? Wild"
	line "#MON live in" 
	cont "the tall grass,"
	cont "and who knows"
	
	para "what else could"
	line "happen to you out"
	cont "in the wild!"
	
	para "Come on, let's"
	line "head to my LAB."
	done

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
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

NewBarkTownRivalText1:
	text "<PLAY_G>!" 
	
	para "I've been waiting"
	line "at the LAB for"
	cont "hours, and you're"
	
	para "just coming out"
	line "of your house?"
	
	para "Man, are you not"
	line "excited to get" 
	cont "your first" 
	
	para "#MON?" 
	
	para "Although, you"
	line "might've had the"
	cont "right idea to stay"
	
	para "home for so long."
	line "ELM's been gone,"
	cont "and all that"
	
	para "waiting in the"
    line "LAB was boring!"
	done

NewBarkTownRivalText2:
	text "All that boredom's"
	line "the only reason I" 
	cont "left to check on"
	
	para "you!"

	para "Anyways… "

	para "Well, you, uhh…"

	para "What is it that"
	line "you call your" 
	cont "mother again?"
	prompt

NewBarkTownRivalText3:
	text "Bahaha!"

	para "Don't make me"
	line "laugh!"

	para "Calling her"
	line "something so"
	cont "childish is"
	cont "hilarious!"

	para "Well, see ya!"

	para "I'm gonna head"
	line "back to ELM's!"
	done

NewBarkTownSignText:
	text "Forever peaceful"
	line "SILENT TOWN"
	done

NewBarkTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

NewBarkTownElmsLabSignText:
	text "ELM #MON LAB"
	done

NewBarkTownElmsHouseSignText:
	text "ELM'S HOUSE"
	done
	
KantoRockText:
	text "Hngh…"
	
	para "Sorry kid, the"
	line "route to KANTO" 
	cont "all blocked off"
	
	para "until I can find a"
	line "way to move this"
	cont "rock out of the"
	
	para "way."
	done 

NewBarkTown_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 13, 13, ELMS_LAB, 1
	warp_event  5,  5, PLAYERS_HOUSE_1F, 1
	warp_event  3, 13, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event 11,  5, ELMS_HOUSE, 1

	db 3 ; coord events
	coord_event  1,  6, SCENE_TEACHER_STOPS, ElmStopsYouScene1
	coord_event  1,  7, SCENE_TEACHER_STOPS, ElmStopsYouScene2
	coord_event  5,  6, SCENE_DEFAULT, NewBarkTown_RivalGreets
	
	db 4 ; bg events
	bg_event 10, 12, BGEVENT_READ, NewBarkTownSign
	bg_event  3,  5, BGEVENT_READ, NewBarkTownPlayersHouseSign
	bg_event 14, 13, BGEVENT_READ, NewBarkTownElmsLabSign
	bg_event  9,  5, BGEVENT_READ, NewBarkTownElmsHouseSign

	db 5 ; object events
	object_event  9,  6, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownTeacherScript, -1
	object_event 13,  8, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisherScript, -1
	object_event  7, 11, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NewBarkTownRivalScript, EVENT_RIVAL_NEW_BARK_TOWN
	object_event  7,  7, SPRITE_ELM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, NewBarkTownElmScript, EVENT_ELM_APPEARED_NEW_BARK_TOWN
	object_event 19,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, NewBarkTownFisher2Script, -1
