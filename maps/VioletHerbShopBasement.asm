VioletHerbShopBasement_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

; scripts here
HoneyGrannyScript:
	faceplayer

	opentext
	writetext .IntroText

	waitbutton
	checkitem HONEY_POT
	iffalse .no_pot

	checkflag ENGINE_SWEET_HONEY
	iftrue .just_given

	special CheckSweetHoneyTimer
	ifequal 1, .waited_a_day
	ifequal 2, .just_used

	writetext .UsedHoneyText

.give_honey
	setflag ENGINE_SWEET_HONEY
	waitbutton

	writetext .ReceivedSweetHoneyText
	playsound SFX_ITEM
	pause 60
	waitbutton
	
	writetext .TryUsingText
	waitbutton

	closetext
	end

.just_used
	writetext .DidYouPutText
	waitbutton
	closetext
	end

.no_pot
	writetext .NoPotText
	waitbutton
	verbosegiveitem HONEY_POT
	writetext .AfterPotGivenText
	sjump .give_honey

.just_given
	writetext .TryUsingText
	waitbutton
	closetext
	end

.waited_a_day
	writetext .DidYouPutText2
	waitbutton
	closetext
	end

.IntroText:
	text "Hello, hello!"
	line "I'm the HONEY"
	cont "GRANDMA!"
	done

.UsedHoneyText:
	text "I see you have a"
	line "HONEY POT with"
	para "you. You can use"
	line "it to collect"
	cont "SWEET HONEY."
	para "I know! I'll share"
	line "some with you."
	done

.ReceivedSweetHoneyText:
	text "<PLAYER> received"
	line "SWEET HONEY."
	done

.DidYouPutText:
	text "Did you put SWEET"
	line "HONEY on a tree?"

	para "It takes about a"
	line "day for #MON to"
	cont "be drawn to it."
	done

.NoPotText:
	text "You don't have a"
	line "HONEY POT?"
	para "Not to worry!"
	line "I've got just the"
	cont "thing for you."
	done

.AfterPotGivenText:
	text "A HONEY POT can"
	line "store SWEET HONEY."
	para "You can use it to"
	line "attract rare wild"
	cont "#MON."
	para "In fact, I'll give"
	line "you some to try"
	cont "it out!"
	done

.TryUsingText:
	text "Try spreading some"
	line "HONEY on a tree!"
	done

.DidYouPutText2:
	text "Did you put SWEET"
	line "HONEY on a tree?"

	para "What happened to"
	line "it?"
	done

VioletHerbShopBasement_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  5,  7, VIOLET_HERB_SHOP, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  1,  2, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HoneyGrannyScript, -1
