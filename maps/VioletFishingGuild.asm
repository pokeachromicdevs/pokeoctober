VioletFishingGuild_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
VioletFishingGuild_Fisher1Script:
	faceplayer
	opentext
	checkevent EVENT_RECEIVED_OREFRY_FROM_FISHER_IN_GUILD
	iftrue .thanks
	writetext .Text
	yesorno
	iffalse .nope
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .nope ; can't hold anymore mons
	writetext .GotOrefry
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OREFRY, 8
	setevent EVENT_RECEIVED_OREFRY_FROM_FISHER_IN_GUILD

.thanks
	writetext .TextYes
	waitbutton
	closetext
	end

.nope
	writetext .TextNo
	waitbutton
	closetext
	end

.GotOrefry:
	text "<PLAYER>"
	line "received OREFRY!"
	done

.Text:
	text "I caught a fish"
	line "earlier today."
	para "But, looking at it"
	line "in this small bag"
	para "here makes me"
	line "realize how ugly"
	cont "it is."
	para "What a revolting"
	line "creature. It's not"
	cont "even rare!"
	para "Please, take this"
	line "filthy fish off"
	cont "my hands!"
	done

.TextYes:
	text "Thank you! I never"
	line "have to think"
	para "about that rancid"
	line "fish ever again!"
	done

.TextNo:
	text "No! Please I beg"
	line "you! My eyes can't"
	para "tolerate this"
	line "sight much longer!"
	done

VioletFishingGuild_SailorScript:
	jumptextfaceplayer .Text
.Text:
	text "Even us sailors"
	line "enjoy fishing"
	para "every once in a"
	line "blue moon!"
	para "I drop by this"
	line "GUILD once every"
	para "month just to fish"
	line "for a bit!"
	done

VioletFishingGuild_Fisher2Script:
	jumptextfaceplayer .Text
.Text:
	text "Someone sold to me"
	line "a MAGIKARP for a"
	para "ridiculous price"
	line "a few years back."
	para "But over time, I"
	line "trained that"
	para "MAGIKARP, and it"
	line "eventually became"
	cont "a GYARADOS!"
	para "Sure, the price"
	line "was insanely high,"
	para "but it was worth"
	line "it in the end."
	para "I do wonder what"
	line "happened to that"
	para "MAGIKARP salesman"
	line "though<...>"
	done

VioletFishingGuild_Fisher3Script:
	jumptextfaceplayer .Text
.Text:
	text "I used to fish in"
	line "a small pond in"
	para "CELADON CITY, but"
	line "over the past few"
	para "years, a bunch of"
	line "punks kept"
	para "polluting the"
	line "place with garbage"
	para "and now not even"
	line "MAGIKARP can live"
	para "in that pond any-"
	line "more!"
	para "Thankfully, the"
	line "people here in"
	para "KANSAI actually"
	line "fight back against"
	para "pollution, espe-"
	line "cially my new pals"
	cont "here at the GUILD."
	done

VioletFishingGuild_TravellingFisherScript: ; see also AlderTownFisherScript
	jumptextfaceplayer .Text
.Text:
	text "When I go fishing,"
	line "I usually go to"
	cont "ALDER TOWN."
	para "There's not much"
	line "going on there,"
	para "so it's way more"
	line "relaxing than if I"
	para "went fishing any-"
	line "where else."
	done

VioletFishingGuildJournal:
	opentext
	writetext .IntroTxt
	buttonsound
	writetext .Entry1Txt
	buttonsound
	writetext .KeepReadingTxt
	yesorno
	iffalse .done_reading
	writetext .Entry2Txt
	buttonsound
	writetext .KeepReadingTxt
	yesorno
	iffalse .done_reading
	writetext .Entry3Txt
	buttonsound
	writetext .KeepReadingTxt
	yesorno
	iffalse .done_reading
	writetext .Entry4Txt
	buttonsound
.done_reading
	closetext
	end

.IntroTxt:
	text "It's a fisherman's"
	line "journal!"
	para "<...> <...> <...>"
	done

.Entry1Txt:
	text "Entry 1"
	para "MOLAMBINO and"
	line "ANGORE were once"
	para "thought to be re-"
	line "lated, but a DNA"
	para "test proved this"
	line "theory to be in-"
	cont "accurate."
	done

.Entry2Txt:
	text "Entry 2"
	para "It has been dis-"
	line "covered that some"
	para "very special"
	line "MAGIKARP can learn"
	para "moves by breeding,"
	line "such as WATER GUN"
	cont "and MINIMIZE."
	done

.Entry3Txt:
	text "Entry 3"
	para "The #MON known"
	line "as SAKURAQUA was"
	para "first discovered"
	line "in Kyoto, Japan."
	para "They can be seen"
	line "or mentioned on"
	para "many Japanese ar-"
	line "tifacts."
	para "Any cherry blossom"
	line "nearby it, will"
	para "bloom to be even"
	line "healthier and"
	para "beautiful than"
	line "usual."
	para "These #MON were"
	line "brought to the"
	para "United States in"
	line "1912."
	done

.Entry4Txt:
	text "Entry 4"
	para "The mythical #-"
	line "MON known as"
	para "DRATINI, once"
	line "thought to be a"
	para "rumor, was disco-"
	line "vered in 1995 when"
	para "a fisherman hooked"
	line "one up."
	para "The most famous"
	line "user of this #-"
	cont "MON's evolutionary"
	para "relatives is LANCE"
	line "of the INDIGO"
	cont "ELITE FOUR."
	done

.KeepReadingTxt:
	text "Keep reading?"
	done

VioletFishingGuild_RodGuy:
	faceplayer
	opentext
	checkevent EVENT_RECEIVED_OLD_ROD_FROM_FISHER_IN_GUILD
	iftrue .got_rod

	writetext .Txt1
	yesorno
	iffalse .said_no

	writetext .Txt2
	buttonsound
	verbosegiveitem OLD_ROD
	iffalse .full

	setevent EVENT_RECEIVED_OLD_ROD_FROM_FISHER_IN_GUILD

.got_rod
	writetext .Txt3
	waitbutton
.full
	closetext
	end

.said_no
	writetext .Txt4
	waitbutton
	closetext
	end

.Txt1:
	text "Hey, kid! Me and"
	line "my pals often chat"
	para "here in the GUILD"
	line "after we're done"
	cont "fishing!"
	para "Do you like to"
	line "fish, too?"
	done
.Txt2:
	text "Ah, you're"
	line "cultured."
	para "Here, take this"
	line "and go fish!"
	done
.Txt3:
	text "The OLD ROD is the"
	line "weakest of the"
	cont "three RODS."
	para "Some of my buddies"
	line "have the other"
	para "two, but they live"
	line "elsewhere in"
	cont "KANSAI."
	para "Good luck finding"
	line "them!"
	done
.Txt4:
	text "Are you sure?"
	para "Feel free to come"
	line "back to me when"
	para "you change your"
	line "mind!"
	done

VioletFishingGuild_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6,  7, VIOLET_CITY, 13
	warp_event  7,  7, VIOLET_CITY, 13

	db 0 ; coord events

	db 1 ; bg events
	bg_event 11,  6, BGEVENT_READ, VioletFishingGuildJournal

	db 6 ; object events
	object_event  7,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_Fisher1Script, -1
	object_event  2,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_SailorScript, -1
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_Fisher2Script, -1
	object_event  7,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_Fisher3Script, -1
	object_event 11,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, 16, 7, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_TravellingFisherScript, -1
	object_event 10,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_RodGuy, -1
