StanleyPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, INSTRUCTOR, STANLEY1
	checkflag ENGINE_STANLEY
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_STANLEY_TUESDAY_NIGHT
	iftrue .NotTuesday
	checkflag ENGINE_STANLEY_HAS_ITEM
	iftrue .HasItem
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .NotTuesday
	checktime NITE
	iftrue StanleyTuesdayNight

.NotTuesday:
	farscall PhoneScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	farsjump UnknownScript_0xa0938

.ContestToday:
	farsjump PhoneScript_BugCatchingContest

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, ROUTE_31
	farsjump UnknownScript_0xa0a50

.HasItem:
	getlandmarkname STRING_BUFFER_5, ROUTE_31
	farsjump UnknownScript_0xa0ab5

StanleyPhoneCallerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, STANLEY1
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	checkflag ENGINE_STANLEY
	iftrue .next
	checkflag ENGINE_STANLEY_TUESDAY_NIGHT
	iftrue .next
	checkflag ENGINE_STANLEY_HAS_ITEM
	iftrue .next
	farscall PhoneScript_Random2
	ifequal 0, StanleyHasItem2
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse .next
	farscall PhoneScript_Random2
	ifequal 0, StanleyWantsBattle2

.next:
	farscall PhoneScript_Random3
	ifequal 0, StanleyFoundRare
	farsjump Phone_GenericCall_Male

.ContestToday:
	farsjump PhoneScript_BugCatchingContest

StanleyTuesdayNight:
	setflag ENGINE_STANLEY_TUESDAY_NIGHT

StanleyWantsBattle2:
	getlandmarkname STRING_BUFFER_5, ROUTE_31
	setflag ENGINE_STANLEY
	farsjump PhoneScript_WantsToBattle_Male

StanleyFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male

StanleyHasItem2:
	setflag ENGINE_STANLEY_HAS_ITEM
	getlandmarkname STRING_BUFFER_5, ROUTE_31
	clearevent EVENT_STANLEY_HAS_BERRY
	clearevent EVENT_STANLEY_HAS_PSNCUREBERRY
	clearevent EVENT_STANLEY_HAS_PRZCUREBERRY
	clearevent EVENT_STANLEY_HAS_BITTER_BERRY
	random 4
	ifequal 0, .Berry
	ifequal 1, .PsnCureBerry
	ifequal 2, .PrzCureBerry
	ifequal 3, .Bitterberry

.Berry:
	setevent EVENT_STANLEY_HAS_BERRY
	sjump .FoundBerry

.PsnCureBerry:
	setevent EVENT_STANLEY_HAS_PSNCUREBERRY
	sjump .FoundBerry

.PrzCureBerry:
	setevent EVENT_STANLEY_HAS_PRZCUREBERRY
	sjump .FoundBerry

.Bitterberry:
	setevent EVENT_STANLEY_HAS_BITTER_BERRY

.FoundBerry:
	farsjump PhoneScript_FoundItem_Male
