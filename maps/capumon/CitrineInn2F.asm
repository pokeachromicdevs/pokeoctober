	object_const_def ; object_event constants

CitrineInn2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CitrineInn2F_HealMons:
	opentext
	writetext .Prompt
	yesorno
	iffalse .Finish
	closetext
.YesHeal
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_CITRINE_INN_REST
	special StubbedTrainerRankings_Healings
	special HealParty
	pause 80
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext .HealedMessage
	waitbutton
	closetext
	end
.Finish
	closetext
	end
.Prompt:
	text "Would you like to"
	line "rest here?"
	done
.HealedMessage:
	text "Your #MON are"
	line "fully healed!"
	done

CitrineInn2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  0,  0, CITRINE_INN_1F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  1, BGEVENT_LEFT, CitrineInn2F_HealMons
	bg_event  3,  2, BGEVENT_LEFT, CitrineInn2F_HealMons

	db 2 ; object events
	object_event  8,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 12,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

