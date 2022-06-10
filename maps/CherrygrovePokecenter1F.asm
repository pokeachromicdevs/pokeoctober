	object_const_def ; object_event constants
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN
	const CHERRYGROVEPOKECENTER1F_TEACHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN_2
	const CHERRYGROVEPOKECENTER1F_LASS
	const CHERRYGROVEPOKECENTER1F_SCIENTIST

	const CHERRYGROVEPOKECENTER1F_BLACKBELT_1
	const CHERRYGROVEPOKECENTER1F_BLACKBELT_2
	const CHERRYGROVEPOKECENTER1F_BLACKBELT_3

CherrygrovePokecenter1F_MapScripts:
	db 2 ; scene scripts
	scene_script .NoScene ; SCENE_CHERRYGROVEPOKECENTER1F_NOTHING
	scene_script .NoScene ; SCENE_CHERRYGROVEPOKECENTER1F_A_LINE_FORMS

	db 1 ; callbacks
	callback MAPCALLBACK_SPRITES, .IsLineForming

.NoScene
	end

.IsLineForming
	checkscene
	iffalse .no_line
	appear CHERRYGROVEPOKECENTER1F_BLACKBELT_1
	appear CHERRYGROVEPOKECENTER1F_BLACKBELT_2
	appear CHERRYGROVEPOKECENTER1F_BLACKBELT_3
	return
.no_line
	disappear CHERRYGROVEPOKECENTER1F_BLACKBELT_1
	disappear CHERRYGROVEPOKECENTER1F_BLACKBELT_2
	disappear CHERRYGROVEPOKECENTER1F_BLACKBELT_3
	return

CherrygrovePokecenter1FNurseScript:
	jumpstd pokecenternurse
	
CherrygrovePokecenter1F_ElmsAideScript:
	faceplayer
	opentext
	writetext UnknownText_0x69555
	waitbutton
	verbosegivetmhm UPROOT_TMNUM
	writetext GotUprootText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg TOGEPI, 5
	getstring STRING_BUFFER_4, .eggname
	scall .AideGivesEgg
	setevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	clearevent EVENT_ELMS_AIDE_IN_LAB
	clearevent EVENT_TOGEPI_HATCHED
	setmapscene ROUTE_32, SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	writetext UnknownText_0x695c5
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .AideWalksAroundPlayer
	turnobject PLAYER, DOWN
	applymovement CHERRYGROVEPOKECENTER1F_SCIENTIST, MovementData_AideWalksStraightOutOfPokecenter
	playsound SFX_EXIT_BUILDING
	disappear CHERRYGROVEPOKECENTER1F_SCIENTIST
	setevent EVENT_ELM_NOT_IN_LAB ; elm departs for saffron
	waitsfx
	end

.AideWalksAroundPlayer:
	applymovement CHERRYGROVEPOKECENTER1F_SCIENTIST, MovementData_AideWalksLeftToExitPokecenter
	turnobject PLAYER, DOWN
	applymovement CHERRYGROVEPOKECENTER1F_SCIENTIST, MovementData_AideFinishesLeavingPokecenter
	playsound SFX_EXIT_BUILDING
	disappear CHERRYGROVEPOKECENTER1F_SCIENTIST
	waitsfx
	end

.eggname
	db "EGG@"

.AideGivesEgg:
	jumpstd receivetogepiegg
	end

.PartyFull:
	writetext UnknownText_0x69693
	waitbutton
	closetext
	end

CherrygrovePokecenter1FFisherScript:
	jumptextfaceplayer CherrygrovePokecenter1FFisherText

CherrygrovePokecenter1FGentlemanScript:
	jumptextfaceplayer CherrygrovePokecenter1FGentlemanText
	
CherrygrovePokecenter1FGentleman2Script:
	checkscene
	iftrue .line_forming
	jumptextfaceplayer CherrygrovePokecenter1FGentleman2Text
.line_forming
	jumptextfaceplayer CherrygrovePokecenter1FGentleman2Text2
	
CherrygrovePokecenter1FBeautyScript:
	jumptextfaceplayer CherrygrovePokecenter1FBeautyText
	
CherrygrovePokecenter1FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .CommCenterOpen
	writetext CherrygrovePokecenter1FTeacherText
	waitbutton
	closetext
	end

.CommCenterOpen:
	writetext CherrygrovePokecenter1FTeacherText_CommCenterOpen
	waitbutton
	closetext
	end
	
MovementData_AideWalksStraightOutOfPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MovementData_AideWalksLeftToExitPokecenter:
	step LEFT
	step DOWN
	step_end

MovementData_AideFinishesLeavingPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step_end

UnknownText_0x69555:
	text "Ah, there you"
	line "are, <PLAYER>."

	para "PROF.ELM has en-"
	line "trusted me to"
	cont "deliver two things"
	
	para "to you. Firstly…"
	done
	
GotUprootText:
	text "HM 01, UPROOT."
	
	para "Unlike TMs, HMs"
	line "can be be used as"
	cont "much as your heart"
	
	para "desires. UPROOT"
	line "can yank small"
	cont "trees blocking"
	
	para "your path out of"
	line "the ground. And"
	cont "now for the second"
	para "item…"
	done
	
UnknownText_0x695c5:
	text "Yes, the EGG that"
	line "you retrieved for"
	cont "ELM is now yours."

	para "From all the stud-"
	line "ies ELM has per-"
	cont "formed on EGGs,"
	
	para "he's discovered"
	line "that EGGs hatch"
	cont "faster when sur-"
	
	para "rounded with other"
	line "#MON."
	
	para "Therefore, leaving"
	line "it in the LAB"
	cont "would mean it"
	
	para "would take ages to"
	line "hatch. Thus, ELM"
	cont "wants you to care"
	
	para "of the EGG. Raise"
	line "that little #-"
	cont "MON well."
	
	para "Anyways, I suppose"
	line "I better get go-"
	cont "ing. ELM's getting"
	cont "ready for a trip,"
	
	para "and he needs me"
	line "to watch over the"
	cont "LAB while he's"
	
	para "gone. We don't want"
	line "anyone breaking"
	cont "into to the LAB,"
	
	para "after all. Fare-"
	line "well for now."
	done

UnknownText_0x69693:
	text "Oh, no. You can't"
	line "carry any more"
	cont "#MON with you."

	para "I'll wait here"
	line "while you make"
	cont "room for the EGG."
	done

UnknownText_0x696f2:
	text "B-but… PROF.ELM"
	line "asked for you…"
	done

UnknownText_0x69712:
	text "<PLAY_G>, will you"
	line "take the EGG?"
	done

CherrygrovePokecenter1FFisherText:
	text "It's great. I can"
	line "store any number"

	para "of #MON, and"
	line "it's all free."
	done

CherrygrovePokecenter1FGentlemanText:
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done

CherrygrovePokecenter1FTeacherText:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done

CherrygrovePokecenter1FTeacherText_CommCenterOpen:
	text "The COMMUNICATION"
	line "CENTER upstairs"
	cont "was just built."

	para "I traded #MON"
	line "there already!"
	done
	
CherrygrovePokecenter1FGentleman2Text:
	text "Those hooligans"
	line "from the DOJO get"
	para "their #MON into"
	line "such rough battles"
	para "that everyone at"
	line "the DOJO frequent-"
	para "ly comes and heals"
	line "their #MON all"
	cont "at once."

	para "The lines that"
	line "form when that"
	cont "happens<...>"

	para "Those lines are so"
	line "dreadfully long<...>"
	done

CherrygrovePokecenter1FGentleman2Text2:
	text "Sigh<...> not again."

	para "There's a wares"
	line "shop right next to"
	cont "the GYM here."

	para "It's blocked by a"
	line "tree, so you need"
	cont "to UPROOT it."

	para "There, you can get"
	line "some SUPER POTION"
	para "to help until the"
	line "line is cleared."

	para "Good luck."
	done

CherrygrovePokecenter1FBeautyText:
	text "I heard there's a"
	line "pagoda around here"
	cont "somewhere that"
	
	para "sells special" 
	line "wares not normally"
	cont "found elsewhere,"
	
	para "but I can't find"
	line "it at all."
	
	para "How annoying…"
	done

CherrygrovePokecenter1FQueueGuy1:
	jumptextfaceplayer .Text

.Text:
	text "Hey, no cutting in"
	line "line!"
	done

CherrygrovePokecenter1FQueueGuy2:
	jumptextfaceplayer .Text

.Text:
	text "I was here first."
	done

CherrygrovePokecenter1FQueueGuy3:
	jumptextfaceplayer .Text

.Text:
	text "Be patient, will"
	line "ya?!"
	done

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, CHERRYGROVE_CITY, 2 ; was 3, 7
	warp_event  6,  7, CHERRYGROVE_CITY, 2 ; was 4, 7
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1 ; was 3, 1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	object_event  9,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentlemanScript, -1
	object_event  2,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FTeacherScript, -1
	object_event  10, 2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentleman2Script, -1
	object_event  13, 5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FBeautyScript, -1
	object_event  7,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1F_ElmsAideScript, EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER

	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FQueueGuy3, EVENT_LINE_FORMS_IN_CHERRYGROVE_POKEMON_CENTER
	object_event  5,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED,  OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FQueueGuy2, EVENT_LINE_FORMS_IN_CHERRYGROVE_POKEMON_CENTER
	object_event  5,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FQueueGuy1, EVENT_LINE_FORMS_IN_CHERRYGROVE_POKEMON_CENTER
