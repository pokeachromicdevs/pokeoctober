	object_const_def
	const AZALEATOWN_GYM_GUY
	const AZALEATOWN_GYM_GUY2

AzaleaTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_SPRITES, .HideSomeSprites

.HideSomeSprites:
	checkevent EVENT_BEAT_MORTY
	iftrue .show_sprites
; hide sprites before morty is beaten
	disappear AZALEATOWN_GYM_GUY2
	return
.show_sprites
; after beating morty
	appear AZALEATOWN_GYM_GUY2
	return

; scripts here

AzaleaTown_GymBlocker:
	checkevent EVENT_BEAT_MORTY
	iffalse .DoBlockingScript ; i am too lazy to use scene scripts...
	end
.DoBlockingScript:
	showemote EMOTE_SHOCK, AZALEATOWN_GYM_GUY, 15
	turnobject AZALEATOWN_GYM_GUY, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext AzaleaTown_GymGuyText1
	waitbutton
	closetext
	follow PLAYER, AZALEATOWN_GYM_GUY
	checkfollower
	iffalse .SkipFollower1
; lock and move follower to the left
	followerstop
	applymovement FOLLOWER, .MoveLeft
.SkipFollower1
	applymovement PLAYER, .MoveDown
	stopfollow
	turnobject AZALEATOWN_GYM_GUY, DOWN
	turnobject PLAYER, UP
	opentext
	writetext AzaleaTown_GymGuyText2
	waitbutton
	closetext
	applymovement AZALEATOWN_GYM_GUY, .GoBackToBase
	checkfollower
	iffalse .SkipFollower2
	followerresume
	applymovement FOLLOWER, .MoveDown2
.SkipFollower2
	end
.MoveLeft
	step LEFT
	turn_head DOWN
	step_end
.MoveDown
	step DOWN
.MoveDown2
	step DOWN
	step_end

.GoBackToBase
	step UP
	step LEFT
	step_end

AzaleaTown_GymGuy:
	jumptextfaceplayer AzaleaTown_GymGuyText2

AzaleaTown_GymGuy2:
	jumptextfaceplayer AzaleaTown_GymGuyText3

AzaleaTown_GymGuyText1:
	text "H-Hey! You're a"
	line "trainer, right?"
	done

AzaleaTown_GymGuyText2:
	text "Aren't you gonna"
	line "try out our GYM?"
	para "Why don't you show"
	line "off how brave your"
	cont "#MON are there?"
	done

AzaleaTown_GymGuyText3:
	text "Yeah! I knew you"
	line "could take on"
	cont "MORTY!"
	done

AzaleaTown_GymGuyText4:
	text "<...>Hey, did you see"
	line "what's going on up"
	cont "there?"
	para "Be careful!"
	done

KurtsHouseSign:
	jumptext .Text
.Text:
	text "KURT's HOUSE"
	done

AzaleaGymSign:
	jumptext .Text
.Text:
	text "AZALEA TOWN"
	line "#MON GYM"
	cont "LEADER: MORTY"

	para "The Mystic Seer of"
	line "the Future"
	done

AzaleaTownSign:
	jumptext .Text
.Text:
	text "AZALEA TOWN"
	line "Where People and"

	para "#MON Live in"
	line "Happy Harmony"
	done

AzaleaBeauty:
	jumptextfaceplayer .Text
.Text:
	text "KURT has some"
	line "pretty good BALLS"
	para "for an old geezer,"
	line "but I heard"
	para "MORTY's been"
	line "crafting # BALLS"
	cont "lately."
	para "I bet MORTY's"
	line "BALLS are far"
	cont "superior."
	done

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event 21,  7, ROUTE_33_WEST_GATE, 3
	warp_event 11,  5, AZALEA_POKECENTER_1F, 1
	warp_event 15,  5, AZALEA_MART, 1
	warp_event  5,  9, KURTS_HOUSE, 1
	warp_event  4,  3, AZALEA_GYM, 1
	warp_event 11, 11, AZALEA_LEFT_HOUSE, 1
	warp_event 15, 11, AZALEA_RIGHT_HOUSE, 1

	db 1 ; coord events
	coord_event 9, 0, 0, AzaleaTown_GymBlocker

	db 3 ; bg events
	bg_event  4, 10, BGEVENT_READ, KurtsHouseSign
	bg_event  7,  5, BGEVENT_READ, AzaleaGymSign
	bg_event 10,  8, BGEVENT_READ, AzaleaTownSign

	db 3 ; object events
	object_event 8, 0, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTown_GymGuy, EVENT_BEAT_MORTY
	object_event 13,  6, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTown_GymGuy2, EVENT_GYM_GUY_IN_AZALEA_TOWN
	object_event  8, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaBeauty, -1
