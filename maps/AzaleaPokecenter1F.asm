	object_const_def ; object_event constants
	const AZALEAPOKECENTER1F_NURSE

AzaleaPokecenter1F_MapScripts:
	db 1 ; scene scripts
	scene_script .CheckShouldPlayerPromptSave

	db 0 ; callbacks

.CheckShouldPlayerPromptSave:
	checkevent EVENT_AZALEA_POKECENTER_SHOW_SAVE_DIALOG
	iftrue .DoPrompt
	end
.DoPrompt:
	opentext
	writetext .PromptSaveText
	waitbutton
	closetext
	clearevent EVENT_AZALEA_POKECENTER_SHOW_SAVE_DIALOG
	end

.PromptSaveText:
	text "Make sure you save"
	line "here first before"
	cont "playing DEMO 2!"
	done

; scripts here
AzaleaPokecenter1FNurseScript:
	jumpstd pokecenternurse
	
AzaleaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, AZALEA_TOWN, 2
	warp_event  6,  7, AZALEA_TOWN, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FNurseScript, -1
