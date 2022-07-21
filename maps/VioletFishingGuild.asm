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
	para "JOHTO actually"
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

VioletFishingGuild_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  6,  7, VIOLET_CITY, 13
	warp_event  7,  7, VIOLET_CITY, 13

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  7,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_Fisher1Script, -1
	object_event  2,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_SailorScript, -1
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_Fisher2Script, -1
	object_event  7,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_Fisher3Script, -1
	object_event 11,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, 16, 7, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletFishingGuild_TravellingFisherScript, -1
