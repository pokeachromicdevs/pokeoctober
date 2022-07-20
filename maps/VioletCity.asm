	object_const_def ; object_event constants
	const VIOLETCITY_SAGE
	const VIOLETCIITY_OFFICER


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
	para "I love seeing"
	line "people passionate"
	para "about water"
	line "#MON<...> they are"
	para "such graceful"
	line "creatures."
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
	jumptextfaceplayer .Txt
.Txt:
	text "Did you know that"
	line "HERACROSS loves"
	cont "HONEY on trees?"
	para "Why not get some"
	line "from the HONEY"
	cont "GRANDMA?"
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
	text "FISHING GUILD"
	done

VioletSchoolSign:
	jumptext .Txt
.Txt:
	text "TRAINER SCHOOL"
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
	warp_event 31, 15, ROUTE_36_GATE, 2
	warp_event 33,  3, ROUTE_36_GATE, 2

	db 2 ; coord events
	coord_event 36, 26, SCENE_VIOLETCITY_NOTHING, VioletCity_SageStopsYou.North
	coord_event 36, 27, SCENE_VIOLETCITY_NOTHING, VioletCity_SageStopsYou.South

	db 6 ; bg events
	bg_event 27, 29, BGEVENT_READ, VioletCitySign
	bg_event 19,  5, BGEVENT_READ, VioletHerbShopSign
	bg_event 32,  4, BGEVENT_READ, VioletFishingGuildSign
	bg_event 18, 16, BGEVENT_READ, VioletSchoolSign
	bg_event 30, 16, BGEVENT_READ, VioletMuseumSign
	bg_event  7, 33, BGEVENT_READ, SproutTowerSign

	db 9 ; object events
	object_event 34, 36, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletGymSageBlock, EVENT_BEAT_SAGE_LI
	object_event  8, 22, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerOfficerSamson, -1
	object_event 17,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityHerbSage, -1
	object_event 20, 16, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCitySchoolSage, -1
	object_event 33,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityFishingSage, -1
	object_event 30, 17, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityMuseumSage, -1
	object_event 25, 31, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityHeracrossGuy, -1
	object_event 15, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityYoungster, -1
	object_event 30,  6,  SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherManny, -1
