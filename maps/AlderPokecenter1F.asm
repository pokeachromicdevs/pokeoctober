	object_const_def ; object_event constants
	const ALDERPOKECENTER1F_NURSE
	const ALDERPOKECENTER1F_KURT
	const ALDERPOKECENTER1F_GAMEBOYGUY

AlderPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

AlderPokecenter1FNurseScript:
	jumpstd pokecenternurse

AlderPokecenter1FGameBoyGuyScript:
	jumptextfaceplayer .Txt

.Txt:
	text "Right now, I'm"
	line "trading #MON"
	para "with my sister"
	line "over LINK CABLE."
	para "I've always wanted"
	line "KOTORA, but I can't"
	cont "find it anywhere<...>"
	done

AlderPokecenter1FGameBoyGirlScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I love trading"
	line "#MON with my"
	cont "brother!"
	para "I'm trading my"
	line "KOTORA for his"
	cont "MOIBELLE!"
	done

AlderPokecenter1FSoldierScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I came to ALDER"
	line "after seeing a"
	para "couple of ROCKETs"
	line "and drove'm off"
	cont "with my #MON."
	para "I've made it my"
	line "mission to destroy"
	para "everything related"
	line "to TEAM ROCKET."
	para "You better not as-"
	line "sociate with them,"
	cont "kid."
	done

AlderPokecenter1FOldmanScript:
	jumptextfaceplayer .Txt

.Txt:
	text "ALDER is a quaint"
	line "little town."
	para "My wife and I of-"
	line "ten spend time by"
	para "its pier to relive"
	line "our first date."
	done

AlderPokecenter1FOldladyScript:
	jumptextfaceplayer .Txt

.Txt:
	text "I met my husband"
	line "here in ALDER TOWN"
	para "after moving from"
	line "CELADON in KANTO."
	para "It was quite the"
	line "change of pace,"
	para "but it was worth"
	line "it."
	done

AlderPokecenter1FKurt:
	faceplayer
	opentext
	writetext .Text1
	buttonsound
	waitsfx
	random 2
	iftrue .GiveDirectBall
; give love ball
	giveitem LOVE_BALL
	writetext .GotLoveBallTxt
	playsound SFX_ITEM
	waitsfx
	itemnotify
	writetext .LoveBallTxt
	buttonsound
	waitsfx
	setevent EVENT_GOT_LOVE_BALL_FROM_KURT
	sjump .EndScript
.GiveDirectBall:
	giveitem DIRECT_BALL
	writetext .GotDirectBallTxt
	playsound SFX_ITEM
	waitsfx
	itemnotify
	writetext .DirectBallTxt
	buttonsound
	waitsfx
	setevent EVENT_GOT_DIRECT_BALL_FROM_KURT
	;sjump .EndScript
.EndScript:
	writetext .Text3
	waitbutton
	closetext
	setevent EVENT_KURT_IN_ALDER_POKEMON_CENTER
	setevent EVENT_GOT_BALL_FROM_KURT_IN_ALDER_POKECENTER
; walk away
	readvar VAR_FACING
	ifequal RIGHT, .IsFacingWest
; player talks to kurt from north or south, discount east
	applymovement ALDERPOKECENTER1F_KURT, .MoveOutNorthSouth
	disappear ALDERPOKECENTER1F_KURT
	playsound SFX_EXIT_BUILDING
	end
.IsFacingWest:
	applymovement ALDERPOKECENTER1F_KURT, .MoveOutWest
	disappear ALDERPOKECENTER1F_KURT
	playsound SFX_EXIT_BUILDING
	end

.MoveOutNorthSouth:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

.MoveOutWest:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

.Text1:
	text "KURT: Oh! Hey,"
	line "<PLAYER>! Glad"
	cont "to see you again!"
	para "I'm just about done"
	line "taking a rest"
	cont "here."
	para "Those grunts sure"
	line "did a number on"
	cont "my back<...>"
	para "Oh, right! What"
	line "can I ever do to"
	cont "thank you?"
	para "I know! Here, take"
	line "this."
	done

.GotDirectBallTxt:
	text "<PLAYER> received"
	line "DIRECT BALL."
	done

.DirectBallTxt:
	text "That's the DIRECT"
	line "BALL. It's one of"
	para "my special APRI-"
	line "CORN BALLs."
	para "When you use it,"
	line "you'll find that"
	para "catching #MON"
	line "will be easier by"
	para "a factor of about"
	line "two-thirds."
	done

.GotLoveBallTxt:
	text "<PLAYER> received"
	line "LOVE BALL."
	done

.LoveBallTxt:
	text "That's the LOVE"
	line "BALL. It's one of"
	para "my special APRI-"
	line "CORN BALLs."
	para "It works best on"
	line "my favorite #-"
	cont "MON."
	para "There's a scroll in"
	line "my house listing"
	para "them all, feel"
	line "free to view it"
	cont "anytime."
	done

.Text3:
	text "I do hope you'll"
	line "find it useful."
	para "Anyways, my back"
	line "is feeling better,"
	para "I should best be"
	line "returning home."
	para "See you later,"
	line "<PLAYER>!"
	done

AlderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5,  7, ALDER_TOWN, 1
	warp_event  6,  7, ALDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	object_event  5,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FNurseScript, -1
	object_event  9,  5, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FKurt, EVENT_KURT_IN_ALDER_POKEMON_CENTER
	object_event 13,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FGameBoyGuyScript, -1
	object_event 14,  5, SPRITE_GAMEBOY_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FGameBoyGirlScript, -1
	object_event  1,  3, SPRITE_SOLDIER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FSoldierScript, -1
	object_event 10,  7, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FOldmanScript, -1
	object_event  9,  7, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlderPokecenter1FOldladyScript, -1
