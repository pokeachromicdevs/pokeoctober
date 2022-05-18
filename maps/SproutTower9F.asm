	object_const_def
	const SPROUTTOWER_SAGELI

SproutTower9F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
SageLiScript:
	faceplayer
	checkevent EVENT_BEAT_SAGE_LI
	iftrue .AlreadyBattled

; load the trainer parties beforehand
	winlosstext .WinText, 0
	loadtrainer SAGE, LI

; talk to sage
	opentext
	writetext .FirstTimeTalkingText
	encountermusic ; gen 1 style
	writetext .BeforeBattleText
	waitbutton
	closetext

	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SAGE_LI

	opentext
	writetext .AfterBattleText
	waitbutton

	verbosegivetmhm BRIGHT_MOSS_TMNUM
	closetext

.AlreadyBattled:
	opentext
	writetext .SageLiExplainsHM
	waitbutton
	closetext
	end

.FirstTimeTalkingText:
	text "Hello, child."
	para "I assume you have"
	line "climbed up here"
	para "like the previous"
	line "child?"
	para "Because one of my"
	line "fellow sages"
	para "wishes me to test"
	line "your heart?"
	para "Hohoho!"
	para "In that case, I"
	line "shall see what"
	cont "lies within you."
	prompt

.BeforeBattleText:
	text "Prepare yourself!"
	done

.WinText:
	text "My<...> your heart is"
	line "quite pure."
	done

.AfterBattleText:
	text "Indeed, that"
	line "battle showed that"
	para "you care deeply"
	line "for your #MON,"
	para "and that you have"
	line "no ill will."
	para "Wonderful! You"
	line "have won our"
	cont "trust!"
	para "Also, please, take"
	line "this."
	done

.SageLiExplainsHM:
	text "That is the HM for"
	line "BRIGHT MOSS."
	para "With that move,"
	line "even the dark"
	para "depths of DARK"
	line "CAVE can be"
	para "brightened up a"
	line "bit."
	para "Use it well."
	done

SproutTower9F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  1,  9, SPROUT_TOWER_8F, 6
	warp_event 11,  9, SPROUT_TOWER_8F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
