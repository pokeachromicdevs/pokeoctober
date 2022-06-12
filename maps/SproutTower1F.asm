SproutTower1F_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .CheckMomCall

.CheckMomCall:
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iffalse .DoMomCall
	return

.DoMomCall:
	specialphonecall SPECIALCALL_WORRIED
	return

TrainerFledglingTimothy:
	trainer FLEDGLING, FLEDGLING_TIMOTHY, EVENT_BEAT_FLEDGLING_TIMOTHY, .Seen, .Beat, 0, .PostScript

.Seen:
	text "H-have you seen my"
	line "big sis?"
	done

.Beat:
	text "Sis<...> where are"
	line "you?"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PostBattleTxt

.PostBattleTxt:
	text "I<...> I wandered off"
	line "to see the tower<...>"
	para "But now I can't"
	line "find my big sis<...>"
	done

SproutTower1F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  9, 17, VIOLET_CITY, 5
	warp_event 10, 17, VIOLET_CITY, 5
	warp_event  7,  3, SPROUT_TOWER_2F, 1
	warp_event 15, 15, SPROUT_TOWER_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  8,  4, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFledglingTimothy, EVENT_TALKED_TO_LASS_TINA
