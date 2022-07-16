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

AzaleaPokecenter1FMysticScript:
	jumptextfaceplayer .Text

.Text:
	text "MORTY is an ex-"
	line "tremely powerful"
	para "GYM LEADER who"
	line "specializes in"
	para "ghost-type"
	line "#MON."
	para "He is only topped"
	line "by AGATHA of the"
	cont "ELITE FOUR."
	done

AzaleaPokecenter1FMediumScript:
	faceplayer
	opentext
	writetext .Prompt
	yesorno
	iftrue .Yes
; No
	writetext .NoTxt
	waitbutton
	sjump .End
.Yes
	writetext .YesTxt
	waitbutton
.End
	closetext
	end

.Prompt:
	text "I can see your"
	line "future!"
	para "Would you like to"
	line "know it?"
	done

.NoTxt:
	text "Come back anytime"
	line "you like!"
	done

.YesTxt:
	text "I sense a great"
	line "journey<...> full of"
	para "both hardships and"
	line "triumphs."
	para "Keep going!"
	done

AzaleaPokecenter1FFirebeatherScript:
	jumptextfaceplayer .Text

.Text:
	text "Some of us FIRE-"
	line "BREATHERS use"
	para "#MON like"
	line "GASTLY because"
	para "they know WILL-O-"
	line "WISP."
	para "This move has a"
	line "chance to burn the"
	cont "foe."
	done

AzaleaPokecenter1FGentlemanScript:
	jumptextfaceplayer .Text

.Text:
	text "Shh! I'm a GLOBAL"
	line "POLICE agent!"
	para "I'm staying in this"
	line "#MON CENTER so"
	para "I can spy on TEAM"
	line "ROCKET and gather"
	cont "some secret intel!"
	done

AzaleaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, AZALEA_TOWN, 2
	warp_event  6,  7, AZALEA_TOWN, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FNurseScript, -1
	object_event  9,  5, SPRITE_MYSTIC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FMysticScript, -1
	object_event 10,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FMediumScript, -1
	object_event 14,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FFirebeatherScript, -1
	object_event 10,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FGentlemanScript, -1
