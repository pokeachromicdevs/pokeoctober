	object_const_def ; object_event constants
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK

MrPokemonsHouse_MapScripts:
	db 2 ; scene scripts
	scene_script .MeetMrPokemon ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.MeetMrPokemon:
	prioritysjump .MrPokemonEvent
	end

.DummyScene:
	end

.MrPokemonEvent:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	opentext
	writetext MrPokemonIntroText1
	waitbutton
	closetext
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	buttonsound
	waitsfx
	giveitem ELMS_EGG
	writetext MrPokemonsHouse_GotEggText
	playsound SFX_FANFARE_2
	waitsfx
	itemnotify
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod CHERRYGROVE_CITY
	writetext MrPokemonIntroText3
	buttonsound
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	buttonsound
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
	closetext
	sjump MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkitem RED_SCALE
	iftrue .RedScale
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .AlwaysNewDiscoveries
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	end

.AlwaysNewDiscoveries:
	writetext MrPokemonText_AlwaysNewDiscoveries
	waitbutton
	closetext
	end

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse .refused
	verbosegiveitem EXP_SHARE
	iffalse .full
	takeitem RED_SCALE
	sjump .AlwaysNewDiscoveries

.refused
	writetext MrPokemonText_Disappointed
	waitbutton
.full
	closetext
	end

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	turnobject PLAYER, RIGHT
	opentext
	writetext MrPokemonsHouse_OakText1
	waitbutton
	closetext
	checkfollower
	iffalse .no_follower
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToFollower
	turnobject FOLLOWER, RIGHT
	pause 30
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksBackToPlayer
	turnobject FOLLOWER, UP
.no_follower
	opentext
	writetext MrPokemonsHouse_OakText1b
	waitbutton
	closetext
	opentext
	writetext MrPokemonsHouse_GetDexText
	giveitem OAKS_PARCEL
	playsound SFX_ITEM
	waitsfx
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	checkfollower
	iffalse .no_follower2
	turnobject FOLLOWER, RIGHT
	applymovement FOLLOWER, MrPokemonsHouse_FollowerMovesOutOfWay
.no_follower2
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	checkfollower
	iffalse .no_follower3
	applymovement FOLLOWER, MrPokemonsHouse_FollowerMovesOutOfWay2
.no_follower3
	turnobject PLAYER, UP
	opentext
	writetext MrPokemonsHouse_MrPokemonHealText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special StubbedTrainerRankings_Healings
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	setevent EVENT_RIVAL_SILENT_TOWN
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	setmapscene ELMS_LAB, SCENE_ELMSLAB_RECEIVE_DEX
	setscene SCENE_FINISHED
;	specialphonecall SPECIALCALL_ROBBED
	end

MrPokemonsHouse_ForeignMagazines:
	jumptext MrPokemonsHouse_ForeignMagazinesText

MrPokemonsHouse_BrokenComputer:
	jumptext MrPokemonsHouse_BrokenComputerText

MrPokemonsHouse_StrangeCoins:
	jumptext MrPokemonsHouse_StrangeCoinsText

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step RIGHT
	step UP
	step_end

MrPokemonsHouse_FollowerMovesOutOfWay:
	fix_facing
	step LEFT
	remove_fixed_facing
	step_end

MrPokemonsHouse_FollowerMovesOutOfWay2:
	step UP
	step_end

MrPokemonsHouse_OakWalksToFollower:
	step DOWN
	turn_head LEFT
	step_end

MrPokemonsHouse_OakWalksBackToPlayer:
	step UP
	turn_head LEFT
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step DOWN
	step LEFT
	step LEFT
	step_end

MrPokemonsHouse_OakExits:
	step DOWN
	step LEFT
	turn_head DOWN
	step_sleep 2
	step_end

MrPokemonIntroText1:
	text "Ah, hello there!" 

	para "You must be the"
	line "trainer ELM sent."
	done

MrPokemonIntroText2:
	text "In that case,"
	line "here's ELM's EGG"
	cont "back."
	done

MrPokemonsHouse_GotEggText:
	text "<PLAYER> received"
	line "ELM's EGG."
	done

MrPokemonIntroText3:
	text "I'll admit, even"
	line "I haven't seen an"
	para "EGG quite like"
	line "this one. It might"
	para "contain a new"
	line "#MON we've"
	para "never seen"
	line "before!"
	
	para "Oh?"
	
	para "Speaking of"
	line "#MON… it looks"
	para "like yours really"
	line "adores you!"
	done

MrPokemonIntroText4:
	text "Hey, OAK!"
	done

MrPokemonIntroText5:
	text "Come check this"
	line "trainer's #MON!"
	done

MrPokemonsHouse_MrPokemonHealText:
	text "You are returning"
	line "to PROF.ELM?"

	para "Here. Your #MON"
	line "should have some"
	cont "rest."
	done

MrPokemonText_ImDependingOnYou:
	text "I'm depending on"
	line "you!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Life is delight-"
	line "ful! Always, new"

	para "discoveries to be"
	line "made!"
	done

MrPokemonsHouse_OakText1:
	text "Pardon me, I was"
	line "busy looking"
	para "through a few"
	line "photos an"
	para "assistant of mine"
	line "sent me recently."

	para "My name's OAK."

	para "I'm a #MON"
	line "researcher."
	para "I heard something"
	line "about examining"
	cont "#MON."
	para "Let's see here<...>"
	done


MrPokemonsHouse_OakText1b:
	text "Oh my! That's one"
	line "happy #MON"
	cont "indeed!"

	para "You really have"
	line "potential if you're"
	para "this loving to"
	line "your #MON!"

	para "Huh? You're the"
	line "trainer ELM sent?"

	para "My, seeing a new"
	line "trainer already"
	para "making a #MON"
	line "so happy<...> that"
	para "sure does bring"
	line "back memories!"
	
	para "Well, since you're"
	line "heading right back"
	para "to ELM, can you"
	line "deliver this"
	para "PARCEL to him for"
	line "me?"
	done

MrPokemonsHouse_GetDexText:
	text "<PLAYER> received"
	line "OAK's PARCEL."
	done

MrPokemonsHouse_OakText2:
	text "I came down around"
	line "this part of"
	para "KANSAI to deliver"
	line "the PARCEL, but I"
	para "stuck around to"
	line "see my old pal MR."
	cont "#MON."

	para "Well now, it"
	line "appears I've hung"
	para "around for too"
	line "long, haha."

	para "I have a radio"
	line "show in GOLDENROD"
	para "to attend to, and"
	line "then I'll get back"
	cont "to my studies."
	para "Farewell for now!"
	done

	done

MrPokemonText_GimmeTheScale:
	text "Hm? That SCALE!"
	line "What's that?"
	cont "A red GYARADOS?"

	para "That's rare! "
	line "I, I want it…"

	para "<PLAY_G>, would you"
	line "care to trade it?"

	para "I can offer this"
	line "EXP.SHARE I got"
	cont "from PROF.OAK."
	done

MrPokemonText_Disappointed:
	text "That's disappoint-"
	line "ing. That happens"
	cont "to be very rare."
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "It's packed with"
	line "foreign magazines."

	para "Can't even read"
	line "their titles…"
	done

MrPokemonsHouse_BrokenComputerText:
	text "It's a big com-"
	line "puter. Hmm. It's"
	cont "broken."
	done

MrPokemonsHouse_StrangeCoinsText:
	text "A whole pile of"
	line "strange coins!"

	para "Maybe they're from"
	line "another country…"
	done

MrPokemonsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ROUTE_31, 1
	warp_event  3,  7, ROUTE_31, 1

	db 0 ; coord events

	db 5 ; bg events
	bg_event  0,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  1,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  6,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  7,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  6,  4, BGEVENT_READ, MrPokemonsHouse_StrangeCoins

	db 2 ; object events
	object_event  3,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  6,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
