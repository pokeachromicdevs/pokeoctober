	object_const_def ; object_event constants
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN
	const CHERRYGROVEPOKECENTER1F_TEACHER
	const CHERRYGROVEPOKECENTER1F_SWIMMER_GIRL
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN_2

CherrygrovePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygrovePokecenter1FNurseScript:
	jumpstd pokecenternurse

CherrygrovePokecenter1FFisherScript:
	jumptextfaceplayer CherrygrovePokecenter1FFisherText

CherrygrovePokecenter1FGentlemanScript:
	jumptextfaceplayer CherrygrovePokecenter1FGentlemanText
	
CherrygrovePokecenter1FGentleman2Script:
	jumptextfaceplayer CherrygrovePokecenter1FGentleman2Text
	
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
	cont "their #MON into"
	
	para "such rough battles"
	line "that everyone at"
	cont "the DOJO frequently"
	
	para "frequently comes"
	line "and heals their"
	cont "#MON all at once."
	
	para "The lines that"
	line "form when that"
	cont "happens…those lines"
	
	para "are so dreadfully"
	line "long…"
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

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, CHERRYGROVE_CITY, 2 ; was 3, 7
	warp_event  6,  7, CHERRYGROVE_CITY, 2 ; was 4, 7
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1 ; was 3, 1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentlemanScript, -1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FTeacherScript, -1
	object_event  10, 2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentleman2Script, -1
	object_event  12, 5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FBeautyScript, -1