INCLUDE "constants.asm"

SECTION "__FruitBearingTreeText", ROMX
_FruitBearingTreeText::
	text "It's a fruit-"
	line "bearing tree."
	done

SECTION "__HeyItsFruitText", ROMX
_HeyItsFruitText::
	text "Hey! It's"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

SECTION "__ObtainedFruitText", ROMX
_ObtainedFruitText::
	text "Obtained"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

SECTION "__FruitPackIsFullText", ROMX
_FruitPackIsFullText::
	text "But the PACK is"
	line "full…"
	done

SECTION "__NothingHereText", ROMX
_NothingHereText::
	text "There's nothing"
	line "here…"
	done

SECTION "__WhichApricornText", ROMX
_WhichApricornText::
	text "Which APRICORN"
	line "should I use?"
	done

SECTION "__HowManyShouldIMakeText", ROMX
_HowManyShouldIMakeText::
	text "How many should I"
	line "make?"
	done

SECTION "__RecoveredSomeHPText", ROMX
_RecoveredSomeHPText::
	text_ram wStringBuffer1
	text_start
	line "recovered @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "HP!"
	done

SECTION "__CuredOfPoisonText", ROMX
_CuredOfPoisonText::
	text_ram wStringBuffer1
	text "'s"
	line "cured of poison."
	done

SECTION "__RidOfParalysisText", ROMX
_RidOfParalysisText::
	text_ram wStringBuffer1
	text "'s"
	line "rid of paralysis."
	done

SECTION "__BurnWasHealedText", ROMX
_BurnWasHealedText::
	text_ram wStringBuffer1
	text "'s"
	line "burn was healed."
	done

SECTION "__WasDefrostedText", ROMX
_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "was defrosted."
	done

SECTION "__WokeUpText", ROMX
_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "woke up."
	done

SECTION "__HealthReturnedText", ROMX
_HealthReturnedText::
	text_ram wStringBuffer1
	text "'s"
	line "health returned."
	done

SECTION "__RevitalizedText", ROMX
_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "is revitalized."
	done

SECTION "__GrewToLevelText", ROMX
_GrewToLevelText::
	text_ram wStringBuffer1
	text " grew to"
	line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79 ; plays SFX_DEX_FANFARE_50_79, identical to SFX_LEVEL_UP
	text_waitbutton
	text_end

	text_end ; unused

SECTION "__CameToItsSensesText", ROMX
_CameToItsSensesText::
	text_ram wStringBuffer1
	text " came"
	line "to its senses."
	done

SECTION "__EnterNewPasscodeText", ROMX
_EnterNewPasscodeText::
	text "Please enter any"
	line "four-digit number."
	done

SECTION "__ConfirmPasscodeText", ROMX
_ConfirmPasscodeText::
	text "Enter the same"
	line "number to confirm."
	done

SECTION "__PasscodesNotSameText", ROMX
_PasscodesNotSameText::
	text "That's not the"
	line "same number."
	done

SECTION "__PasscodeSetText", ROMX
_PasscodeSetText::
	text "Your PASSCODE has"
	line "been set."

	para "Enter this number"
	line "next time to open"
	cont "the CARD FOLDER."

	para ""
	done

SECTION "__FourZerosInvalidText", ROMX
_FourZerosInvalidText::
	text "0000 is invalid!"

	para ""
	done

SECTION "__EnterPasscodeText", ROMX
_EnterPasscodeText::
	text "Enter the CARD"
	next "FOLDER PASSCODE."
	done

SECTION "__IncorrectPasscodeText", ROMX
_IncorrectPasscodeText::
	text "Incorrect"
	line "PASSCODE!"

	para ""
	done

SECTION "__CardFolderOpenText", ROMX
_CardFolderOpenText::
	text "CARD FOLDER open.@"
	text_end

SECTION "__OakTimeText1", ROMX
_OakTimeText1::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "Zzz… Hm? Wha…?"
	line "You woke me up!"

	para "Will you check the"
	line "clock for me?"
	prompt

SECTION "__OakTimeText2", ROMX
_OakTimeText2::
	text "What time is it?"
	done

SECTION "__OakTimeText3", ROMX
_OakTimeText3::
	text "Is it"
	done 

SECTION "__OakTimeText4", ROMX
_OakTimeText4::
	text "?"
	done

SECTION "__OakTimeText5", ROMX
_OakTimeText5::
	text "How many minutes?"
	done

SECTION "__OakTimeText6", ROMX
_OakTimeText6::
	text "What?@"
	text_end

SECTION "__OakTimeText7", ROMX
_OakTimeText7::
	text "?"
	done

SECTION "__OakTimeText8", ROMX
_OakTimeText8::
	text "!"
	line "I overslept!"
	done

SECTION "__OakTimeText11", ROMX
_OakTimeText11::
	text ""
	line "is that right?"
	done

SECTION "__OakTimeText12", ROMX
_OakTimeText12::
	text "!"
	line "No wonder it's so"
	cont "dark!"
	done

SECTION "__OakTimeText13", ROMX
_OakTimeText13::
	text "What day is it?"
	done

SECTION "__OakTimeText14", ROMX
_OakTimeText14::
	text ", is it?"
	done

SECTION "_UnknownText_0x1bc384", ROMX
UnknownText_0x1bc384::
	text "There is nothing"
	line "connected."
	done

SECTION "_UnknownText_0x1bc3a1", ROMX
UnknownText_0x1bc3a1::
	text "Check cell phone"
	line "adapter."
	done

SECTION "_UnknownText_0x1bc3bc", ROMX
UnknownText_0x1bc3bc::
	text "Check CDMA"
	line "adapter."
	done

SECTION "_UnknownText_0x1bc3d1", ROMX
UnknownText_0x1bc3d1::
	text "Check DOCOMO PHS"
	line "adapter."
	done

SECTION "_UnknownText_0x1bc3ec", ROMX
UnknownText_0x1bc3ec::
	text "Check DDI PHS"
	line "adapter."
	done

SECTION "_UnknownText_0x1bc404", ROMX
UnknownText_0x1bc404::
	text "Check unlimited"
	line "battle mobile"
	cont "adapter."
	done

SECTION "_UnknownText_0x1bc42c", ROMX
UnknownText_0x1bc42c::
	text "The password is:"
	line ""
	done

SECTION "_UnknownText_0x1bc43f", ROMX
UnknownText_0x1bc43f::
	text "Is this OK?"
	done

SECTION "_UnknownText_0x1bc44c", ROMX
UnknownText_0x1bc44c::
	text "Enter the"
	line "ID no."
	done

SECTION "_UnknownText_0x1bc45e", ROMX
UnknownText_0x1bc45e::
	text "Enter the"
	line "amount."
	done

SECTION "__NothingToChooseText", ROMX
_NothingToChooseText::
	text "There's nothing to"
	line "choose."
	prompt

SECTION "__WhichSidePutOnText", ROMX
_WhichSidePutOnText::
	text "Which side do you"
	line "want to put it on?"
	done

SECTION "__WhichSidePutAwayText", ROMX
_WhichSidePutAwayText::
	text "Which side do you"
	line "want to put away?"
	done

SECTION "__PutAwayTheDecoText", ROMX
_PutAwayTheDecoText::
	text "Put away the"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "__NothingToPutAwayText", ROMX
_NothingToPutAwayText::
	text "There's nothing to"
	line "put away."
	prompt

SECTION "__SetUpTheDecoText", ROMX
_SetUpTheDecoText::
	text "Set up the"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "__PutAwayAndSetUpText", ROMX
_PutAwayAndSetUpText::
	text "Put away the"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "and set up the"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

SECTION "__AlreadySetUpText", ROMX
_AlreadySetUpText::
	text "That's already set"
	line "up."
	prompt

SECTION "__LookTownMapText", ROMX
_LookTownMapText::
	text "It's the TOWN MAP."
	done

SECTION "__LookPikachuPosterText", ROMX
_LookPikachuPosterText::
	text "It's a poster of a"
	line "cute PIKACHU."
	done

SECTION "__LookClefairyPosterText", ROMX
_LookClefairyPosterText::
	text "It's a poster of a"
	line "cute CLEFAIRY."
	done

SECTION "__LookJigglypuffPosterText", ROMX
_LookJigglypuffPosterText::
	text "It's a poster of a"
	line "cute JIGGLYPUFF."
	done

SECTION "__LookAdorableDecoText", ROMX
_LookAdorableDecoText::
	text "It's an adorable"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

SECTION "__LookGiantDecoText", ROMX
_LookGiantDecoText::
	text "A giant doll! It's"
	line "fluffy and cuddly."
	done

SECTION "__MomShoppingText1", ROMX
_MomShoppingText1::
	text "Hi, <PLAYER>!"
	line "How are you?"
	prompt

SECTION "__MomShoppingText2", ROMX
_MomShoppingText2::
	text "I found a useful"
	line "item shopping, so"
	prompt

SECTION "__MomShoppingText3", ROMX
_MomShoppingText3::
	text "I bought it with"
	line "your money. Sorry!"
	prompt

SECTION "__MomShoppingText4", ROMX
_MomShoppingText4::
	text "It's in your PC."
	line "You'll like it!"
	done

SECTION "__MomShoppingText5", ROMX
_MomShoppingText5::
	text "While shopping"
	line "today, I saw this"
	cont "adorable doll, so"
	prompt

SECTION "__MomShoppingText6", ROMX
_MomShoppingText6::
	text "It's in your room."
	line "You'll love it!"
	done

SECTION "__TradingText1", ROMX
_TradingText1::
	text_ram wPlayerTrademonSpeciesName
	text " was"
	line "sent to @"
	text_ram wOTTrademonSenderName
	text "."
	done

SECTION "__TradingText2", ROMX
_TradingText2::
	text_start
	done

SECTION "__TradingText3", ROMX
_TradingText3::
	text_ram wOTTrademonSenderName
	text " bids"
	line "farewell to"
	done

SECTION "__TradingText4", ROMX
_TradingText4::
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "__TradingText5", ROMX
_TradingText5::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "__TradingText6", ROMX
_TradingText6::
	text "For @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

SECTION "__TradingText7", ROMX
_TradingText7::
	text_ram wOTTrademonSenderName
	text " sends"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "__TradingText8", ROMX
_TradingText8::
	text_ram wOTTrademonSenderName
	text " will"
	line "trade @"
	text_ram wOTTrademonSpeciesName
	text_end

	text_end ; unused

SECTION "__TradingText9", ROMX
_TradingText9::
	text "for @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

SECTION "__TradingText10", ROMX
_TradingText10::
	text_ram wPlayerTrademonSenderName
	text " will"
	line "trade @"
	text_ram wPlayerTrademonSpeciesName
	text_end

	text_end ; unused

SECTION "__TradingText11", ROMX
_TradingText11::
	text "for @"
	text_ram wOTTrademonSenderName
	text "'s"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "__TradingText12", ROMX
_TradingText12::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " trade…"
	done

SECTION "__TradingText13", ROMX
_TradingText13::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "__TradingText14", ROMX
_TradingText14::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " trade…"
	done

SECTION "__TradingText15", ROMX
_TradingText15::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "__TradingText16", ROMX
_TradingText16::
	text_ram wOTTrademonSpeciesName
	text " came"
	line "back!"
	done

; Oak's Pokémon Talk

SECTION "__OPT_IntroText1", ROMX
_OPT_IntroText1::
	text_start
	line "MARY: PROF.OAK'S"
	done

SECTION "__OPT_IntroText2", ROMX
_OPT_IntroText2::
	text_start
	line "#MON TALK!"
	done

SECTION "__OPT_IntroText3", ROMX
_OPT_IntroText3::
	text_start
	line "With me, MARY!"
	done

SECTION "__OPT_OakText1", ROMX
_OPT_OakText1::
	text_start
	line "OAK: @"
	text_ram wMonOrItemNameBuffer
	text_end

	text_end ; unused

SECTION "__OPT_OakText2", ROMX
_OPT_OakText2::
	text_start
	line "may be seen around"
	done

SECTION "__OPT_OakText3", ROMX
_OPT_OakText3::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "."
	done

SECTION "__OPT_MaryText1", ROMX
_OPT_MaryText1::
	text_start
	line "MARY: @"
	text_ram wStringBuffer1
	text "'s"
	done

SECTION "_OPT_SweetAdorably", ROMX
OPT_SweetAdorably::
	text_start
	line "sweet and adorably"
	done

SECTION "_OPT_WigglySlickly", ROMX
OPT_WigglySlickly::
	text_start
	line "wiggly and slickly"
	done

SECTION "_OPT_AptlyNamed", ROMX
OPT_AptlyNamed::
	text_start
	line "aptly named and"
	done

SECTION "_OPT_UndeniablyKindOf", ROMX
OPT_UndeniablyKindOf::
	text_start
	line "undeniably kind of"
	done

SECTION "_OPT_Unbearably", ROMX
OPT_Unbearably::
	text_start
	line "so, so unbearably"
	done

SECTION "_OPT_WowImpressively", ROMX
OPT_WowImpressively::
	text_start
	line "wow, impressively"
	done

SECTION "_OPT_AlmostPoisonously", ROMX
OPT_AlmostPoisonously::
	text_start
	line "almost poisonously"
	done

SECTION "_OPT_Sensually", ROMX
OPT_Sensually::
	text_start
	line "ooh, so sensually"
	done

SECTION "_OPT_Mischievously", ROMX
OPT_Mischievously::
	text_start
	line "so mischievously"
	done

SECTION "_OPT_Topically", ROMX
OPT_Topically::
	text_start
	line "so very topically"
	done

SECTION "_OPT_Addictively", ROMX
OPT_Addictively::
	text_start
	line "sure addictively"
	done

SECTION "_OPT_LooksInWater", ROMX
OPT_LooksInWater::
	text_start
	line "looks in water is"
	done

SECTION "_OPT_EvolutionMustBe", ROMX
OPT_EvolutionMustBe::
	text_start
	line "evolution must be"
	done

SECTION "_OPT_Provocatively", ROMX
OPT_Provocatively::
	text_start
	line "provocatively"
	done

SECTION "_OPT_FlippedOut", ROMX
OPT_FlippedOut::
	text_start
	line "so flipped out and"
	done

SECTION "_OPT_HeartMeltingly", ROMX
OPT_HeartMeltingly::
	text_start
	line "heart-meltingly"
	done

SECTION "_OPT_Cute", ROMX
OPT_Cute::
	text_start
	line "cute."
	done

SECTION "_OPT_Weird", ROMX
OPT_Weird::
	text_start
	line "weird."
	done

SECTION "_OPT_Pleasant", ROMX
OPT_Pleasant::
	text_start
	line "pleasant."
	done

SECTION "_OPT_BoldSortOf", ROMX
OPT_BoldSortOf::
	text_start
	line "bold, sort of."
	done

SECTION "_OPT_Frightening", ROMX
OPT_Frightening::
	text_start
	line "frightening."
	done

SECTION "_OPT_SuaveDebonair", ROMX
OPT_SuaveDebonair::
	text_start
	line "suave & debonair!"
	done

SECTION "_OPT_Powerful", ROMX
OPT_Powerful::
	text_start
	line "powerful."
	done

SECTION "_OPT_Exciting", ROMX
OPT_Exciting::
	text_start
	line "exciting."
	done

SECTION "_OPT_Groovy", ROMX
OPT_Groovy::
	text_start
	line "groovy!"
	done

SECTION "_OPT_Inspiring", ROMX
OPT_Inspiring::
	text_start
	line "inspiring."
	done

SECTION "_OPT_Friendly", ROMX
OPT_Friendly::
	text_start
	line "friendly."
	done

SECTION "_OPT_HotHotHot", ROMX
OPT_HotHotHot::
	text_start
	line "hot, hot, hot!"
	done

SECTION "_OPT_Stimulating", ROMX
OPT_Stimulating::
	text_start
	line "stimulating."
	done

SECTION "_OPT_Guarded", ROMX
OPT_Guarded::
	text_start
	line "guarded."
	done

SECTION "_OPT_Lovely", ROMX
OPT_Lovely::
	text_start
	line "lovely."
	done

SECTION "_OPT_Speedy", ROMX
OPT_Speedy::
	text_start
	line "speedy."
	done

SECTION "__OPT_PokemonChannelText", ROMX
_OPT_PokemonChannelText::
	text "#MON"
	done

SECTION "__PokedexShowText", ROMX
_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

; Pokémon Music Channel / Pokémusic

SECTION "__BenIntroText1", ROMX
_BenIntroText1::
	text_start
	line "BEN: #MON MUSIC"
	done

SECTION "__BenIntroText2", ROMX
_BenIntroText2::
	text_start
	line "CHANNEL!"
	done

SECTION "__BenIntroText3", ROMX
_BenIntroText3::
	text_start
	line "It's me, DJ BEN!"
	done

SECTION "__FernIntroText1", ROMX
_FernIntroText1::
	text_start
	line "FERN: #MUSIC!"
	done

SECTION "__FernIntroText2", ROMX
_FernIntroText2::
	text_start
	line "With DJ FERN!"
	done

SECTION "__BenFernText1", ROMX
_BenFernText1::
	text_start
	line "Today's @"
	text_today
	text ","
	done

SECTION "__BenFernText2A", ROMX
_BenFernText2A::
	text_start
	line "so let us jam to"
	done

SECTION "__BenFernText2B", ROMX
_BenFernText2B::
	text_start
	line "so chill out to"
	done

SECTION "__BenFernText3A", ROMX
_BenFernText3A::
	text_start
	line "#MON March!"
	done

SECTION "__BenFernText3B", ROMX
_BenFernText3B::
	text_start
	line "#MON Lullaby!"
	done

; Lucky Channel

SECTION "__LC_Text1", ROMX
_LC_Text1::
	text_start
	line "REED: Yeehaw! How"
	done

SECTION "__LC_Text2", ROMX
_LC_Text2::
	text_start
	line "y'all doin' now?"
	done

SECTION "__LC_Text3", ROMX
_LC_Text3::
	text_start
	line "Whether you're up"
	done

SECTION "__LC_Text4", ROMX
_LC_Text4::
	text_start
	line "or way down low,"
	done

SECTION "__LC_Text5", ROMX
_LC_Text5::
	text_start
	line "don't you miss the"
	done

SECTION "__LC_Text6", ROMX
_LC_Text6::
	text_start
	line "LUCKY NUMBER SHOW!"
	done

SECTION "__LC_Text7", ROMX
_LC_Text7::
	text_start
	line "This week's Lucky"
	done

SECTION "__LC_Text8", ROMX
_LC_Text8::
	text_start
	line "Number is @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

SECTION "__LC_Text9", ROMX
_LC_Text9::
	text_start
	line "I'll repeat that!"
	done

SECTION "__LC_Text10", ROMX
_LC_Text10::
	text_start
	line "Match it and go to"
	done

SECTION "__LC_Text11", ROMX
_LC_Text11::
	text_start
	line "the RADIO TOWER!"
	done

SECTION "__LC_DragText1", ROMX
_LC_DragText1::
	text_start
	line "…Repeating myself"
	done

SECTION "__LC_DragText2", ROMX
_LC_DragText2::
	text_start
	line "gets to be a drag…"
	done

; Places and People

SECTION "__PnP_Text1", ROMX
_PnP_Text1::
	text_start
	line "PLACES AND PEOPLE!"
	done

SECTION "__PnP_Text2", ROMX
_PnP_Text2::
	text_start
	line "Brought to you by"
	done

SECTION "__PnP_Text3", ROMX
_PnP_Text3::
	text_start
	line "me, DJ LILY!"
	done

SECTION "__PnP_Text4", ROMX
_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

SECTION "__PnP_cute", ROMX
_PnP_cute::
	text_start
	line "is cute."
	done

SECTION "__PnP_lazy", ROMX
_PnP_lazy::
	text_start
	line "is sort of lazy."
	done

SECTION "__PnP_happy", ROMX
_PnP_happy::
	text_start
	line "is always happy."
	done

SECTION "__PnP_noisy", ROMX
_PnP_noisy::
	text_start
	line "is quite noisy."
	done

SECTION "__PnP_precocious", ROMX
_PnP_precocious::
	text_start
	line "is precocious."
	done

SECTION "__PnP_bold", ROMX
_PnP_bold::
	text_start
	line "is somewhat bold."
	done

SECTION "__PnP_picky", ROMX
_PnP_picky::
	text_start
	line "is too picky!"
	done

SECTION "__PnP_sortofok", ROMX
_PnP_sortofok::
	text_start
	line "is sort of OK."
	done

SECTION "__PnP_soso", ROMX
_PnP_soso::
	text_start
	line "is just so-so."
	done

SECTION "__PnP_great", ROMX
_PnP_great::
	text_start
	line "is actually great."
	done

SECTION "__PnP_mytype", ROMX
_PnP_mytype::
	text_start
	line "is just my type."
	done

SECTION "__PnP_cool", ROMX
_PnP_cool::
	text_start
	line "is so cool, no?"
	done

SECTION "__PnP_inspiring", ROMX
_PnP_inspiring::
	text_start
	line "is inspiring!"
	done

SECTION "__PnP_weird", ROMX
_PnP_weird::
	text_start
	line "is kind of weird."
	done

SECTION "__PnP_rightforme", ROMX
_PnP_rightforme::
	text_start
	line "is right for me?"
	done

SECTION "__PnP_odd", ROMX
_PnP_odd::
	text_start
	line "is definitely odd!"
	done

SECTION "__PnP_Text5", ROMX
_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

SECTION "__RocketRadioText1", ROMX
_RocketRadioText1::
	text_start
	line "… …Ahem, we are"
	done

SECTION "__RocketRadioText2", ROMX
_RocketRadioText2::
	text_start
	line "TEAM ROCKET!"
	done

SECTION "__RocketRadioText3", ROMX
_RocketRadioText3::
	text_start
	line "After three years"
	done

SECTION "__RocketRadioText4", ROMX
_RocketRadioText4::
	text_start
	line "of preparation, we"
	done

SECTION "__RocketRadioText5", ROMX
_RocketRadioText5::
	text_start
	line "have risen again"
	done

SECTION "__RocketRadioText6", ROMX
_RocketRadioText6::
	text_start
	line "from the ashes!"
	done

SECTION "__RocketRadioText7", ROMX
_RocketRadioText7::
	text_start
	line "GIOVANNI! @"
	text_pause
	text "Can you"
	done

SECTION "__RocketRadioText8", ROMX
_RocketRadioText8::
	text_start
	line "hear?@"
	text_pause
	text " We did it!"
	done

SECTION "__RocketRadioText9", ROMX
_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "Where is our boss?"
	done

SECTION "__RocketRadioText10", ROMX
_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "Is he listening?"
	done

SECTION "__BuenaRadioText1", ROMX
_BuenaRadioText1::
	text_start
	line "BUENA: BUENA here!"
	done

SECTION "__BuenaRadioText2", ROMX
_BuenaRadioText2::
	text_start
	line "Today's password!"
	done

SECTION "__BuenaRadioText3", ROMX
_BuenaRadioText3::
	text_start
	line "Let me think… It's"
	done

SECTION "__BuenaRadioText4", ROMX
_BuenaRadioText4::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

SECTION "__BuenaRadioText5", ROMX
_BuenaRadioText5::
	text_start
	line "Don't forget it!"
	done

SECTION "__BuenaRadioText6", ROMX
_BuenaRadioText6::
	text_start
	line "I'm in GOLDENROD's"
	done

SECTION "__BuenaRadioText7", ROMX
_BuenaRadioText7::
	text_start
	line "RADIO TOWER!"
	done

SECTION "__BuenaRadioMidnightText1", ROMX
_BuenaRadioMidnightText1::
	text_start
	line "BUENA: Oh my…"
	done

SECTION "__BuenaRadioMidnightText2", ROMX
_BuenaRadioMidnightText2::
	text_start
	line "It's midnight! I"
	done

SECTION "__BuenaRadioMidnightText3", ROMX
_BuenaRadioMidnightText3::
	text_start
	line "have to shut down!"
	done

SECTION "__BuenaRadioMidnightText4", ROMX
_BuenaRadioMidnightText4::
	text_start
	line "Thanks for tuning"
	done

SECTION "__BuenaRadioMidnightText5", ROMX
_BuenaRadioMidnightText5::
	text_start
	line "in to the end! But"
	done

SECTION "__BuenaRadioMidnightText6", ROMX
_BuenaRadioMidnightText6::
	text_start
	line "don't stay up too"
	done

SECTION "__BuenaRadioMidnightText7", ROMX
_BuenaRadioMidnightText7::
	text_start
	line "late! Presented to"
	done

SECTION "__BuenaRadioMidnightText8", ROMX
_BuenaRadioMidnightText8::
	text_start
	line "you by DJ BUENA!"
	done

SECTION "__BuenaRadioMidnightText9", ROMX
_BuenaRadioMidnightText9::
	text "I'm outta here!"
	done

SECTION "__BuenaRadioMidnightText10", ROMX
_BuenaRadioMidnightText10::
	text "…"
	done

SECTION "__BuenaOffTheAirText", ROMX
_BuenaOffTheAirText::
	text_start
	line ""
	done

SECTION "_Text_EnemyWithdrew", ROMX
Text_EnemyWithdrew::
	text "<ENEMY>"
	line "withdrew"
	cont "@"
	text_ram wEnemyMonNick
	text "!"
	prompt

SECTION "_Text_EnemyUsedOn", ROMX
Text_EnemyUsedOn::
	text "<ENEMY>"
	line "used @"
	text_ram wMonOrItemNameBuffer
	text_start
	cont "on @"
	text_ram wEnemyMonNick
	text "!"
	prompt

SECTION "_Text_ThatCantBeUsedRightNow", ROMX
Text_ThatCantBeUsedRightNow::
	text "That can't be used"
	line "right now."
	prompt

SECTION "_Text_ThatItemCantBePutInThePack", ROMX
Text_ThatItemCantBePutInThePack::
	text "That item can't be"
	line "put in the PACK."
	done

SECTION "_Text_TheItemWasPutInThePack", ROMX
Text_TheItemWasPutInThePack::
	text "The @"
	text_ram wStringBuffer1
	text_start
	line "was put in the"
	cont "PACK."
	done

SECTION "_Text_RemainingTime", ROMX
Text_RemainingTime::
	text "Remaining Time"
	done

SECTION "_Text_YourMonsHPWasHealed", ROMX
Text_YourMonsHPWasHealed::
	text "Your #MON's HP"
	line "was healed."
	prompt

SECTION "_Text_Warping", ROMX
Text_Warping::
	text "Warping…"
	done

SECTION "_UnknownText_0x1bd05e", ROMX
UnknownText_0x1bd05e::
	text "Which number"
	line "should be changed?"
	done

SECTION "_UnknownText_0x1bd07f", ROMX
UnknownText_0x1bd07f::
	text "Will you play with"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_UnknownText_0x1bd09a", ROMX
UnknownText_0x1bd09a::
	text "You need two #-"
	line "MON for breeding."
	prompt

SECTION "_Text_BreedingIsNotPossible", ROMX
Text_BreedingIsNotPossible::
	text "Breeding is not"
	line "possible."
	prompt

SECTION "_UnknownText_0x1bd0d8", ROMX
UnknownText_0x1bd0d8::
	text "The compatibility"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Should they breed?"
	done

SECTION "_UnknownText_0x1bd109", ROMX
UnknownText_0x1bd109::
	text "There is no EGG."
	line ""
	prompt

SECTION "_UnknownText_0x1bd11c", ROMX
UnknownText_0x1bd11c::
	text "It's going to"
	line "hatch!"
	prompt

SECTION "_UnknownText_0x1bd131", ROMX
UnknownText_0x1bd131::
	text "Test event"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text "?"
	done

SECTION "_UnknownText_0x1bd145", ROMX
UnknownText_0x1bd145::
	text "Start!"
	done

SECTION "_UnknownText_0x1bd14d", ROMX
UnknownText_0x1bd14d::
	text "End!"
	done

SECTION "_UnknownText_0x1bd153", ROMX
UnknownText_0x1bd153::
	text "For a boy!"
	done

SECTION "_UnknownText_0x1bd15f", ROMX
UnknownText_0x1bd15f::
	text "For a girl!"
	done

SECTION "_UnknownText_0x1bd16c", ROMX
UnknownText_0x1bd16c::
	text "This doesn't"
	line "concern a boy!"
	done

SECTION "_UnknownText_0x1bd188", ROMX
UnknownText_0x1bd188::
	text "The BOX is full!"
	done

SECTION "_UnknownText_0x1bd19a", ROMX
UnknownText_0x1bd19a::
	text "A new CARD arrived"
	line "from @"
	text_ram wStringBuffer2
	text "."
	done

SECTION "_UnknownText_0x1bd1ba", ROMX
UnknownText_0x1bd1ba::
	text "Put this CARD in"
	line "the CARD FOLDER?"
	done

SECTION "_UnknownText_0x1bd1dd", ROMX
UnknownText_0x1bd1dd::
	text_ram wStringBuffer2
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wStringBuffer1, 1, 2
	text "."
	prompt

SECTION "_UnknownText_0x1bd201", ROMX
UnknownText_0x1bd201::
	text "Starting link."
	done

SECTION "_UnknownText_0x1bd211", ROMX
UnknownText_0x1bd211::
	text "Link terminated."
	done

SECTION "_UnknownText_0x1bd223", ROMX
UnknownText_0x1bd223::
	text "Closing link."
	done

SECTION "_UnknownText_0x1bd232", ROMX
UnknownText_0x1bd232::
	text "Clear the time"
	line "limit?"
	done

SECTION "_UnknownText_0x1bd249", ROMX
UnknownText_0x1bd249::
	text "The time limit was"
	line "cleared."
	done

SECTION "_UnknownText_0x1bd266", ROMX
UnknownText_0x1bd266::
	text "Pick which packet"
	line "as an error?"
	done

SECTION "_UnknownText_0x1bd286", ROMX
UnknownText_0x1bd286::
	text "Trading @"
	text_ram wStringBuffer2
	text_start
	line "for @"
	text_ram wStringBuffer1
	text "…"
	done

SECTION "_UnknownText_0x1bd2a0", ROMX
UnknownText_0x1bd2a0::
	text "Obtained the"
	line "VOLTORBBADGE!"
	done

SECTION "_UnknownText_0x1bd2bc", ROMX
UnknownText_0x1bd2bc::
	text "Which floor?"
	done

SECTION "_UnknownText_0x1bd2ca", ROMX
UnknownText_0x1bd2ca::
	text "ANNOUNCER: BEEEP!"

	para "Time's up!"
	done

SECTION "_UnknownText_0x1bd2e7", ROMX
UnknownText_0x1bd2e7::
	text "ANNOUNCER: The"
	line "Contest is over!"
	done

SECTION "__RepelWoreOffText", ROMX
_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

SECTION "__PlayerFoundItemText", ROMX
_PlayerFoundItemText::
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

SECTION "__ButNoSpaceText", ROMX
_ButNoSpaceText::
	text "But <PLAYER> has"
	line "no space left…"
	done

SECTION "__JustSawSomeRareMonText", ROMX
_JustSawSomeRareMonText::
	text "I just saw some"
	line "rare @"
	text_ram wStringBuffer1
	text " in"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "I'll call you if I"
	line "see another rare"
	cont "#MON, OK?"
	prompt

SECTION "__SavingRecordText", ROMX
_SavingRecordText::
	text "SAVING RECORD…"
	line "DON'T TURN OFF!"
	done

SECTION "__ReceiveItemText", ROMX
_ReceiveItemText::
	text_ram wPlayerName
	text " received"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_waitbutton
	text_end

	text_end ; unused

SECTION "__NoCoinsText", ROMX
_NoCoinsText::
	text "You have no coins."
	prompt

SECTION "__NoCoinCaseText", ROMX
_NoCoinCaseText::
	text "You don't have a"
	line "COIN CASE."
	prompt

SECTION "_UnknownText_0x1bd407", ROMX
UnknownText_0x1bd407::
	text "OK, connect the"
	line "Game Link Cable."
	prompt

SECTION "_UnknownText_0x1bd429", ROMX
UnknownText_0x1bd429::
	text "<PLAYER> traded"
	line "@"
	text_ram wMonOrItemNameBuffer
	text " for"
	cont "@"
	text_ram wStringBuffer2
	text ".@"
	text_end

SECTION "_UnknownText_0x1bd445", ROMX
UnknownText_0x1bd445::
	sound_dex_fanfare_80_109
	text_pause
	text_end

	text_end ; unused

SECTION "__NPCTradeIntroText1", ROMX
_NPCTradeIntroText1::
	text "I collect #MON."
	line "Do you have"
	cont "@"
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "__NPCTradeCancelText1", ROMX
_NPCTradeCancelText1::
	text "You don't want to"
	line "trade? Aww…"
	done

SECTION "__NPCTradeWrongText1", ROMX
_NPCTradeWrongText1::
	text "Huh? That's not"
	line "@"
	text_ram wStringBuffer1
	text ". "
	cont "What a letdown…"
	done

SECTION "__NPCTradeCompleteText1", ROMX
_NPCTradeCompleteText1::
	text "Yay! I got myself"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "Thanks!"
	done

SECTION "__NPCTradeAFterText1", ROMX
_NPCTradeAFterText1::
	text "Hi, how's my old"
	line "@"
	text_ram wStringBuffer2
	text " doing?"
	done

SECTION "__NPCTradeIntroText2", ROMX
_NPCTradeIntroText2::
	text "Hi, I'm looking"
	line "for this #MON."

	para "If you have"
	line "@"
	text_ram wStringBuffer1
	text ", would"

	para "you trade it for"
	line "my @"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "__NPCTradeCancelText2", ROMX
_NPCTradeCancelText2::
	text "You don't have"
	line "one either?"

	para "Gee, that's really"
	line "disappointing…"
	done

SECTION "__NPCTradeWrongText2", ROMX
_NPCTradeWrongText2::
	text "You don't have"
	line "@"
	text_ram wStringBuffer1
	text "? That's"
	cont "too bad, then."
	done

SECTION "__NPCTradeCompleteText2", ROMX
_NPCTradeCompleteText2::
	text "Great! Thank you!"

	para "I finally got"
	line "@"
	text_ram wStringBuffer1
	text "."
	done

SECTION "__NPCTradeAfterText2", ROMX
_NPCTradeAfterText2::
	text "Hi! The @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "you traded me is"
	cont "doing great!"
	done

SECTION "__NPCTradeIntroText3", ROMX
_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text "'s cute,"
	line "but I don't have"

	para "it. Do you have"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "__NPCTradeCancelText3", ROMX
_NPCTradeCancelText3::
	text "You don't want to"
	line "trade? Oh, darn…"
	done

SECTION "__NPCTradeWrongText3", ROMX
_NPCTradeWrongText3::
	text "That's not"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Please trade with"
	line "me if you get one."
	done

SECTION "__NPCTradeCompleteText3", ROMX
_NPCTradeCompleteText3::
	text "Wow! Thank you!"
	line "I always wanted"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

SECTION "__NPCTradeAfterText3", ROMX
_NPCTradeAfterText3::
	text "How is that"
	line "@"
	text_ram wStringBuffer2
	text " I"
	cont "traded you doing?"

	para "Your @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "so cute!"
	done

SECTION "__NPCTradeCompleteText4", ROMX
_NPCTradeCompleteText4::
	text "Uh? What happened?"
	done

SECTION "__NPCTradeAfterText4", ROMX
_NPCTradeAfterText4::
	text "Trading is so odd…"

	para "I still have a lot"
	line "to learn about it."
	done

SECTION "__MomLeavingText1", ROMX
_MomLeavingText1::
	text "Wow, that's a cute"
	line "#MON."

	para "Where did you get"
	line "it?"

	para "…"

	para "So, you're leaving"
	line "on an adventure…"

	para "OK!"
	line "I'll help too."

	para "But what can I do"
	line "for you?"

	para "I know! I'll save"
	line "money for you."

	para "On a long journey,"
	line "money's important."

	para "Do you want me to"
	line "save your money?"
	done

SECTION "__MomLeavingText2", ROMX
_MomLeavingText2::
	text "OK, I'll take care"
	line "of your money."

	para "<……><……><……>"
	prompt

SECTION "__MomLeavingText3", ROMX
_MomLeavingText3::
	text "Be careful."

	para "#MON are your"
	line "friends. You need"
	cont "to work as a team."

	para "Now, go on!"
	done

SECTION "__MomVisitingText1", ROMX
_MomVisitingText1::
	text "Hi! Welcome home!"
	line "You're trying very"
	cont "hard, I see."

	para "I've kept your"
	line "room tidy."

	para "Or is this about"
	line "your money?"
	done

SECTION "__MomVisitingText2", ROMX
_MomVisitingText2::
	text "What do you want"
	line "to do?"
	done

SECTION "__MomVisitingText3", ROMX
_MomVisitingText3::
	text "How much do you"
	line "want to save?"
	done

SECTION "__MomVisitingText4", ROMX
_MomVisitingText4::
	text "How much do you"
	line "want to take?"
	done

SECTION "__MomVisitingText5", ROMX
_MomVisitingText5::
	text "Do you want to"
	line "save some money?"
	done

SECTION "__MomVisitingText6", ROMX
_MomVisitingText6::
	text "You haven't saved"
	line "that much."
	prompt

SECTION "__MomVisitingText7", ROMX
_MomVisitingText7::
	text "You can't take"
	line "that much."
	prompt

SECTION "__MomVisitingText8", ROMX
_MomVisitingText8::
	text "You don't have"
	line "that much."
	prompt

SECTION "__MomVisitingText9", ROMX
_MomVisitingText9::
	text "You can't save"
	line "that much."
	prompt

SECTION "__MomVisitingText10", ROMX
_MomVisitingText10::
	text "OK, I'll save your"
	line "money. Trust me!"

	para "<PLAYER>, stick"
	line "with it!"
	done

SECTION "__MomVisitingText11", ROMX
_MomVisitingText11::
	text "Your money's safe"
	line "here! Get going!"
	done

SECTION "__MomVisitingText12", ROMX
_MomVisitingText12::
	text "<PLAYER>, don't"
	line "give up!"
	done

SECTION "__MomVisitingText13", ROMX
_MomVisitingText13::
	text "Just do what"
	line "you can."
	done

SECTION "__DaycareDummyText", ROMX
_DaycareDummyText::
	text_start
	done

SECTION "__DayCareManIntroText", ROMX
_DayCareManIntroText::
	text "I'm the DAY-CARE"
	line "MAN. Want me to"
	cont "raise a #MON?"
	done

SECTION "__DayCareManOddEggText", ROMX
_DayCareManOddEggText::
	text "I'm the DAY-CARE"
	line "MAN. Do you know"
	cont "about EGGS?"

	para "I was raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible is"
	line "that?"

	para "So, want me to"
	line "raise a #MON?"
	done

SECTION "__DayCareLadyIntroText", ROMX
_DayCareLadyIntroText::
	text "I'm the DAY-CARE"
	line "LADY."

	para "Should I raise a"
	line "#MON for you?"
	done

SECTION "__DayCareLadyOddEggText", ROMX
_DayCareLadyOddEggText::
	text "I'm the DAY-CARE"
	line "LADY. Do you know"
	cont "about EGGS?"

	para "My husband and I"
	line "were raising some"
	cont "#MON, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible"
	line "could that be?"

	para "Should I raise a"
	line "#MON for you?"
	done

SECTION "__WhatShouldIRaiseText", ROMX
_WhatShouldIRaiseText::
	text "What should I"
	line "raise for you?"
	prompt

SECTION "__OnlyOneMonText", ROMX
_OnlyOneMonText::
	text "Oh? But you have"
	line "just one #MON."
	prompt

SECTION "__CantRaiseEggText", ROMX
_CantRaiseEggText::
	text "Sorry, but I can't"
	line "accept an EGG."
	prompt

SECTION "__RemoveMailText", ROMX
_RemoveMailText::
	text "Remove MAIL before"
	line "you come see me."
	prompt

SECTION "__LastHealthyMonText", ROMX
_LastHealthyMonText::
	text "If you give me"
	line "that, what will"
	cont "you battle with?"
	prompt

SECTION "__IllRaiseYourMonText", ROMX
_IllRaiseYourMonText::
	text "OK. I'll raise"
	line "your @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "__ComeBackLaterText", ROMX
_ComeBackLaterText::
	text "Come back for it"
	line "later."
	done

SECTION "__AreWeGeniusesText", ROMX
_AreWeGeniusesText::
	text "Are we geniuses or"
	line "what? Want to see"
	cont "your @"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "__YourMonHasGrownText", ROMX
_YourMonHasGrownText::
	text "Your @"
	text_ram wStringBuffer1
	text_start
	line "has grown a lot."

	para "By level, it's"
	line "grown by @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥@"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "."
	done

SECTION "__PerfectHeresYourMonText", ROMX
_PerfectHeresYourMonText::
	text "Perfect! Here's"
	line "your #MON."
	prompt

SECTION "__GotBackMonText", ROMX
_GotBackMonText::
	text "<PLAYER> got back"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "__BackAlreadyText", ROMX
_BackAlreadyText::
	text "Huh? Back already?"
	line "Your @"
	text_ram wStringBuffer1
	text_start
	para "needs a little"
	line "more time with us."

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥100."
	done

SECTION "__HaveNoRoomText", ROMX
_HaveNoRoomText::
	text "You have no room"
	line "for it."
	prompt

SECTION "__DCNotEnoughMoneyText", ROMX
_DCNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

SECTION "__OhFineThenText", ROMX
_OhFineThenText::
	text "Oh, fine then."
	prompt

SECTION "__ComeAgainText", ROMX
_ComeAgainText::
	text "Come again."
	done

SECTION "__NotYetText", ROMX
_NotYetText::
	text "Not yet…"
	done

SECTION "__FoundAnEggText", ROMX
_FoundAnEggText::
	text "Ah, it's you!"

	para "We were raising"
	line "your #MON, and"

	para "my goodness, were"
	line "we surprised!"

	para "Your #MON had"
	line "an EGG!"

	para "We don't know how"
	line "it got there, but"

	para "your #MON had"
	line "it. You want it?"
	done

SECTION "__ReceivedEggText", ROMX
_ReceivedEggText::
	text "<PLAYER> received"
	line "the EGG!"
	done

SECTION "__TakeGoodCareOfEggText", ROMX
_TakeGoodCareOfEggText::
	text "Take good care of"
	line "it."
	done

SECTION "__RefuseEggText", ROMX
_RefuseEggText::
	text "Well then, I'll"
	line "keep it. Thanks!"
	done

SECTION "__NoRoomForEggText", ROMX
_NoRoomForEggText::
	text "You have no room"
	line "in your party."
	cont "Come back later."
	done

SECTION "__WhichMonPhotoText", ROMX
_WhichMonPhotoText::
	text "Which #MON"
	line "should I photo-"
	cont "graph?"
	prompt

SECTION "__HoldOnText", ROMX
_HoldOnText::
	text "All righty. Hold"
	line "still for a bit."
	prompt

SECTION "__PrestoAllDoneText", ROMX
_PrestoAllDoneText::
	text "Presto! All done."
	line "Come again, OK?"
	done
SECTION "_UnknownText_0x1c0000", ROMX
UnknownText_0x1c0000::
	text "Oh, no picture?"
	line "Come again, OK?"
	done

SECTION "_UnknownText_0x1c0021", ROMX
UnknownText_0x1c0021::
	text "An EGG? My talent"
	line "is worth more…"
	done

SECTION "_UnknownText_0x1c0043", ROMX
UnknownText_0x1c0043::
	text "Hello, hello! I'm"
	line "the NAME RATER."

	para "I rate the names"
	line "of #MON."

	para "Would you like me"
	line "to rate names?"
	done

SECTION "_UnknownText_0x1c00a0", ROMX
UnknownText_0x1c00a0::
	text "Which #MON's"
	line "nickname should I"
	cont "rate for you?"
	prompt

SECTION "_UnknownText_0x1c00cd", ROMX
UnknownText_0x1c00cd::
	text "Hm… @"
	text_ram wStringBuffer1
	text "…"
	line "That's a fairly"
	cont "decent name."

	para "But, how about a"
	line "slightly better"
	cont "nickname?"

	para "Want me to give it"
	line "a better name?"
	done

SECTION "_UnknownText_0x1c0142", ROMX
UnknownText_0x1c0142::
	text "All right. What"
	line "name should we"
	cont "give it, then?"
	prompt

SECTION "_UnknownText_0x1c0171", ROMX
UnknownText_0x1c0171::
	text "That's a better"
	line "name than before!"

	para "Well done!"
	done

SECTION "_UnknownText_0x1c019e", ROMX
UnknownText_0x1c019e::
	text "OK, then. Come"
	line "again sometime."
	done

SECTION "_UnknownText_0x1c01be", ROMX
UnknownText_0x1c01be::
	text "Hm… @"
	text_ram wStringBuffer1
	text "?"
	line "What a great name!"
	cont "It's perfect."

	para "Treat @"
	text_ram wStringBuffer1
	text_start
	line "with loving care."
	done

SECTION "_UnknownText_0x1c0208", ROMX
UnknownText_0x1c0208::
	text "Whoa… That's just"
	line "an EGG."
	done

SECTION "_UnknownText_0x1c0222", ROMX
UnknownText_0x1c0222::
	text "It might look the"
	line "same as before,"

	para "but this new name"
	line "is much better!"

	para "Well done!"
	done

SECTION "_UnknownText_0x1c0272", ROMX
UnknownText_0x1c0272::
	text "All right. This"
	line "#MON is now"
	cont "named @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_Text_Gained", ROMX
Text_Gained::
	text_ram wStringBuffer1
	text " gained@"
	text_end

SECTION "_Text_ABoostedStringBuffer2ExpPoints", ROMX
Text_ABoostedStringBuffer2ExpPoints::
	text_start
	line "a boosted"
	cont "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. Points!"
	prompt

SECTION "_Text_StringBuffer2ExpPoints", ROMX
Text_StringBuffer2ExpPoints::
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. Points!"
	prompt

SECTION "_Text_GoMon", ROMX
Text_GoMon::
	text "Go! @"
	text_end

SECTION "_Text_DoItMon", ROMX
Text_DoItMon::
	text "Do it! @"
	text_end

SECTION "_Text_GoForItMon", ROMX
Text_GoForItMon::
	text "Go for it,"
	line "@"
	text_end

SECTION "_Text_YourFoesWeakGetmMon", ROMX
Text_YourFoesWeakGetmMon::
	text "Your foe's weak!"
	line "Get'm, @"
	text_end

SECTION "_Text_BattleMonNick01", ROMX
Text_BattleMonNick01::
	text_ram wBattleMonNick
	text "!"
	done

SECTION "_Text_BattleMonNickComma", ROMX
Text_BattleMonNickComma::
	text_ram wBattleMonNick
	text ",@"
	text_end

SECTION "_Text_ThatsEnoughComeBack", ROMX
Text_ThatsEnoughComeBack::
	text " that's"
	line "enough! Come back!@"
	text_end

SECTION "_Text_OKComeBack", ROMX
Text_OKComeBack::
	text " OK!"
	line "Come back!@"
	text_end

SECTION "_Text_GoodComeBack", ROMX
Text_GoodComeBack::
	text " good!"
	line "Come back!@"
	text_end

SECTION "_Text_ComeBack", ROMX
Text_ComeBack::
	text " come"
	line "back!"
	done

SECTION "_UnknownText_0x1c0373", ROMX
UnknownText_0x1c0373::
	text "Booted up a TM."
	prompt

SECTION "_UnknownText_0x1c0384", ROMX
UnknownText_0x1c0384::
	text "Booted up an HM."
	prompt

SECTION "_UnknownText_0x1c0396", ROMX
UnknownText_0x1c0396::
	text "It contained"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "Teach @"
	text_ram wStringBuffer2
	text_start
	line "to a #MON?"
	done

SECTION "_UnknownText_0x1c03c2", ROMX
UnknownText_0x1c03c2::
	text_ram wStringBuffer2
	text " is"
	line "not compatible"
	cont "with @"
	text_ram wStringBuffer1
	text "."

	para "It can't learn"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c03fa", ROMX
UnknownText_0x1c03fa::
	text "You have no room"
	line "for any more"
	cont "@"
	text_ram wStringBuffer1
	text "S."
	prompt

SECTION "_UnknownText_0x1c0421", ROMX
UnknownText_0x1c0421::
	text "You received"
	line "@"
	text_ram wStringBuffer1
	text "!"
	prompt

SECTION "_UnknownText_0x1c0436", ROMX
UnknownText_0x1c0436::
	text "The link has been"
	line "cancelled."
	prompt

SECTION "_UnknownText_0x1c0454", ROMX
UnknownText_0x1c0454::
	text "Communication"
	line "error."
	prompt

SECTION "_UnknownText_0x1c046a", ROMX
UnknownText_0x1c046a::
	text "Must retrieve GIFT"
	line "at #MON CENTER."
	prompt

SECTION "_UnknownText_0x1c048e", ROMX
UnknownText_0x1c048e::
	text "Your friend isn't"
	line "ready."
	prompt

SECTION "_UnknownText_0x1c04a7", ROMX
UnknownText_0x1c04a7::
	text "Sorry--only five"
	line "GIFTS a day."
	prompt

SECTION "_UnknownText_0x1c04c6", ROMX
UnknownText_0x1c04c6::
	text "Sorry. One GIFT"
	line "a day per person."
	prompt

SECTION "_UnknownText_0x1c04e9", ROMX
UnknownText_0x1c04e9::
	text_ram wMysteryGiftPartnerName
	text " sent"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_UnknownText_0x1c04fa", ROMX
UnknownText_0x1c04fa::
	text_ram wMysteryGiftPartnerName
	text " sent"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "to @"
	text_ram wMysteryGiftPlayerName
	text "'s home."
	prompt

SECTION "_UnknownText_0x1c051a", ROMX
UnknownText_0x1c051a::
	text "Received"
	line "@"
	text_ram wc850
	text "'s CARD."
	prompt

SECTION "_UnknownText_0x1c0531", ROMX
UnknownText_0x1c0531::
	text_ram wc850
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wDeciramBuffer, 1, 2
	text "."
	prompt

SECTION "_UnknownText_0x1c0555", ROMX
UnknownText_0x1c0555::
	text "The CARD was not"
	line "registered."
	prompt

SECTION "_UnknownText_0x1c0573", ROMX
UnknownText_0x1c0573::
	text "The link has been"
	line "cancelled."
	prompt

SECTION "_UnknownText_0x1c0591", ROMX
UnknownText_0x1c0591::
	text "Communication"
	line "error."
	prompt

SECTION "__BadgeRequiredText", ROMX
_BadgeRequiredText::
	text "Sorry! A new BADGE"
	line "is required."
	prompt

SECTION "_UnknownText_0x1c05c8", ROMX
UnknownText_0x1c05c8::
	text "Can't use that"
	line "here."
	prompt

SECTION "_UnknownText_0x1c05dd", ROMX
UnknownText_0x1c05dd::
	text_ram wStringBuffer2
	text " used"
	line "UPROOT!"
	prompt

SECTION "_UnknownText_0x1c05ec", ROMX
UnknownText_0x1c05ec::
	text "There's nothing to"
	line "UPROOT here."
	prompt

SECTION "_UnknownText_0x1c0609", ROMX
UnknownText_0x1c0609::
	text "A blinding FLASH"
	line "lights the area!@"
	text_waitbutton
	text_end

	text_end ; unused

SECTION "__UsedSurfText", ROMX
_UsedSurfText::
	text_ram wStringBuffer2
	text " used"
	line "SURF!"
	done

SECTION "__CantSurfText", ROMX
_CantSurfText::
	text "You can't SURF"
	line "here."
	prompt

SECTION "__AlreadySurfingText", ROMX
_AlreadySurfingText::
	text "You're already"
	line "SURFING."
	prompt

SECTION "__AskSurfText", ROMX
_AskSurfText::
	text "The water is calm."
	line "Want to SURF?"
	done

SECTION "_UnknownText_0x1c068e", ROMX
UnknownText_0x1c068e::
	text_ram wStringBuffer2
	text " used"
	line "WATERFALL!"
	done

SECTION "_UnknownText_0x1c06a3", ROMX
UnknownText_0x1c06a3::
	text "Wow, it's a huge"
	line "waterfall."
	done

SECTION "_UnknownText_0x1c06bf", ROMX
UnknownText_0x1c06bf::
	text "Do you want to use"
	line "WATERFALL?"
	done

SECTION "_UnknownText_0x1c06de", ROMX
UnknownText_0x1c06de::
	text_ram wStringBuffer2
	text " used"
	line "DIG!"
	done

SECTION "_UnknownText_0x1c06ed", ROMX
UnknownText_0x1c06ed::
	text "<PLAYER> used an"
	line "ESCAPE ROPE."
	done

SECTION "_UnknownText_0x1c0705", ROMX
UnknownText_0x1c0705::
	text "Can't use that"
	line "here."
	done

SECTION "_UnknownText_0x1c071a", ROMX
UnknownText_0x1c071a::
	text "Return to the last"
	line "#MON CENTER."
	done

SECTION "_UnknownText_0x1c073b", ROMX
UnknownText_0x1c073b::
	text "Can't use that"
	line "here."

	para ""
	done

SECTION "_UnknownText_0x1c0751", ROMX
UnknownText_0x1c0751::
	text "A #MON is using"
	line "STRENGTH already."
	prompt

SECTION "_UnknownText_0x1c0774", ROMX
UnknownText_0x1c0774::
	text_ram wStringBuffer2
	text " used"
	line "STRENGTH!"
	done

SECTION "_UnknownText_0x1c0788", ROMX
UnknownText_0x1c0788::
	text_ram wStringBuffer1
	text " can"
	line "move boulders."
	prompt

SECTION "_UnknownText_0x1c07a0", ROMX
UnknownText_0x1c07a0::
	text "A #MON may be"
	line "able to move this."

	para "Want to use"
	line "STRENGTH?"
	done

SECTION "_UnknownText_0x1c07d8", ROMX
UnknownText_0x1c07d8::
	text "Boulders may now"
	line "be moved!"
	done

SECTION "_UnknownText_0x1c07f4", ROMX
UnknownText_0x1c07f4::
	text "A #MON may be"
	line "able to move this."
	done

SECTION "_UnknownText_0x1c0816", ROMX
UnknownText_0x1c0816::
	text_ram wStringBuffer2
	text " used"
	line "WHIRLPOOL!"
	prompt

SECTION "_UnknownText_0x1c082b", ROMX
UnknownText_0x1c082b::
	text "It's a vicious"
	line "whirlpool!"

	para "A #MON may be"
	line "able to pass it."
	done

SECTION "_UnknownText_0x1c0864", ROMX
UnknownText_0x1c0864::
	text "A whirlpool is in"
	line "the way."

	para "Want to use"
	line "WHIRLPOOL?"
	done

SECTION "_UnknownText_0x1c0897", ROMX
UnknownText_0x1c0897::
	text_ram wStringBuffer2
	text " did a"
	line "HEADBUTT!"
	prompt

SECTION "_UnknownText_0x1c08ac", ROMX
UnknownText_0x1c08ac::
	text "Nope. Nothing…"
	done

SECTION "_UnknownText_0x1c08bc", ROMX
UnknownText_0x1c08bc::
	text "A #MON could be"
	line "in this tree."

	para "Want to HEADBUTT"
	line "it?"
	done

SECTION "_UnknownText_0x1c08f0", ROMX
UnknownText_0x1c08f0::
	text_ram wStringBuffer2
	text " used"
	line "ROCK SMASH!"
	prompt

SECTION "_UnknownText_0x1c0906", ROMX
UnknownText_0x1c0906::
	text "Maybe a #MON"
	line "can break this."
	done

SECTION "_UnknownText_0x1c0924", ROMX
UnknownText_0x1c0924::
	text "This rock looks"
	line "breakable."

	para "Want to use ROCK"
	line "SMASH?"
	done

SECTION "_UnknownText_0x1c0958", ROMX
UnknownText_0x1c0958::
	text "Oh!"
	line "A bite!"
	prompt

SECTION "_UnknownText_0x1c0965", ROMX
UnknownText_0x1c0965::
	text "Not even a nibble!"
	prompt

SECTION "_UnknownText_0x1c0979", ROMX
UnknownText_0x1c0979::
	text "Looks like there's"
	line "nothing here."
	prompt

SECTION "_UnknownText_0x1c099a", ROMX
UnknownText_0x1c099a::
	text "You can't get off"
	line "here!"
	done

SECTION "_UnknownText_0x1c09b2", ROMX
UnknownText_0x1c09b2::
	text "<PLAYER> got on the"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

SECTION "_UnknownText_0x1c09c7", ROMX
UnknownText_0x1c09c7::
	text "<PLAYER> got off"
	line "the @"
	text_ram wStringBuffer2
	text "."
	done

SECTION "_UnknownText_0x1c09dd", ROMX
UnknownText_0x1c09dd::
	text "This tree can be"
	line "UPROOTed!"

	para "Want to use"
	line "UPROOT?"
	done

SECTION "_UnknownText_0x1c0a05", ROMX
UnknownText_0x1c0a05::
	text "This tree can be"
	line "UPROOTed!"
	done

SECTION "_UnknownText_0x1c0a1c", ROMX
UnknownText_0x1c0a1c::
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_UnknownText_0x1c0a2c", ROMX
UnknownText_0x1c0a2c::
	text "But <PLAYER> can't"
	line "carry any more"
	cont "items."
	done

SECTION "_UnknownText_0x1c0a4e", ROMX
UnknownText_0x1c0a4e::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> whited"
	line "out!"
	done

SECTION "_UnknownText_0x1c0a77", ROMX
UnknownText_0x1c0a77::
	text "Yes! ITEMFINDER"
	line "indicates there's"
	cont "an item nearby."
	prompt

SECTION "_UnknownText_0x1c0aa9", ROMX
UnknownText_0x1c0aa9::
	text "Nope! ITEMFINDER"
	line "isn't responding."
	prompt

SECTION "_UnknownText_0x1c0acc", ROMX
UnknownText_0x1c0acc::
	text_ram wStringBuffer3
	text_start
	line "fainted!"
	prompt

SECTION "_UnknownText_0x1c0ada", ROMX
UnknownText_0x1c0ada::
	text "<PLAYER> is out of"
	line "useable #MON!"

	para "<PLAYER> whited"
	line "out!"
	prompt

SECTION "_UnknownText_0x1c0b03", ROMX
UnknownText_0x1c0b03::
	text_ram wStringBuffer3
	text " used"
	line "SWEET SCENT!"
	done

SECTION "_UnknownText_0x1c0b1a", ROMX
UnknownText_0x1c0b1a::
	text "Looks like there's"
	line "nothing here…"
	done

SECTION "_UnknownText_0x1c0b3b", ROMX
UnknownText_0x1c0b3b::
	text "<PLAYER> sprinkled"
	line "water."

	para "But nothing"
	line "happened…"
	done

SECTION "_UnknownText_0x1c0b65", ROMX
UnknownText_0x1c0b65::
	text "<PLAYER>'s #MON"
	line "were all healed!"
	done

SECTION "_Text_AnEGGCantHoldAnItem", ROMX
Text_AnEGGCantHoldAnItem::
	text "An EGG can't hold"
	line "an item."
	prompt

SECTION "_UnknownText_0x1c0b9a", ROMX
UnknownText_0x1c0b9a::
	text "No items."
	done

SECTION "_UnknownText_0x1c0ba5", ROMX
UnknownText_0x1c0ba5::
	text "Throw away how"
	line "many?"
	done

SECTION "_UnknownText_0x1c0bbb", ROMX
UnknownText_0x1c0bbb::
	text "Throw away @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

SECTION "_UnknownText_0x1c0bd8", ROMX
UnknownText_0x1c0bd8::
	text "Threw away"
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

SECTION "_UnknownText_0x1c0bee", ROMX
UnknownText_0x1c0bee::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	prompt

SECTION "_Text_YouDontHaveAMon", ROMX
Text_YouDontHaveAMon::
	text "You don't have a"
	line "#MON!"
	prompt

SECTION "_UnknownText_0x1c0c2e", ROMX
UnknownText_0x1c0c2e::
	text "Registered the"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c0c45", ROMX
UnknownText_0x1c0c45::
	text "You can't register"
	line "that item."
	prompt

SECTION "_UnknownText_0x1c0c63", ROMX
UnknownText_0x1c0c63::
	text "Where should this"
	line "be moved to?"
	done

SECTION "_UnknownText_0x1c0c83", ROMX
UnknownText_0x1c0c83::
	text_start
	done

SECTION "_Text_YouCantUseItInABattle", ROMX
Text_YouCantUseItInABattle::
	text "You can't use it"
	line "in a battle."
	prompt

SECTION "_Text_AreYouABoyOrAreYouAGirl", ROMX
Text_AreYouABoyOrAreYouAGirl::
	text "Are you a boy?"
	line "Or are you a girl?"
	done

SECTION "_UnknownText_0x1c0cc6", ROMX
UnknownText_0x1c0cc6::
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c0cd0", ROMX
UnknownText_0x1c0cd0::
	text_pause
	text "<SCROLL>went way up!"
	prompt

SECTION "_UnknownText_0x1c0ce0", ROMX
UnknownText_0x1c0ce0::
	text " went up!"
	prompt

SECTION "_UnknownText_0x1c0ceb", ROMX
UnknownText_0x1c0ceb::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c0cf5", ROMX
UnknownText_0x1c0cf5::
	text_pause
	text "<SCROLL>sharply fell!"
	prompt

SECTION "_UnknownText_0x1c0d06", ROMX
UnknownText_0x1c0d06::
	text " fell!"
	prompt

SECTION "_UnknownText_0x1c0d0e", ROMX
UnknownText_0x1c0d0e::
	text "<USER>@"
	text_end

SECTION "_UnknownText_0x1c0d12", ROMX
UnknownText_0x1c0d12::
	text_start
	line "made a whirlwind!"
	prompt

SECTION "_UnknownText_0x1c0d26", ROMX
UnknownText_0x1c0d26::
	text_start
	line "took in sunlight!"
	prompt

SECTION "_UnknownText_0x1c0d3a", ROMX
UnknownText_0x1c0d3a::
	text_start
	line "lowered its head!"
	prompt

SECTION "_UnknownText_0x1c0d4e", ROMX
UnknownText_0x1c0d4e::
	text_start
	line "is glowing!"
	prompt

SECTION "_UnknownText_0x1c0d5c", ROMX
UnknownText_0x1c0d5c::
	text_start
	line "flew up high!"
	prompt

SECTION "_UnknownText_0x1c0d6c", ROMX
UnknownText_0x1c0d6c::
	text_start
	line "dug a hole!"
	prompt

SECTION "__ActorNameText", ROMX
_ActorNameText::
	text "<USER>@"
	text_end

SECTION "__UsedMoveText", ROMX
_UsedMoveText::
	text_start
	line "used @"
	text_end

SECTION "__UsedInsteadText", ROMX
_UsedInsteadText::
	text "instead,"
	cont "@"
	text_end

SECTION "__MoveNameText", ROMX
_MoveNameText::
	text_ram wStringBuffer2
	text "!"
	done

SECTION "_UnknownText_0x1c0db0", ROMX
UnknownText_0x1c0db0::
	text "Huh?"

	para "@"
	text_end

SECTION "_UnknownText_0x1c0db8", ROMX
UnknownText_0x1c0db8::
	text_start
	done

SECTION "_UnknownText_0x1c0dba", ROMX
UnknownText_0x1c0dba::
	text_ram wStringBuffer1
	text " came"
	line "out of its EGG!@"
	sound_caught_mon
	text_waitbutton
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c0dd8", ROMX
UnknownText_0x1c0dd8::
	text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_UnknownText_0x1c0df3", ROMX
UnknownText_0x1c0df3::
	text "It's @"
	text_ram wBreedMon2Nick
	text_start
	line "that was left with"
	cont "the DAY-CARE LADY."
	done

SECTION "_UnknownText_0x1c0e24", ROMX
UnknownText_0x1c0e24::
	text "It's @"
	text_ram wBreedMon1Nick
	text_start
	line "that was left with"
	cont "the DAY-CARE MAN."
	done

SECTION "_UnknownText_0x1c0e54", ROMX
UnknownText_0x1c0e54::
	text "It's brimming with"
	line "energy."
	prompt

SECTION "_UnknownText_0x1c0e6f", ROMX
UnknownText_0x1c0e6f::
	text "It has no interest"
	line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_UnknownText_0x1c0e8d", ROMX
UnknownText_0x1c0e8d::
	text "It appears to care"
	line "for @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_UnknownText_0x1c0eac", ROMX
UnknownText_0x1c0eac::
	text "It's friendly with"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_UnknownText_0x1c0ec6", ROMX
UnknownText_0x1c0ec6::
	text "It shows interest"
	line "in @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "__EmptyMailboxText", ROMX
_EmptyMailboxText::
	text "There's no MAIL"
	line "here."
	prompt

SECTION "_ClearedMailPutAwayText", ROMX
ClearedMailPutAwayText::
	text "The cleared MAIL"
	line "was put away."
	prompt

SECTION "_MailPackFullText", ROMX
MailPackFullText::
	text "The PACK is full."
	prompt

SECTION "_MailMessageLostText", ROMX
MailMessageLostText::
	text "The MAIL's message"
	line "will be lost. OK?"
	done

SECTION "_MailAlreadyHoldingItemText", ROMX
MailAlreadyHoldingItemText::
	text "It's already hold-"
	line "ing an item."
	prompt

SECTION "_MailEggText", ROMX
MailEggText::
	text "An EGG can't hold"
	line "any MAIL."
	prompt

SECTION "_MailMovedFromBoxText", ROMX
MailMovedFromBoxText::
	text "The MAIL was moved"
	line "from the MAILBOX."
	prompt

SECTION "_UnknownText_0x1c0fb3", ROMX
UnknownText_0x1c0fb3::
	text "Yes"
	prompt

SECTION "_UnknownText_0x1c0fb8", ROMX
UnknownText_0x1c0fb8::
	text "No"
	prompt

SECTION "_UnknownText_0x1c0fbc", ROMX
UnknownText_0x1c0fbc::
	text_decimal wcf64, 1, 3
	text " @"
	text_ram wStringBuffer1
	text_start
	line "Animation type @"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c0fdd", ROMX
UnknownText_0x1c0fdd::
	text "#MON number?"
	done

SECTION "_Text_WasSentToBillsPC", ROMX
Text_WasSentToBillsPC::
	text_ram wStringBuffer1
	text " was"
	line "sent to BILL's PC."
	prompt

SECTION "_UnknownText_0x1c1006", ROMX
UnknownText_0x1c1006::
	text "You gotta have"
	line "#MON to call!"
	prompt

SECTION "_UnknownText_0x1c1024", ROMX
UnknownText_0x1c1024::
	text "What?"
	done

SECTION "_UnknownText_0x1c102b", ROMX
UnknownText_0x1c102b::
	text "There is a #MON"
	line "holding MAIL."

	para "Please remove the"
	line "MAIL."
	prompt

SECTION "_UnknownText_0x1c1062", ROMX
UnknownText_0x1c1062::
	text "You don't have a"
	line "single #MON!"
	prompt

SECTION "_UnknownText_0x1c1080", ROMX
UnknownText_0x1c1080::
	text "You can't deposit"
	line "your last #MON!"
	prompt

SECTION "_UnknownText_0x1c10a2", ROMX
UnknownText_0x1c10a2::
	text "You can't take any"
	line "more #MON."
	prompt

SECTION "_UnknownText_0x1c10c0", ROMX
UnknownText_0x1c10c0::
	text "Caught @"
	text_ram wStringBuffer1
	text "!"
	prompt

SECTION "_UnknownText_0x1c10cf", ROMX
UnknownText_0x1c10cf::
	text "Switch #MON?"
	done

SECTION "_UnknownText_0x1c10dd", ROMX
UnknownText_0x1c10dd::
	text "You already caught"
	line "a @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_ContestJudging_FirstPlaceText", ROMX
ContestJudging_FirstPlaceText::
	text "This Bug-Catching"
	line "Contest winner is@"
	text_pause
	text "…"

	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "who caught a"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

SECTION "_ContestJudging_FirstPlaceScoreText", ROMX
ContestJudging_FirstPlaceScoreText::
	text_start

	para "The winning score"
	line "was @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "_ContestJudging_SecondPlaceText", ROMX
ContestJudging_SecondPlaceText::
	text "Placing second was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

SECTION "_ContestJudging_SecondPlaceScoreText", ROMX
ContestJudging_SecondPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "_ContestJudging_ThirdPlaceText", ROMX
ContestJudging_ThirdPlaceText::
	text "Placing third was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

SECTION "_ContestJudging_ThirdPlaceScoreText", ROMX
ContestJudging_ThirdPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "_UnknownText_0x1c1203", ROMX
UnknownText_0x1c1203::
	text "Let me measure"
	line "that MAGIKARP."

	para "…Hm, it measures"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_UnknownText_0x1c123a", ROMX
UnknownText_0x1c123a::
	text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer1
	text " caught by"
	line "@"
	text_ram wMagikarpRecordHoldersName
	text_waitbutton
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c1261", ROMX
UnknownText_0x1c1261::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_ram wStringBuffer1
	text " in"
	line "your party."
	prompt

SECTION "_UnknownText_0x1c12ae", ROMX
UnknownText_0x1c12ae::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_ram wStringBuffer1
	text " in"
	line "your PC BOX."
	prompt

SECTION "_UnknownText_0x1c12fc", ROMX
UnknownText_0x1c12fc::
	text "Give a nickname to"
	line "the @"
	text_ram wStringBuffer1
	text " you"
	cont "received?"
	done

SECTION "_UnknownText_0x1c1328", ROMX
UnknownText_0x1c1328::
	text "Bzzzzt! You must"
	line "have a #MON to"
	cont "use this!"
	prompt

SECTION "_UnknownText_0x1c1353", ROMX
UnknownText_0x1c1353::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

SECTION "_UnknownText_0x1c1368", ROMX
UnknownText_0x1c1368::
	text "What do you want"
	line "to do?"
	done

SECTION "__PlayersPCHowManyWithdrawText", ROMX
_PlayersPCHowManyWithdrawText::
	text "How many do you"
	line "want to withdraw?"
	done

SECTION "__PlayersPCWithdrewItemsText", ROMX
_PlayersPCWithdrewItemsText::
	text "Withdrew @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

SECTION "__PlayersPCNoRoomWithdrawText", ROMX
_PlayersPCNoRoomWithdrawText::
	text "There's no room"
	line "for more items."
	prompt

SECTION "_UnknownText_0x1c13df", ROMX
UnknownText_0x1c13df::
	text "No items here!"
	prompt

SECTION "__PlayersPCHowManyDepositText", ROMX
_PlayersPCHowManyDepositText::
	text "How many do you"
	line "want to deposit?"
	done

SECTION "__PlayersPCDepositItemsText", ROMX
_PlayersPCDepositItemsText::
	text "Deposited @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

SECTION "__PlayersPCNoRoomDepositText", ROMX
_PlayersPCNoRoomDepositText::
	text "There's no room to"
	line "store items."
	prompt

SECTION "_UnknownText_0x1c144d", ROMX
UnknownText_0x1c144d::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

SECTION "_UnknownText_0x1c1462", ROMX
UnknownText_0x1c1462::
	text "Access whose PC?"
	done

SECTION "_UnknownText_0x1c1474", ROMX
UnknownText_0x1c1474::
	text "BILL's PC"
	line "accessed."

	para "#MON Storage"
	line "System opened."
	prompt

SECTION "_UnknownText_0x1c14a4", ROMX
UnknownText_0x1c14a4::
	text "Accessed own PC."

	para "Item Storage"
	line "System opened."
	prompt

SECTION "_UnknownText_0x1c14d2", ROMX
UnknownText_0x1c14d2::
	text "PROF.OAK's PC"
	line "accessed."

	para "#DEX Rating"
	line "System opened."
	prompt

SECTION "_UnknownText_0x1c1505", ROMX
UnknownText_0x1c1505::
	text "…"
	line "Link closed…"
	done

SECTION "__OakPCText1", ROMX
_OakPCText1::
	text "Want to get your"
	line "#DEX rated?"
	done

SECTION "__OakPCText2", ROMX
_OakPCText2::
	text "Current #DEX"
	line "completion level:"
	prompt

SECTION "__OakPCText3", ROMX
_OakPCText3::
	text_ram wStringBuffer3
	text " #MON seen"
	line "@"
	text_ram wStringBuffer4
	text " #MON owned"

	para "PROF.OAK's"
	line "Rating:"
	done

SECTION "__OakRating01", ROMX
_OakRating01::
	text "Look for #MON"
	line "in grassy areas!"
	done

SECTION "__OakRating02", ROMX
_OakRating02::
	text "Good. I see you"
	line "understand how to"
	cont "use # BALLS."
	done

SECTION "__OakRating03", ROMX
_OakRating03::
	text "You're getting"
	line "good at this."

	para "But you have a"
	line "long way to go."
	done

SECTION "__OakRating04", ROMX
_OakRating04::
	text "You need to fill"
	line "up the #DEX."

	para "Catch different"
	line "kinds of #MON!"
	done

SECTION "__OakRating05", ROMX
_OakRating05::
	text "You're trying--I"
	line "can see that."

	para "Your #DEX is"
	line "coming together."
	done

SECTION "__OakRating06", ROMX
_OakRating06::
	text "To evolve, some"
	line "#MON grow,"

	para "others use the"
	line "effects of STONES."
	done

SECTION "__OakRating07", ROMX
_OakRating07::
	text "Have you gotten a"
	line "fishing ROD? You"

	para "can catch #MON"
	line "by fishing."
	done

SECTION "__OakRating08", ROMX
_OakRating08::
	text "Excellent! You"
	line "seem to like col-"
	cont "lecting things!"
	done

SECTION "__OakRating09", ROMX
_OakRating09::
	text "Some #MON only"
	line "appear during"

	para "certain times of"
	line "the day."
	done

SECTION "__OakRating10", ROMX
_OakRating10::
	text "Your #DEX is"
	line "filling up. Keep"
	cont "up the good work!"
	done

SECTION "__OakRating11", ROMX
_OakRating11::
	text "I'm impressed."
	line "You're evolving"

	para "#MON, not just"
	line "catching them."
	done

SECTION "__OakRating12", ROMX
_OakRating12::
	text "Have you met KURT?"
	line "His custom BALLS"
	cont "should help."
	done

SECTION "__OakRating13", ROMX
_OakRating13::
	text "Wow. You've found"
	line "more #MON than"

	para "the last #DEX"
	line "research project."
	done

SECTION "__OakRating14", ROMX
_OakRating14::
	text "Are you trading"
	line "your #MON?"

	para "It's tough to do"
	line "this alone!"
	done

SECTION "__OakRating15", ROMX
_OakRating15::
	text "Wow! You've hit"
	line "200! Your #DEX"
	cont "is looking great!"
	done

SECTION "__OakRating16", ROMX
_OakRating16::
	text "You've found so"
	line "many #MON!"

	para "You've really"
	line "helped my studies!"
	done

SECTION "__OakRating17", ROMX
_OakRating17::
	text "Magnificent! You"
	line "could become a"

	para "#MON professor"
	line "right now!"
	done

SECTION "__OakRating18", ROMX
_OakRating18::
	text "Your #DEX is"
	line "amazing! You're"

	para "ready to turn"
	line "professional!"
	done

SECTION "__OakRating19", ROMX
_OakRating19::
	text "Whoa! A perfect"
	line "#DEX! I've"

	para "dreamt about this!"
	line "Congratulations!"
	done

SECTION "__OakPCText4", ROMX
_OakPCText4::
	text "The link to PROF."
	line "OAK's PC closed."
	done

SECTION "_UnknownText_0x1c19cd", ROMX
UnknownText_0x1c19cd::
	text "Triple-theme"
	line "trainer ranking!"

	para "The SAVE file you"
	line "just sent might"
	cont "make the rankings!"

	para ""
	done

SECTION "_UnknownText_0x1c1a22", ROMX
UnknownText_0x1c1a22::
	text "There is no"
	line "ranking data."

	para "Link to obtain"
	line "ranking data."

	para ""
	done

SECTION "_UnknownText_0x1c1a5b", ROMX
UnknownText_0x1c1a5b::
	text " , yeah!"
	done

SECTION "_UnknownText_0x1c1a65", ROMX
UnknownText_0x1c1a65::
	text "Darn…"
	done

SECTION "_UnknownText_0x1c1a6c", ROMX
UnknownText_0x1c1a6c::
	text "Would you like to"
	line "end the Contest?"
	done

SECTION "_UnknownText_0x1c1a90", ROMX
UnknownText_0x1c1a90::
	text "Toss out how many"
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

SECTION "_UnknownText_0x1c1aad", ROMX
UnknownText_0x1c1aad::
	text "Throw away @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

SECTION "_UnknownText_0x1c1aca", ROMX
UnknownText_0x1c1aca::
	text "Discarded"
	line "@"
	text_ram wStringBuffer1
	text "(S)."
	prompt

SECTION "_UnknownText_0x1c1adf", ROMX
UnknownText_0x1c1adf::
	text "That's too impor-"
	line "tant to toss out!"
	prompt

SECTION "_UnknownText_0x1c1b03", ROMX
UnknownText_0x1c1b03::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	done

SECTION "_UnknownText_0x1c1b2c", ROMX
UnknownText_0x1c1b2c::
	text "Took @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "@"
	text_ram wStringBuffer1
	text " and"

	para "made it hold"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c1b57", ROMX
UnknownText_0x1c1b57::
	text "Made @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "hold @"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c1b6f", ROMX
UnknownText_0x1c1b6f::
	text "Please remove the"
	line "MAIL first."
	prompt

SECTION "_UnknownText_0x1c1b8e", ROMX
UnknownText_0x1c1b8e::
	text_ram wMonOrItemNameBuffer
	text " isn't"
	line "holding anything."
	prompt

SECTION "_UnknownText_0x1c1baa", ROMX
UnknownText_0x1c1baa::
	text "Item storage space"
	line "full."
	prompt

SECTION "_UnknownText_0x1c1bc4", ROMX
UnknownText_0x1c1bc4::
	text "Took @"
	text_ram wStringBuffer1
	text_start
	line "from @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

SECTION "_UnknownText_0x1c1bdc", ROMX
UnknownText_0x1c1bdc::
	text_ram wMonOrItemNameBuffer
	text " is"
	line "already holding"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "Switch items?"
	done

SECTION "__MonIsFollowingText", ROMX
_MonIsFollowingText::
	text_ram wMonOrItemNameBuffer
	text " tags"
	line "along with you."
	prompt

SECTION "__MonStopsFollowingText", ROMX
_MonStopsFollowingText::
	text "You put @"
	text_ram wMonOrItemNameBuffer
	text ""
	line "back into the #"
	cont "BALL."
	prompt

SECTION "__MonCantFollowText", ROMX
_MonCantFollowText::
	text_ram wMonOrItemNameBuffer
	text " can't"
	line "follow you!"
	prompt

SECTION "__MonRefusedFollowText", ROMX
_MonRefusedFollowText::
	text_ram wMonOrItemNameBuffer
	text ""
	line "refused to tag"
	cont "along<...>"
	prompt

SECTION "_UnknownText_0x1c1c09", ROMX
UnknownText_0x1c1c09::
	text "This item can't be"
	line "held."
	prompt

SECTION "_UnknownText_0x1c1c22", ROMX
UnknownText_0x1c1c22::
	text "The MAIL will lose"
	line "its message. OK?"
	done

SECTION "_UnknownText_0x1c1c47", ROMX
UnknownText_0x1c1c47::
	text "MAIL detached from"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_UnknownText_0x1c1c62", ROMX
UnknownText_0x1c1c62::
	text "There's no space"
	line "for removing MAIL."
	prompt

SECTION "_UnknownText_0x1c1c86", ROMX
UnknownText_0x1c1c86::
	text "Send the removed"
	line "MAIL to your PC?"
	done

SECTION "_UnknownText_0x1c1ca9", ROMX
UnknownText_0x1c1ca9::
	text "Your PC's MAILBOX"
	line "is full."
	prompt

SECTION "_UnknownText_0x1c1cc4", ROMX
UnknownText_0x1c1cc4::
	text "The MAIL was sent"
	line "to your PC."
	prompt

SECTION "_UnknownText_0x1c1ce3", ROMX
UnknownText_0x1c1ce3::
	text "Not enough HP!"
	prompt

SECTION "_UnknownText_0x1c1cf3", ROMX
UnknownText_0x1c1cf3::
	text "An item in your"
	line "PACK may be"

	para "registered for use"
	line "on SELECT Button."
	done

SECTION "__OakText1", ROMX
_OakText1::
	text "Hello! Sorry to"
	line "keep you waiting!"

	para "Welcome to the"
	line "world of #MON!"

	para "My name is ELM."

	para "But everyone calls"
	line "me the #MON"
	cont "PROF."
	prompt

SECTION "__OakText2", ROMX
_OakText2::
	text "Before we go any"
	line "further, I'd like"
	para "to tell you a few"
	line "things that you"
	para "should know about"
	line "this world."

	para "This world is in-"
	line "habited by"
	para "creatures known"
	line "as #MON."
	text_end

SECTION "__OakText3", ROMX
_OakText3::
	text_waitbutton
	text_end

SECTION "__OakText4", ROMX
_OakText4::
	text "We humans live"
	line "alongside #MON"
	cont "as friends."

	para "At times we play"
	line "together,"
	para "and other times we"
	line "work together."

	para "Some people use"
	line "their #MON to"
	para "battle and develop"
	line "closer bonds with"
	cont "them."
	prompt

SECTION "__OakText5", ROMX
_OakText5::
	text "But we don't know"
	line "everything about"
	cont "#MON yet."

	para "There are still"
	line "many mysteries to"
	cont "solve."

	para "That's why I study"
	line "#MON every day."
	prompt
	
SECTION "_Text_PasswordOption", ROMX
Text_PasswordOption::
	text "Enter an optional"
	line "password?"
	prompt

SECTION "__OakText6", ROMX
_OakText6::
	text "Now, what did you"
	line "say your name was?"
	prompt

SECTION "__OakText6a", ROMX
_OakText6a::
	text "Ah, so you are"
	line "<PLAYER>!"
	prompt

SECTION "__OakText6b", ROMX
_OakText6b::
	text "This boy has been"
	line "friends with you"
	para "since childhood,"
	line "is that right?"

	para "…Erm, what was"
	line "his name again?"
	prompt

SECTION "__OakText6c", ROMX
_OakText6c::
	text "…That's right!"
	line "<RIVAL> was his"
	cont "name!"
	prompt

SECTION "__OakText7a", ROMX
_OakText7a::
	text "<PLAYER>!"

	para "Before you start"
	line "your journey, you"

	para "should take note"
	line "of when you began."

	prompt
SECTION "__OakText7", ROMX
_OakText7::
	text "<PLAYER>! Are you"
	line "ready?"

	para "Your very own"
	line "tale of grand"
	para "adventure is"
	line "about to unfold."

	para "Fun experiences,"

	para "difficult experi-"
	line "ences, there's so"
	para "much waiting for"
	line "you!"

	para "Dreams! Adventure!"

	para "Let's go to the"
	line "world of #MON!"

	para "I'll see you later!"
	done
SECTION "_UnknownText_0x1c40e6", ROMX
UnknownText_0x1c40e6::
	text "The clock's time"
	line "may be wrong."

	para "Please reset the"
	line "time."
	prompt

SECTION "_UnknownText_0x1c411c", ROMX
UnknownText_0x1c411c::
	text "Set with the"
	line "Control Pad."

	para "Confirm: A Button"
	line "Cancel:  B Button"
	done

SECTION "_UnknownText_0x1c415b", ROMX
UnknownText_0x1c415b::
	text "Is this OK?"
	done

SECTION "_UnknownText_0x1c4168", ROMX
UnknownText_0x1c4168::
	text "The clock has been"
	line "reset."
	done

SECTION "_UnknownText_0x1c4183", ROMX
UnknownText_0x1c4183::
	text "Too much time has"
	line "elapsed. Please"
	cont "try again."
	prompt

SECTION "_UnknownText_0x1c41b1", ROMX
UnknownText_0x1c41b1::
	text "If you trade that"
	line "#MON, you won't"
	cont "be able to battle."
	prompt

SECTION "_UnknownText_0x1c41e6", ROMX
UnknownText_0x1c41e6::
	text "Your friend's"
	line "@"
	text_ram wStringBuffer1
	text " appears"
	cont "to be abnormal!"
	prompt

SECTION "_UnknownText_0x1c4212", ROMX
UnknownText_0x1c4212::
	text "Trade @"
	text_ram wd004
	text_start
	line "for @"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_UnknownText_0x1c422a", ROMX
UnknownText_0x1c422a::
	text "To enter a mobile"
	line "battle, you must"

	para "pick a team of"
	line "three #MON."

	para "Is that OK?"
	done

SECTION "_UnknownText_0x1c4275", ROMX
UnknownText_0x1c4275::
	text "Need more info on"
	line "mobile battles?"
	done

SECTION "_UnknownText_0x1c4298", ROMX
UnknownText_0x1c4298::
	text "For a mobile"
	line "battle, choose"
	cont "three #MON."

	para "The maximum daily"
	line "play time is ten"

	para "minutes for each"
	line "linked player."

	para "If a battle isn't"
	line "finished within"

	para "the time limit,"
	line "the player with"

	para "the fewest fainted"
	line "#MON wins."

	para "If tied, the team"
	line "that lost the"

	para "least amount of HP"
	line "wins."
	done

SECTION "_UnknownText_0x1c439c", ROMX
UnknownText_0x1c439c::
	text "Today's remaining"
	line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min."

	para "Would you like to"
	line "battle?"
	done

SECTION "_UnknownText_0x1c43dc", ROMX
UnknownText_0x1c43dc::
	text "There are only @"
	text_decimal wStringBuffer2, 1, 2
	text_start
	line "min. left today."

	para "Want a quick"
	line "battle?"
	done

SECTION "_UnknownText_0x1c4419", ROMX
UnknownText_0x1c4419::
	text "There is only"
	line "1 min. left today!"

	para "Want to rush"
	line "through a battle?"
	done

SECTION "_UnknownText_0x1c445a", ROMX
UnknownText_0x1c445a::
	text "There is less than"
	line "1 min. left today!"

	para "Please try again"
	line "tomorrow."
	done

SECTION "_UnknownText_0x1c449c", ROMX
UnknownText_0x1c449c::
	text "Try again using"
	line "the same settings?"
	done

SECTION "_UnknownText_0x1c44c0", ROMX
UnknownText_0x1c44c0::
	text "There is less than"
	line "1 min. left today!"
	done

SECTION "_UnknownText_0x1c44e7", ROMX
UnknownText_0x1c44e7::
	text "No time left for"
	line "linking today."
	done

SECTION "_UnknownText_0x1c4508", ROMX
UnknownText_0x1c4508::
	text "Pick three #MON"
	line "for battle."
	done

SECTION "_UnknownText_0x1c4525", ROMX
UnknownText_0x1c4525::
	text "Today's remaining"
	line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min."
	done

SECTION "_UnknownText_0x1c454b", ROMX
UnknownText_0x1c454b::
	text "Would you like to"
	line "save the game?"
	done

SECTION "_UnknownText_0x1c4590", ROMX
UnknownText_0x1c4590::
	text "<PLAYER> saved"
	line "the game."
	done

SECTION "_UnknownText_0x1c45d9", ROMX
UnknownText_0x1c45d9::
	text "There is another"
	line "save file. Is it"
	cont "OK to overwrite?"
	done

SECTION "_UnknownText_0x1c460d", ROMX
UnknownText_0x1c460d::
	text "The save file is"
	line "corrupted!"
	prompt

SECTION "_UnknownText_0x1c462a", ROMX
UnknownText_0x1c462a::
	text "When you change a"
	line "#MON BOX, data"
	cont "will be saved. OK?"
	done

SECTION "_UnknownText_0x1c465f", ROMX
UnknownText_0x1c465f::
	text "Each time you move"
	line "a #MON, data"
	cont "will be saved. OK?"
	done

SECTION "_UnknownText_0x1c4693", ROMX
UnknownText_0x1c4693::
	text "The window save"
	line "area was exceeded."
	done

SECTION "_UnknownText_0x1c46b7", ROMX
UnknownText_0x1c46b7::
	text "No windows avail-"
	line "able for popping."
	done

SECTION "_UnknownText_0x1c46dc", ROMX
UnknownText_0x1c46dc::
	text "Corrupted event!"
	prompt

SECTION "__ObjectEventText", ROMX
_ObjectEventText::
	text "Object event"
	done

SECTION "_UnknownText_0x1c46fc", ROMX
UnknownText_0x1c46fc::
	text "BG event"
	done

SECTION "_UnknownText_0x1c4706", ROMX
UnknownText_0x1c4706::
	text "Coordinates event"
	done

SECTION "_UnknownText_0x1c4719", ROMX
UnknownText_0x1c4719::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

SECTION "_UnknownText_0x1c472c", ROMX
UnknownText_0x1c472c::
	text "<PLAYER> put the"
	line "@"
	text_ram wStringBuffer1
	text " in"
	cont "the @"
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "_UnknownText_0x1c474b", ROMX
UnknownText_0x1c474b::
	text "The @"
	text_ram wStringBuffer3
	text_start
	line "is full…"
	prompt

SECTION "_UnknownText_0x1c475f", ROMX
UnknownText_0x1c475f::
	text "I see all."
	line "I know all…"

	para "Certainly, I know"
	line "of your #MON!"
	done

SECTION "_UnknownText_0x1c4797", ROMX
UnknownText_0x1c4797::
	text "Whaaaat? I can't"
	line "tell a thing!"

	para "How could I not"
	line "know of this?"
	done

SECTION "_UnknownText_0x1c47d4", ROMX
UnknownText_0x1c47d4::
	text "Hm… I see you met"
	line "@"
	text_ram wSeerNickname
	text " here:"
	cont "@"
	text_ram wSeerCaughtLocation
	text "!"
	prompt

SECTION "_UnknownText_0x1c47fa", ROMX
UnknownText_0x1c47fa::
	text "The time was"
	line "@"
	text_ram wSeerTimeOfDay
	text "!"

	para "Its level was @"
	text_ram wSeerCaughtLevelString
	text "!"

	para "Am I good or what?"
	prompt

SECTION "_UnknownText_0x1c4837", ROMX
UnknownText_0x1c4837::
	text "Hm… @"
	text_ram wSeerNickname
	text_start
	line "came from @"
	text_ram wSeerOTName
	text_start
	cont "in a trade?"

	para "@"
	text_ram wSeerCaughtLocation
	text_start
	line "was where @"
	text_ram wSeerOTName
	text_start
	cont "met @"
	text_ram wSeerNickname
	text "!"
	prompt

SECTION "_UnknownText_0x1c487f", ROMX
UnknownText_0x1c487f::
	text "What!? Incredible!"

	para "I don't understand"
	line "how, but it is"

	para "incredible!"
	line "You are special."

	para "I can't tell where"
	line "you met it, but it"
	cont "was at level @"
	text_ram wSeerCaughtLevelString
	text "."

	para "Am I good or what?"
	prompt

SECTION "_UnknownText_0x1c491d", ROMX
UnknownText_0x1c491d::
	text "Hey!"

	para "That's an EGG!"

	para "You can't say that"
	line "you've met it yet…"
	done

SECTION "_UnknownText_0x1c4955", ROMX
UnknownText_0x1c4955::
	text "Fufufu! I saw that"
	line "you'd do nothing!"
	done

SECTION "_UnknownText_0x1c497a", ROMX
UnknownText_0x1c497a::
	text "Incidentally…"

	para "It would be wise"
	line "to raise your"

	para "#MON with a"
	line "little more care."
	done

SECTION "_UnknownText_0x1c49c6", ROMX
UnknownText_0x1c49c6::
	text "Incidentally…"

	para "It seems to have"
	line "grown a little."

	para "@"
	text_ram wSeerNickname
	text " seems"
	line "to be becoming"
	cont "more confident."
	done

SECTION "_UnknownText_0x1c4a21", ROMX
UnknownText_0x1c4a21::
	text "Incidentally…"

	para "@"
	text_ram wSeerNickname
	text " has"
	line "grown. It's gained"
	cont "much strength."
	done

SECTION "_UnknownText_0x1c4a5b", ROMX
UnknownText_0x1c4a5b::
	text "Incidentally…"

	para "It certainly has"
	line "grown mighty!"

	para "This @"
	text_ram wSeerNickname
	text_start
	line "must have come"

	para "through numerous"
	line "#MON battles."

	para "It looks brimming"
	line "with confidence."
	done

SECTION "_UnknownText_0x1c4ae5", ROMX
UnknownText_0x1c4ae5::
	text "Incidentally…"

	para "I'm impressed by"
	line "your dedication."

	para "It's been a long"
	line "time since I've"

	para "seen a #MON as"
	line "mighty as this"
	cont "@"
	text_ram wSeerNickname
	text "."

	para "I'm sure that"
	line "seeing @"
	text_ram wSeerNickname
	text_start

	para "in battle would"
	line "excite anyone."
	done

SECTION "_UnknownText_0x1c4b92", ROMX
UnknownText_0x1c4b92::
	text "Congratulations!"
	line "Your @"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c4baf", ROMX
UnknownText_0x1c4baf::
	text_start

	para "evolved into"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

SECTION "_UnknownText_0x1c4bc5", ROMX
UnknownText_0x1c4bc5::
	text "Huh? @"
	text_ram wStringBuffer2
	text_start
	line "stopped evolving!"
	prompt

SECTION "_UnknownText_0x1c4be3", ROMX
UnknownText_0x1c4be3::
	text "What? @"
	text_ram wStringBuffer2
	text_start
	line "is evolving!"
	done

SECTION "_UnknownText_0x1c4bfd", ROMX
UnknownText_0x1c4bfd::
	text "How many?"
	done

SECTION "_UnknownText_0x1c4c08", ROMX
UnknownText_0x1c4c08::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(S)"
	line "will be ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

SECTION "__Text_Mart_AlreadyHaveTM", ROMX
_Text_Mart_AlreadyHaveTM::
	text "Looks like you"
	line "already have this"
	cont "TM!"
	done

SECTION "__Text_PagodaSellers_Intro", ROMX
_Text_PagodaSellers_Intro::
	text "Welcome,"
	line "traveller."
	para "We have items and"
	line "curios that are"
	para "seldom found any-"
	line "where else."
	done

SECTION "__Text_PagodaSellers_HereYouGo", ROMX
_Text_PagodaSellers_HereYouGo::
	text "It is yours."
	line "Thank you."
	done

SECTION "__Text_PagodaSellers_BagFull", ROMX
_Text_PagodaSellers_BagFull::
	text "I'm sorry, but it"
	line "looks like your"
	cont "PACK is full."
	done

SECTION "__Text_PagodaSellers_ComeAgain", ROMX
_Text_PagodaSellers_ComeAgain::
	text "We hope you visit"
	line "again soon."
	done

SECTION "_UnknownText_0x1c4c28", ROMX
UnknownText_0x1c4c28::
	text "Hello, dear."

	para "I sell inexpensive"
	line "herbal medicine."

	para "They're good, but"
	line "a trifle bitter."

	para "Your #MON may"
	line "not like them."

	para "Hehehehe…"
	done

SECTION "_UnknownText_0x1c4ca3", ROMX
UnknownText_0x1c4ca3::
	text "How many?"
	done

SECTION "_UnknownText_0x1c4cae", ROMX
UnknownText_0x1c4cae::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(S)"
	line "will be ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

SECTION "_UnknownText_0x1c4cce", ROMX
UnknownText_0x1c4cce::
	text "Thank you, dear."
	line "Hehehehe…"
	done

SECTION "_UnknownText_0x1c4cea", ROMX
UnknownText_0x1c4cea::
	text "Oh? Your PACK is"
	line "full, dear."
	done

SECTION "_UnknownText_0x1c4d08", ROMX
UnknownText_0x1c4d08::
	text "Hehehe… You don't"
	line "have the money."
	done

SECTION "_UnknownText_0x1c4d2a", ROMX
UnknownText_0x1c4d2a::
	text "Come again, dear."
	line "Hehehehe…"
	done

SECTION "_UnknownText_0x1c4d47", ROMX
UnknownText_0x1c4d47::
	text "Hiya! Care to see"
	line "some bargains?"

	para "I sell rare items"
	line "that nobody else"

	para "carries--but only"
	line "one of each item."
	done

SECTION "_UnknownText_0x1c4db0", ROMX
UnknownText_0x1c4db0::
	text_ram wStringBuffer2
	text " costs"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text ". Want it?"
	done

SECTION "_UnknownText_0x1c4dcd", ROMX
UnknownText_0x1c4dcd::
	text "Thanks."
	done

SECTION "_UnknownText_0x1c4dd6", ROMX
UnknownText_0x1c4dd6::
	text "Uh-oh, your PACK"
	line "is chock-full."
	done

SECTION "_UnknownText_0x1c4df7", ROMX
UnknownText_0x1c4df7::
	text "You bought that"
	line "already. I'm all"
	cont "sold out of it."
	done

SECTION "_UnknownText_0x1c4e28", ROMX
UnknownText_0x1c4e28::
	text "Uh-oh, you're"
	line "short on funds."
	done

SECTION "_UnknownText_0x1c4e46", ROMX
UnknownText_0x1c4e46::
	text "Come by again"
	line "sometime."
	done

SECTION "_UnknownText_0x1c4e5f", ROMX
UnknownText_0x1c4e5f::
	text "What's up? Need"
	line "some medicine?"
	done

SECTION "_UnknownText_0x1c4e7e", ROMX
UnknownText_0x1c4e7e::
	text "How many?"
	done

SECTION "_UnknownText_0x1c4e89", ROMX
UnknownText_0x1c4e89::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(S)"
	line "will cost ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

SECTION "_UnknownText_0x1c4eab", ROMX
UnknownText_0x1c4eab::
	text "Thanks much!"
	done

SECTION "_UnknownText_0x1c4eb9", ROMX
UnknownText_0x1c4eb9::
	text "You don't have any"
	line "more space."
	done

SECTION "_UnknownText_0x1c4ed8", ROMX
UnknownText_0x1c4ed8::
	text "Huh? That's not"
	line "enough money."
	done

SECTION "_UnknownText_0x1c4ef6", ROMX
UnknownText_0x1c4ef6::
	text "All right."
	line "See you around."
	done

SECTION "_UnknownText_0x1c4f12", ROMX
UnknownText_0x1c4f12::
	text "You don't have"
	line "anything to sell."
	prompt

SECTION "_UnknownText_0x1c4f33", ROMX
UnknownText_0x1c4f33::
	text "How many?"
	done

SECTION "_UnknownText_0x1c4f3e", ROMX
UnknownText_0x1c4f3e::
	text "I can pay you"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."

	para "Is that OK?"
	done

SECTION "_UnknownText_0x1c4f62", ROMX
UnknownText_0x1c4f62::
	text "Welcome! How may I"
	line "help you?"
	done

SECTION "_UnknownText_0x1c4f80", ROMX
UnknownText_0x1c4f80::
	text "Here you are."
	line "Thank you!"
	done

SECTION "_UnknownText_0x1c4f9a", ROMX
UnknownText_0x1c4f9a::
	text "You don't have"
	line "enough money."
	done

SECTION "_UnknownText_0x1c4fb7", ROMX
UnknownText_0x1c4fb7::
	text "You can't carry"
	line "any more items."
	done

SECTION "_UnknownText_0x1c4fd7", ROMX
UnknownText_0x1c4fd7::
	text "Sorry, I can't buy"
	line "that from you."
	prompt

SECTION "_UnknownText_0x1c4ff9", ROMX
UnknownText_0x1c4ff9::
	text "Please come again!"
	done

SECTION "_UnknownText_0x1c500d", ROMX
UnknownText_0x1c500d::
	text "Can I do anything"
	line "else for you?"
	done

SECTION "_UnknownText_0x1c502e", ROMX
UnknownText_0x1c502e::
	text "Got ¥@"
	text_decimal hMoneyTemp, 3, 6
	text " for"
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	done

SECTION "_UnknownText_0x1c5049", ROMX
UnknownText_0x1c5049::
	text "Bet how many"
	line "coins?"
	done

SECTION "_UnknownText_0x1c505e", ROMX
UnknownText_0x1c505e::
	text "Start!"
	done

SECTION "_UnknownText_0x1c5066", ROMX
UnknownText_0x1c5066::
	text "Not enough"
	line "coins."
	prompt

SECTION "_UnknownText_0x1c5079", ROMX
UnknownText_0x1c5079::
	text "Darn… Ran out of"
	line "coins…"
	done

SECTION "_UnknownText_0x1c5092", ROMX
UnknownText_0x1c5092::
	text "Play again?"
	done

SECTION "_UnknownText_0x1c509f", ROMX
UnknownText_0x1c509f::
	text "lined up!"
	line "Won @"
	text_ram wStringBuffer2
	text " coins!"
	done

SECTION "_UnknownText_0x1c50bb", ROMX
UnknownText_0x1c50bb::
	text "Darn!"
	done

SECTION "__MobileStadiumEntryText", ROMX
_MobileStadiumEntryText::
	text "Data for use in"
	line "the MOBILE STADIUM"

	para "of the N64 #MON"
	line "STADIUM 2 can be"
	cont "read here."

	para "Read the data?"
	done

SECTION "__MobileStadiumSuccessText", ROMX
_MobileStadiumSuccessText::
	text "Data transfer is"
	line "complete."

	para "We hope you enjoy"
	line "MOBILE STADIUM"

	para "battles in the N64"
	line "#MON STADIUM 2."

	para ""
	done

SECTION "_UnknownText_0x1c5182", ROMX
UnknownText_0x1c5182::
	text "Clock time unknown"
	done

SECTION "_UnknownText_0x1c5196", ROMX
UnknownText_0x1c5196::
	text "Delete the saved"
	line "LOG-IN PASSWORD?"
	done

SECTION "_UnknownText_0x1c51b9", ROMX
UnknownText_0x1c51b9::
	text "Deleted the LOG-IN"
	line "PASSWORD."
	done

SECTION "_UnknownText_0x1c51d7", ROMX
UnknownText_0x1c51d7::
	text "Pick three #MON"
	line "for battle."
	prompt

SECTION "_UnknownText_0x1c51f4", ROMX
UnknownText_0x1c51f4::
	text_ram wMobileParticipant1Nickname
	text ","
	line "@"
	text_ram wMobileParticipant2Nickname
	text " and"
	cont "@"
	text_ram wMobileParticipant3Nickname
	text "."

	para "Use these three?"
	done

SECTION "_UnknownText_0x1c521c", ROMX
UnknownText_0x1c521c::
	text "Only three #MON"
	line "may enter."
	prompt

SECTION "_UnknownText_0x1c5238", ROMX
UnknownText_0x1c5238::
	text "The CARD FOLDER"
	line "stores your and"

	para "your friends'"
	line "CARDS."

	para "A CARD contains"
	line "information like"

	para "the person's name,"
	line "phone number and"
	cont "profile."

	para ""
	done

SECTION "_UnknownText_0x1c52bc", ROMX
UnknownText_0x1c52bc::
	text "This is your CARD."

	para "Once you've"
	line "entered your phone"

	para "number, you can"
	line "trade CARDS with"
	cont "your friends."

	para ""
	done

SECTION "_UnknownText_0x1c531e", ROMX
UnknownText_0x1c531e::
	text "If you have your"
	line "friend's CARD, you"

	para "can use it to make"
	line "a call from a"

	para "mobile phone on"
	line "the 2nd floor of a"
	cont "#MON CENTER."

	para ""
	done

SECTION "_UnknownText_0x1c5394", ROMX
UnknownText_0x1c5394::
	text "To safely store"
	line "your collection of"

	para "CARDS, you must"
	line "set a PASSCODE for"
	cont "your CARD FOLDER."

	para ""
	done

SECTION "_UnknownText_0x1c53ee", ROMX
UnknownText_0x1c53ee::
	text "If the CARD FOLDER"
	line "is deleted, all"

	para "its CARDS and the"
	line "PASSCODE will also"
	cont "be deleted."

	para "Beware--a deleted"
	line "CARD FOLDER can't"
	cont "be restored."

	para "Want to delete"
	line "your CARD FOLDER?"
	done

SECTION "_UnknownText_0x1c5494", ROMX
UnknownText_0x1c5494::
	text "Are you sure you"
	line "want to delete it?"
	done

SECTION "_UnknownText_0x1c54b9", ROMX
UnknownText_0x1c54b9::
	text "The CARD FOLDER"
	line "has been deleted."

	para ""
	done

SECTION "_UnknownText_0x1c54dd", ROMX
UnknownText_0x1c54dd::
	text "There is an older"
	line "CARD FOLDER from a"
	cont "previous journey."

	para "Do you want to"
	line "open it?"
	done

SECTION "_UnknownText_0x1c552d", ROMX
UnknownText_0x1c552d::
	text "Delete the old"
	line "CARD FOLDER?"
	done

SECTION "_UnknownText_0x1c554a", ROMX
UnknownText_0x1c554a::
	text "Finish registering"
	line "CARDS?"
	done

SECTION "_UnknownText_0x1c5565", ROMX
UnknownText_0x1c5565::
	text "Huh? Sorry, wrong"
	line "number!"
	done

SECTION "_UnknownText_0x1c5580", ROMX
UnknownText_0x1c5580::
	text "Click!"
	done

SECTION "_UnknownText_0x1c5588", ROMX
UnknownText_0x1c5588::
	text "<……>"
	done

SECTION "_UnknownText_0x1c558b", ROMX
UnknownText_0x1c558b::
	text "That number is out"
	line "of the area."
	done

SECTION "_UnknownText_0x1c55ac", ROMX
UnknownText_0x1c55ac::
	text "Just go talk to"
	line "that person!"
	done

SECTION "_UnknownText_0x1c55ca", ROMX
UnknownText_0x1c55ca::
	text "Thank you!"
	done

SECTION "_UnknownText_0x1c55d6", ROMX
UnknownText_0x1c55d6::
	text "  :"
	done

SECTION "_UnknownText_0x1c55db", ROMX
UnknownText_0x1c55db::
	text "Select CONTINUE &"
	line "reset settings."
	prompt

SECTION "_UnknownText_0x1c561c", ROMX
UnknownText_0x1c561c::
	text "Reset the clock?"
	done

SECTION "_UnknownText_0x1c564a", ROMX
UnknownText_0x1c564a::
	text "Clear all save"
	line "data?"
	done

SECTION "_UnknownText_0x1c5660", ROMX
UnknownText_0x1c5660::
	text_ram wMonOrItemNameBuffer
	text " learned"
	line "@"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_waitbutton
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c5678", ROMX
UnknownText_0x1c5678::
	text "Which move should"
	next "be forgotten?"
	done

SECTION "_UnknownText_0x1c5699", ROMX
UnknownText_0x1c5699::
	text "Stop learning"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_UnknownText_0x1c56af", ROMX
UnknownText_0x1c56af::
	text_ram wMonOrItemNameBuffer
	text_start
	line "did not learn"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c56c9", ROMX
UnknownText_0x1c56c9::
	text_ram wMonOrItemNameBuffer
	text " is"
	line "trying to learn"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "But @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "can't learn more"
	cont "than four moves."

	para "Delete an older"
	line "move to make room"
	cont "for @"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_UnknownText_0x1c5740", ROMX
UnknownText_0x1c5740::
	text "1, 2 and…@"
	text_pause
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c574e", ROMX
UnknownText_0x1c574e::
	text " Poof!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text " forgot"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "And…"
	prompt

SECTION "_UnknownText_0x1c5772", ROMX
UnknownText_0x1c5772::
	text "HM moves can't be"
	line "forgotten now."
	prompt

SECTION "_UnknownText_0x1c5793", ROMX
UnknownText_0x1c5793::
	text "Play with three"
	line "coins?"
	done

SECTION "_UnknownText_0x1c57ab", ROMX
UnknownText_0x1c57ab::
	text "Not enough coins…"
	prompt

SECTION "_UnknownText_0x1c57be", ROMX
UnknownText_0x1c57be::
	text "Choose a card."
	done

SECTION "_UnknownText_0x1c57ce", ROMX
UnknownText_0x1c57ce::
	text "Place your bet."
	done

SECTION "_UnknownText_0x1c57df", ROMX
UnknownText_0x1c57df::
	text "Want to play"
	line "again?"
	done

SECTION "_UnknownText_0x1c57f4", ROMX
UnknownText_0x1c57f4::
	text "The cards have"
	line "been shuffled."
	prompt

SECTION "_UnknownText_0x1c5813", ROMX
UnknownText_0x1c5813::
	text "Yeah!"
	done

SECTION "_UnknownText_0x1c581a", ROMX
UnknownText_0x1c581a::
	text "Darn…"
	done

SECTION "_UnknownText_0x1c5821", ROMX
UnknownText_0x1c5821::
	text_today
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c5824", ROMX
UnknownText_0x1c5824::
	text "<……>"
	done

SECTION "_UnknownText_0x1c5827", ROMX
UnknownText_0x1c5827::
	text "You're out of the"
	line "service area."
	prompt

SECTION "_UnknownText_0x1c5847", ROMX
UnknownText_0x1c5847::
	text "Whom do you want"
	line "to call?"
	done

SECTION "_UnknownText_0x1c5862", ROMX
UnknownText_0x1c5862::
	text "Press any button"
	line "to exit."
	done

SECTION "_UnknownText_0x1c587d", ROMX
UnknownText_0x1c587d::
	text "Delete this stored"
	line "phone number?"
	done

SECTION "_UnknownText_0x1c589f", ROMX
UnknownText_0x1c589f::
	text "Which prize would"
	line "you like?"
	done

SECTION "_UnknownText_0x1c58bc", ROMX
UnknownText_0x1c58bc::
	text_ram wStringBuffer1
	text "?"
	line "Is that right?"
	done

SECTION "_UnknownText_0x1c58d1", ROMX
UnknownText_0x1c58d1::
	text "Here you go!"

	para ""
	done

SECTION "_UnknownText_0x1c58e0", ROMX
UnknownText_0x1c58e0::
	text "You don't have"
	line "enough points."

	para ""
	done

SECTION "_UnknownText_0x1c58ff", ROMX
UnknownText_0x1c58ff::
	text "You have no room"
	line "for it."

	para ""
	done

SECTION "_UnknownText_0x1c591a", ROMX
UnknownText_0x1c591a::
	text "Oh. Please come"
	line "back again!"
	done

SECTION "_UnknownText_0x1c5937", ROMX
UnknownText_0x1c5937::
	text "Excuse me!"

	para ""
	done

SECTION "_Text_ExcuseMeYoureNotReady", ROMX
Text_ExcuseMeYoureNotReady::
	text "Excuse me."
	line "You're not ready."

	para ""
	done

SECTION "_UnknownText_0x1c5962", ROMX
UnknownText_0x1c5962::
	text "Please return when"
	line "you're ready."
	done

SECTION "__NeedAtLeastThreeMonText", ROMX
_NeedAtLeastThreeMonText::
	text "You need at least"
	line "three #MON."

	para ""
	done

SECTION "__EggDoesNotQualifyText", ROMX
_EggDoesNotQualifyText::
	text "Sorry, an EGG"
	line "doesn't qualify."

	para ""
	done

SECTION "__OnlyThreeMonMayBeEnteredText", ROMX
_OnlyThreeMonMayBeEnteredText::
	text "Only three #MON"
	line "may be entered."

	para ""
	done

SECTION "__TheMonMustAllBeDifferentKindsText", ROMX
_TheMonMustAllBeDifferentKindsText::
	text "The @"
	text_ram wStringBuffer2
	text " #MON"
	line "must all be"
	cont "different kinds."

	para ""
	done

SECTION "__TheMonMustNotHoldTheSameItemsText", ROMX
_TheMonMustNotHoldTheSameItemsText::
	text "The @"
	text_ram wStringBuffer2
	text " #MON"
	line "must not hold the"
	cont "same items."

	para ""
	done

SECTION "__YouCantTakeAnEggText", ROMX
_YouCantTakeAnEggText::
	text "You can't take an"
	line "EGG!"

	para ""
	done

SECTION "_UnknownText_0x1c5a5a", ROMX
UnknownText_0x1c5a5a::
	text "It dodged the"
	line "thrown BALL!"

	para "This #MON"
	line "can't be caught!"
	prompt

SECTION "_UnknownText_0x1c5a90", ROMX
UnknownText_0x1c5a90::
	text "You missed the"
	line "#MON!"
	prompt

SECTION "_UnknownText_0x1c5aa6", ROMX
UnknownText_0x1c5aa6::
	text "Oh no! The #MON"
	line "broke free!"
	prompt

SECTION "_UnknownText_0x1c5ac3", ROMX
UnknownText_0x1c5ac3::
	text "Aww! It appeared"
	line "to be caught!"
	prompt

SECTION "_UnknownText_0x1c5ae3", ROMX
UnknownText_0x1c5ae3::
	text "Aargh!"
	line "Almost had it!"
	prompt

SECTION "_UnknownText_0x1c5afa", ROMX
UnknownText_0x1c5afa::
	text "Shoot! It was so"
	line "close too!"
	prompt

SECTION "_UnknownText_0x1c5b17", ROMX
UnknownText_0x1c5b17::
	text "Gotcha! @"
	text_ram wEnemyMonNick
	text_start
	line "was caught!@"
	sound_caught_mon
	text_end

	text_end ; unused

SECTION "_Text_Waitbutton_2", ROMX
Text_Waitbutton_2::
	text_waitbutton
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c5b38", ROMX
UnknownText_0x1c5b38::
	text_ram wMonOrItemNameBuffer
	text " was"
	line "sent to BILL's PC."
	prompt

SECTION "_UnknownText_0x1c5b53", ROMX
UnknownText_0x1c5b53::
	text_ram wEnemyMonNick
	text "'s data"
	line "was newly added to"
	cont "the #DEX.@"
	sound_slot_machine_start
	text_waitbutton
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c5b7f", ROMX
UnknownText_0x1c5b7f::
	text "Give a nickname to"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_UnknownText_0x1c5b9a", ROMX
UnknownText_0x1c5b9a::
	text_ram wStringBuffer1
	text "'s"
	line "@"
	text_ram wStringBuffer2
	text " rose."
	prompt

SECTION "_UnknownText_0x1c5bac", ROMX
UnknownText_0x1c5bac::
	text "That can't be used"
	line "on this #MON."
	prompt

SECTION "_Text_RepelUsedEarlierIsStillInEffect", ROMX
Text_RepelUsedEarlierIsStillInEffect::
	text "The REPEL used"
	line "earlier is still"
	cont "in effect."
	prompt

SECTION "_UnknownText_0x1c5bf9", ROMX
UnknownText_0x1c5bf9::
	text "Played the #"
	line "FLUTE."

	para "Now, that's a"
	line "catchy tune!"
	prompt

SECTION "_UnknownText_0x1c5c28", ROMX
UnknownText_0x1c5c28::
	text "All sleeping"
	line "#MON woke up."
	prompt

SECTION "_UnknownText_0x1c5c44", ROMX
UnknownText_0x1c5c44::
	text "<PLAYER> played the"
	line "# FLUTE.@"
	text_waitbutton
	text_end

	text_end ; unused

SECTION "_UnknownText_0x1c5c5e", ROMX
UnknownText_0x1c5c5e::
	text "You now have"
	line "@"
	text_decimal wBlueCardBalance, 1, 2
	text " points."
	done

SECTION "_UnknownText_0x1c5c7b", ROMX
UnknownText_0x1c5c7b::
	text "Coins:"
	line "@"
	text_decimal wCoins, 2, 4
	text_end

	text_end ; unused

SECTION "_Text_RaiseThePPOfWhichMove", ROMX
Text_RaiseThePPOfWhichMove::
	text "Raise the PP of"
	line "which move?"
	done

SECTION "_Text_RestoreThePPOfWhichMove", ROMX
Text_RestoreThePPOfWhichMove::
	text "Restore the PP of"
	line "which move?"
	done

SECTION "_Text_PPIsMaxedOut", ROMX
Text_PPIsMaxedOut::
	text_ram wStringBuffer2
	text "'s PP"
	line "is maxed out."
	prompt

SECTION "_Text_PPsIncreased", ROMX
Text_PPsIncreased::
	text_ram wStringBuffer2
	text "'s PP"
	line "increased."
	prompt

SECTION "_UnknownText_0x1c5cf1", ROMX
UnknownText_0x1c5cf1::
	text "PP was restored."
	prompt

SECTION "_UnknownText_0x1c5d03", ROMX
UnknownText_0x1c5d03::
	text "There was a trophy"
	line "inside!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " sent the"
	line "trophy home."
	prompt

SECTION "_UnknownText_0x1c5d3e", ROMX
UnknownText_0x1c5d3e::
	text "It looks bitter…"
	prompt

SECTION "_UnknownText_0x1c5d50", ROMX
UnknownText_0x1c5d50::
	text "That can't be used"
	line "on an EGG."
	prompt

SECTION "_UnknownText_0x1c5d6e", ROMX
UnknownText_0x1c5d6e::
	text "OAK: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	prompt

SECTION "_UnknownText_0x1c5d97", ROMX
UnknownText_0x1c5d97::
	text "That belongs to"
	line "someone else!"
	prompt

SECTION "_UnknownText_0x1c5db6", ROMX
UnknownText_0x1c5db6::
	text "It won't have any"
	line "effect."
	prompt

SECTION "_UnknownText_0x1c5dd0", ROMX
UnknownText_0x1c5dd0::
	text "The trainer"
	line "blocked the BALL!"
	prompt

SECTION "_UnknownText_0x1c5def", ROMX
UnknownText_0x1c5def::
	text "Don't be a thief!"
	prompt

SECTION "_UnknownText_0x1c5e01", ROMX
UnknownText_0x1c5e01::
	text "Cycling isn't"
	line "allowed here."
	prompt

SECTION "_UnknownText_0x1c5e1d", ROMX
UnknownText_0x1c5e1d::
	text "Can't get on your"
	line "@"
	text_ram wStringBuffer1
	text " now."
	prompt

SECTION "_UnknownText_0x1c5e3a", ROMX
UnknownText_0x1c5e3a::
	text "The #MON BOX"
	line "is full. That"
	cont "can't be used now."
	prompt

SECTION "_UnknownText_0x1c5e68", ROMX
UnknownText_0x1c5e68::
	text "<PLAYER> used the@"
	text_low
	text_ram wStringBuffer2
	text "."
	done

SECTION "_UnknownText_0x1c5e7b", ROMX
UnknownText_0x1c5e7b::
	text "<PLAYER> got on the@"
	text_low
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c5e90", ROMX
UnknownText_0x1c5e90::
	text "<PLAYER> got off@"
	text_low
	text "the @"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c5ea8", ROMX
UnknownText_0x1c5ea8::
	text_ram wStringBuffer1
	text " knows"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_UnknownText_0x1c5eba", ROMX
UnknownText_0x1c5eba::
	text "That #MON knows"
	line "only one move."
	done

SECTION "_UnknownText_0x1c5eda", ROMX
UnknownText_0x1c5eda::
	text "Oh, make it forget"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_UnknownText_0x1c5ef5", ROMX
UnknownText_0x1c5ef5::
	text "Done! Your #MON"
	line "forgot the move."
	done

SECTION "_UnknownText_0x1c5f17", ROMX
UnknownText_0x1c5f17::
	text "An EGG doesn't"
	line "know any moves!"
	done

SECTION "_UnknownText_0x1c5f36", ROMX
UnknownText_0x1c5f36::
	text "No? Come visit me"
	line "again."
	done

SECTION "_UnknownText_0x1c5f50", ROMX
UnknownText_0x1c5f50::
	text "Which move should"
	line "it forget, then?"
	prompt

SECTION "_UnknownText_0x1c5f74", ROMX
UnknownText_0x1c5f74::
	text "Um… Oh, yes, I'm"
	line "the MOVE DELETER."

	para "I can make #MON"
	line "forget moves."

	para "Shall I make a"
	line "#MON forget?"
	done

SECTION "_UnknownText_0x1c5fd1", ROMX
UnknownText_0x1c5fd1::
	text "Which #MON?"
	prompt

SECTION "_Text_DSTIsThatOK", ROMX
Text_DSTIsThatOK::
	text " DST,"
	line "is that OK?"
	done

SECTION "_UnknownText_0x1c5ff1", ROMX
UnknownText_0x1c5ff1::
	text ","
	line "is that OK?"
	done

SECTION "_UnknownText_0x1c6000", ROMX
UnknownText_0x1c6000::
	text "Do you want to"
	line "switch to DAYLIGHT"
	cont "SAVING TIME?"
	done

SECTION "_UnknownText_0x1c6030", ROMX
UnknownText_0x1c6030::
	text "I set the clock"
	line "forward by one"
	cont "hour."
	prompt

SECTION "_UnknownText_0x1c6056", ROMX
UnknownText_0x1c6056::
	text "Is DAYLIGHT SAVING"
	line "TIME over?"
	done

SECTION "_UnknownText_0x1c6075", ROMX
UnknownText_0x1c6075::
	text "I put the clock"
	line "back one hour."
	prompt

SECTION "_UnknownText_0x1c6095", ROMX
UnknownText_0x1c6095::
	text "Do you want to"
	line "adjust your clock"

	para "for DAYLIGHT"
	line "SAVING TIME?"
	done

SECTION "_UnknownText_0x1c60d1", ROMX
UnknownText_0x1c60d1::
	text "I lost the in-"
	line "struction booklet"
	cont "for the #GEAR."

	para "Come back again in"
	line "a while."
	prompt
