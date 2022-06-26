	object_const_def ; object_event constants
	const ROUTE34_SILVER
	
Route34_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
Route34Silver:
	faceplayer
	playmusic MUSIC_RIVAL_ENCOUNTER
	showemote EMOTE_SHOCK, ROUTE34_SILVER, 15
	opentext
	writetext .Text
	waitbutton
	closetext
	setevent EVENT_AZALEA_POKECENTER_SHOW_SAVE_DIALOG
	credits
	end

.Text:
	text "Hey <PLAYER>!"
	line "You finally made"
	cont "it!"
	para "How was MT. HIVE?"
	line "I thought you'd get"
	cont "lost in it!"
	para "I caught some"
	line "cool bug #MON!"
	para "You better step it"
	line "up if you wanna"
	cont "keep up with me!"
	para "Welp, I'm off to"
	line "challenge the GYM"
	cont "in GOLDENROD!"
	para "Catch ya later!"
	done

Route34_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  9,  2, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route34Silver, -1
