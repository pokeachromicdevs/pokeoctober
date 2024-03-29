	object_const_def ; object_event constants
	const VIOLETCITY_SAGE
	const VIOLETCITY_OFFICER
	const VIOLETCITY_SAGE2
	const VIOLETCITY_SAGE3
	const VIOLETCITY_SAGE4
	const VIOLETCITY_SAGE5
	const VIOLETCITY_BUG_CATCHER
	const VIOLETCITY_YOUNGSTER
	const VIOLETCITY_FISHER_MANNY
	const VIOLETCITY_EARL


VioletCity_MapScripts:
	db 1 ; scene scripts
	scene_script .Nothing ; SCENE_VIOLETCITY_NOTHING
	scene_script .Nothing ; SCENE_VIOLETCITY_TALKED_TO_SAGE

	db 0 ; callbacks

.Nothing:
	end

VioletGymSageBlock:
	jumptextfaceplayer VioletGymSageBlockText

TrainerOfficerSamson:
	trainer OFFICER, SAMSON, EVENT_BEAT_OFFICER_SAMSON, OfficerSamsonSeenText, OfficerSamsonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext OfficerSamsonAfterBattleText
	waitbutton
	closetext
	end

VioletGymSageBlockText:
	text "I'm afraid I can't"
	line "let you in."

	para "Not until you've"
	line "proven yourself"

	para "as innocent at"
	line "SPROUT TOWER."
	done

OfficerSamsonSeenText:
	text "Aha! So you"
	line "ROCKETS are trying"

	para "to invade SPROUT"
	line "TOWER, huh?"
	done

OfficerSamsonBeatenText:
	text "Oh<...>you're just a"
	line "kid."
	done

OfficerSamsonAfterBattleText:
	text "Uh<...> let's<...> not tell"
	line "anyone about this."
	done

VioletCity_SageStopsYou:
.North:
	disappear VIOLETCITY_SAGE
	moveobject VIOLETCITY_SAGE, 31, 26
	sjump .Common
.South:
	disappear VIOLETCITY_SAGE
	moveobject VIOLETCITY_SAGE, 31, 27
	; sjump .Common
.Common:
	pause 30
	appear VIOLETCITY_SAGE
	applymovement VIOLETCITY_SAGE, .MoveTowardsPlayer
	opentext
	writetext .Text
	waitbutton
	closetext
	applymovement VIOLETCITY_SAGE, .MoveAwayFromPlayer
	disappear VIOLETCITY_SAGE
	moveobject VIOLETCITY_SAGE, 34, 36 ; usual position
	appear VIOLETCITY_SAGE
	setscene SCENE_VIOLETCITY_TALKED_TO_SAGE
	pause 30
	end

.Text:
	text "Hmm<...> we've heard"
	line "there's unusual"
	para "characters roaming"
	line "about here."

	para "More specifically,"
	line "a rather<...> vile"
	para "group I'd rather"
	line "not speak of."

	para "You don't seem like"
	line "you are them, but"
	para "to know for"
	line "certain what lies"
	cont "in your heart,"

	para "I insist that you"
	line "head over to"
	cont "SPROUT TOWER."

	para "Climb the tower,"
	line "battle all who"
	para "challenge you"
	line "there, and"
	para "challenge SAGE LI"
	line "at the top."

	para "He will be able to"
	line "tell what your"
	cont "heart contains."
	done


.MoveTowardsPlayer:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

.MoveAwayFromPlayer:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

VioletCityHerbSage:
	jumptextfaceplayer .Text
.Text:
	text "I serve as the"
	line "guardian SAGE for"
	cont "this building."
	para "But I'll be honest<...>"
	line "I can't quite stand"
	para "the scent of the"
	line "herbs here."
	para "They burn my nose<...>"
	done

VioletCitySchoolSage:
	jumptextfaceplayer .Text
.Text:
	text "I am the SAGE that"
	line "oversees this"
	cont "school."
	para "I've been here for"
	line "so many years, and"
	para "even during these"
	line "later years, I end"
	para "up learning new"
	line "things every once"
	cont "in a while."
	para "One never truly"
	line "stops learning."
	done

VioletCityFishingSage:
	jumptextfaceplayer .Text
.Text:
	text "I am the guardian"
	line "SAGE for the"
	cont "FISHING GUILD."
	para "Water #MON are"
	line "such graceful"
	cont "creatures<...>"
	para "I love seeing"
	line "people so passion-"
	cont "ate about them."
	done

VioletCityMuseumSage:
	jumptextfaceplayer .Text
.Text:
	text "Yes, I am one of"
	line "the four OVERSEER"
	cont "SAGES of VIOLET."
	para "Seeing all of"
	line "these relics found"
	cont "here<...>"
	para "It's actually quite"
	line "saddening, seeing"
	cont "these remains."
	done

VioletCityHeracrossGuy:
	checkitem HONEY_POT
	iftrue .has_pot
	jumptextfaceplayer .Txt
.has_pot
	jumptextfaceplayer .Txt2
.Txt:
	text "Did you know that"
	line "HERACROSS loves"
	cont "HONEY on trees?"
	para "Why not get some"
	line "from the HONEY"
	cont "GRANDMA?"
	done
.Txt2:
	text "Hey! That's a HONEY"
	line "POT!"
	para "To catch a #MON"
	line "from a tree that"
	para "you slathered with"
	line "SWEET HONEY, you"
	para "need to HEADBUTT"
	line "it."
	para "I heard you can"
	line "get HEADBUTT from"
	para "the CHERRYGROVE"
	line "PAGODA."
	done

VioletCityYoungster:
	jumptextfaceplayer .Txt
.Txt:
	text "Whooh! I tried to"
	line "challenge WHITNEY,"
	para "but her MILTANK"
	line "keeps steamrolling"
	cont "my team!"
	para "I'm gonna train"
	line "harder!"
	done

VioletCitySign:
	jumptext .Txt
.Txt:
	text "VIOLET CITY"

	para "The City of"
	line "Nostalgic Scents"
	done

VioletHerbShopSign:
	jumptext .Txt
.Txt:
	text "VIOLET HERB SHOP"
	para "Your One-Stop Shop"
	line "for Rare Spices"
	done

VioletFishingGuildSign:
	jumptext .Txt
.Txt:
	text "VIOLET FISHING"
	line "GUILD"
	done

VioletSchoolSign:
	jumptext .Txt
.Txt:
	text "EARL's #MON"
	line "ACADEMY"
	done

VioletMuseumSign:
	jumptext .Txt
.Txt:
	text "VIOLET MUSEUM"
	done

SproutTowerSign:
	jumptext .Txt
.Txt:
	text "SPROUT TOWER"

	para "Experience the"
	line "Way of #MON"
	done

TrainerFisherManny:
	trainer FISHER, MANNY, EVENT_BEAT_FISHER_MANNY, .Seen, .Beat, 0, .PostScript

.Seen:
	text "Well, if nothing's"
	line "bitin', I might"
	para "as well start"
	line "battlin'!"
	done

.Beat:
	text "Dang! You're good!"
	done

.PostScript:
	endifjustbattled
	jumptextfaceplayer .PostScriptTxt

.PostScriptTxt: ; hero moment
	text "You're gonna go"
	line "places, kid."
	para "I'll root for you"
	line "all the way!"
	done

VioletCityEarlScript:
	applymovement VIOLETCITY_EARL, .Speen
	faceplayer
	opentext
	writetext .Intro
	yesorno
	iftrue .yes_or_lied
; no
	writetext .NoText
	waitbutton
	closetext
; follow here
	playmusic MUSIC_SHOW_ME_AROUND
	follow VIOLETCITY_EARL, PLAYER
	applymovement VIOLETCITY_EARL, .MoveTowardsAcademy
	stopfollow
	turnobject VIOLETCITY_EARL, DOWN
	opentext
	writetext .AtAcademyText
	waitbutton
	closetext
	special RestartMapMusic
	setevent EVENT_EARL_OUTSIDE_ACADEMY
	applymovement VIOLETCITY_EARL, .MoveInsideAcademy
	playsound SFX_ENTER_DOOR
	disappear VIOLETCITY_EARL
	waitsfx
	end

.yes_or_lied
	writetext .YesOrLiedText
	waitbutton
	closetext
	end

.MoveTowardsAcademy:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

.MoveInsideAcademy:
	step UP
	step_end

.AtAcademyText:
	text "Teach here, I do!"
	para "Study here, you"
	line "shall!"
	para "Conquer GYM with"
	line "knowledge, you"
	cont "will!"
	done

.YesOrLiedText:
	text "Ooh lala! Impres-"
	line "sive strength, you"
	cont "have!"
	done

.NoText:
	text "Lost, you have?"
	para "Then follow, you"
	line "must!"
	done

.Intro:
	text "Bonjour! EARL, I"
	line "am!"
	para "TRAINER, are you?"
	para "Defeat VIOLET GYM"
	line "LEADER, have you?"
	done

.Speen:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

VioletCityLass:
	jumptextfaceplayer .Txt

.Txt:
	text "Are you having a"
	line "hard time getting"
	cont "to SPROUT TOWER?"
	para "I heard that a"
	line "RATTATA might help"
	cont "with that."
	para "You can teach one"
	line "how to UPROOT!"
	done

VioletGymSign:
	jumptext .Text
.Text:
	text "VIOLET CITY"
	line "#MON GYM"
	cont "LEADER: WHITNEY"

	para "The Incredibly"
	line "Pretty Girl!"
	done

VioletCity_MapEvents:
	db 0, 0 ; filler

	db 13 ; warp events
	warp_event 21, 31, VIOLET_MART, 2
	warp_event 34, 35, VIOLET_GYM, 1
	warp_event 37, 26, ROUTE_31_VIOLET_GATE, 1
	warp_event 37, 27, ROUTE_31_VIOLET_GATE, 2
	warp_event  3, 25, SPROUT_TOWER_1F, 1
	warp_event 17, 31, VIOLET_POKECENTER_1F, 1
	warp_event  7,  1, ZEN_GARDEN_GATE, 3
	warp_event 19,  3, VIOLET_HERB_SHOP, 1
	warp_event  4,  8, ROUTE_36_GATE, 1
	warp_event  4,  9, ROUTE_36_GATE, 2
	warp_event 19, 15, EARLS_POKEMON_ACADEMY, 1
	warp_event 31, 15, VIOLET_MUSEUM, 1
	warp_event 33,  3, VIOLET_FISHING_GUILD, 2

	db 2 ; coord events
	coord_event 36, 26, SCENE_VIOLETCITY_NOTHING, VioletCity_SageStopsYou.North
	coord_event 36, 27, SCENE_VIOLETCITY_NOTHING, VioletCity_SageStopsYou.South

	db 7 ; bg events
	bg_event 27, 29, BGEVENT_READ, VioletCitySign
	bg_event 19,  5, BGEVENT_READ, VioletHerbShopSign
	bg_event 32,  4, BGEVENT_READ, VioletFishingGuildSign
	bg_event 18, 16, BGEVENT_READ, VioletSchoolSign
	bg_event 30, 16, BGEVENT_READ, VioletMuseumSign
	bg_event  7, 33, BGEVENT_READ, SproutTowerSign
	bg_event 31, 35, BGEVENT_READ, VioletGymSign

	db 11 ; object events
	object_event 34, 36, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletGymSageBlock, EVENT_BEAT_SAGE_LI
	object_event  8, 22, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerOfficerSamson, -1
	object_event 17,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityHerbSage, -1
	object_event 20, 16, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCitySchoolSage, -1
	object_event 33,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityFishingSage, -1
	object_event 30, 17, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityMuseumSage, -1
	object_event 25, 31, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityHeracrossGuy, -1
	object_event 15, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityYoungster, -1
	object_event 30,  6,  SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherManny, -1
	object_event 13, 23,  SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityEarlScript, EVENT_EARL_OUTSIDE_ACADEMY
	object_event 12, 34, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletCityLass, -1
