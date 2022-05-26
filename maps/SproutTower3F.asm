	object_const_def
	const SPROUT_TOWER_3F_SCHOOLBOY
	const SPROUT_TOWER_3F_TEACHER
	const SPROUT_TOWER_3F_LASS
	const SPROUT_TOWER_3F_POKE_BALL1
	const SPROUT_TOWER_3F_POKE_BALL2
	const SPROUT_TOWER_3F_RIVAL

SproutTower3F_MapScripts:

	db 2 ; scene scripts
	scene_script .Nothing
	scene_script .Nothing

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .Sprites
	
.Nothing:
	end

.Sprites:
	disappear SPROUT_TOWER_3F_RIVAL
	return
	
TrainerSchoolboyAvery:
	trainer SCHOOLBOY, AVERY, EVENT_BEAT_SCHOOLBOY_AVERY, SchoolboyAverySeenText, SchoolboyAveryBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SchoolboyAveryAfterBattleText
	waitbutton
	closetext
	end
	
TrainerTeacherBella:
	trainer TEACHER, BELLA, EVENT_BEAT_TEACHER_BELLA, TeacherBellaSeenText, TeacherBellaBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TeacherBellaAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLassJune:
	trainer LASS, JUNE, EVENT_BEAT_LASS_JUNE, LassJuneSeenText, LassJuneBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext LassJuneAfterBattleText
	waitbutton
	closetext
	end
	
SproutTowerF3EscapeRope:
	itemball ESCAPE_ROPE
	
SproutTowerF3FleeFeather:
	itemball FLEE_FEATHER

SproutTower3F_RivalBattle:
.West:
	hidefollower ; easier than dealing with follower movement
	appear SPROUT_TOWER_3F_RIVAL
	playsound SFX_EXIT_BUILDING
	turnobject PLAYER, RIGHT
	follow PLAYER, SPROUT_TOWER_3F_RIVAL
	applymovement PLAYER, .BackOffWest
	stopfollow
	scall .Continue
; rival walks away
	applymovement SPROUT_TOWER_3F_RIVAL, .RivalGoesHomeWest
	disappear SPROUT_TOWER_3F_RIVAL
	playmapmusic
	moveobject FOLLOWER, 12, 13
	showfollower
	end

.North:
	appear SPROUT_TOWER_3F_RIVAL
	playsound SFX_EXIT_BUILDING
	turnobject PLAYER, DOWN
	turnobject SPROUT_TOWER_3F_RIVAL, UP
	scall .Continue
; rival walks away
	applymovement SPROUT_TOWER_3F_RIVAL, .RivalGoesHomeNorth
	disappear SPROUT_TOWER_3F_RIVAL
	playmapmusic
	end

.RivalGoesHomeWest:
	remove_fixed_facing
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

.RivalGoesHomeNorth:
	remove_fixed_facing
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
.Continue:
	waitsfx
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext .EncounterText
	waitbutton
	closetext

; do battle
	winlosstext .WinAgainstRivalText, 0
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .CyndaTeam
	checkevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	iftrue .TotoTeam
.ChikoTeam
	loadtrainer RIVAL1, RIVAL1_2_CHIKORITA
	sjump .BattleAndFinishUp
.CyndaTeam
	loadtrainer RIVAL1, RIVAL1_2_CYNDAQUIL
	sjump .BattleAndFinishUp
.TotoTeam
	loadtrainer RIVAL1, RIVAL1_2_TOTODILE
	sjump .BattleAndFinishUp
.BattleAndFinishUp
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_RIVAL_AFTER

	setevent EVENT_BEAT_RIVAL_AT_SPROUT_TOWER

	opentext
	writetext .AfterBeatingRivalText
	waitbutton
	closetext

	setscene SCENE_SPROUT_TOWER_3F_BATTLED_RIVAL
	end

.BackOffWest:
	fix_facing
	step LEFT
	remove_fixed_facing
	step_end

.BackOffEast:
	fix_facing
	step RIGHT
	remove_fixed_facing
	step_end

.WinAgainstRivalText:
	text "Shoot! You got me!"
	done

.AfterBeatingRivalText:
	text "Man! Even though I"
	line "lost, that battle"
	cont "has hyped me up!"
	para "Now my urge to"
	line "battle as many"
	para "people as I can"
	line "within this region"
	para "has gotten even"
	line "stronger!"
	para "Thanks, <PLAY_G>!"
; LGP/E vibes...
	para "You're the best"
	line "rival a friend"
	cont "could have!"
	para "Well, I better get"
	line "going."
	para "I have another GYM"
	line "to conquer!"
	para "See ya later!"
	done

.EncounterText:
	text "Oh!"
	para "Hey! <PLAY_G>!"
	line "You're here too?"
	para "Some old man told"
	line "me to face some"
	para "elder SAGE up in"
	line "this tower,"
	para "claiming that he"
	line "needed to see"
	para "'what lied in my"
	line "heart' or"
	para "something like"
	line "that."
	para "The elder said I"
	line "was mostly fine,"
	para "but I'm rushing"
	line "through things a"
	cont "bit too quick."
	para "Anyways, since"
	line "we're both here,"
	para "we might as well"
	line "battle again!"
	para "It's been too"
	line "long!"
	done
	
SchoolboyAverySeenText:
	text "This place is"
	line "huge!"
	
	para "Can you believe"
	line "it?!"
	done
	
SchoolboyAveryBeatenText:
	text "I can't believe I"
	line "lost<...>"
	done
	
SchoolboyAveryAfterBattleText:
	text "This place is"
	line "about as tall as"
	
	para "a STEELIX! It's"
	line "insane!"
	done 
	
TeacherBellaSeenText:
	text "Well, since my"
	line "students aren't"
	
	para "going to pay"
	line "attention to me,"
	
	para "then I might as"
	line "well have a quick"
	cont "battle."
	done
	
TeacherBellaBeatenText:
	text "Woah! Who taught"
	line "you that?"
	done 
	
TeacherBellaAfterBattleText:
	text "Sigh<...>well, back to"
	line "desperately trying"
	
	para "to get these"
	line "students to pay"
	
	para "attention, I"
	line "suppose."
	done 
	
LassJuneSeenText:
	text "Woo! Field trip!"
	done
	
LassJuneBeatenText:
	text "You ruined it!"
	done

LassJuneAfterBattleText:
	text "You ruined a"
	line "field trip for an"
	
	para "innocent girl."
	
	para "You should be"
	line "ashamed of your-"
	cont "self."
	done
	
SproutTower3F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events

	warp_event  9, 17, SPROUT_TOWER_2F, 3
	warp_event 15,  7, SPROUT_TOWER_2F, 4 
	warp_event 19, 17, SPROUT_TOWER_2F, 5
	warp_event  5, 15, SPROUT_TOWER_4F, 1
	warp_event  7,  3, SPROUT_TOWER_4F, 2
	warp_event 13, 13, SPROUT_TOWER_4F, 3
	warp_event 13, 17, SPROUT_TOWER_4F, 4


	db 2 ; coord events
	coord_event 12, 13, SCENE_SPROUT_TOWER_3F_NOTHING, SproutTower3F_RivalBattle.West
	coord_event 13, 12, SCENE_SPROUT_TOWER_3F_NOTHING, SproutTower3F_RivalBattle.North

	db 0 ; bg events

	db 6 ; object events
	object_event 11,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyAvery, -1
	object_event 18,  10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerTeacherBella, -1
	object_event 18,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassJune, -1
	object_event 3, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF3EscapeRope, EVENT_SPROUT_TOWERF3_ESCAPE_ROPE
	object_event 15, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTowerF3FleeFeather, EVENT_SPROUT_TOWERF3_FLEE_FEATHER
	object_event 13, 13, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_BLOCKING_SPROUT_TOWER
