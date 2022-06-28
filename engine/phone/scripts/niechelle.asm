NiechellePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, LASS, NIECHELLE
	checkflag ENGINE_NIECHELLE
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Female
	checkflag ENGINE_NIECHELLE_SATURDAY_NIGHT
	iftrue .NotSaturday
	readvar VAR_WEEKDAY
	ifnotequal SATURDAY, .NotSaturday
	checktime NITE
	iftrue NiechelleSaturdayNight

.NotSaturday:
	farsjump NiechelleWorkingHardScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, ROUTE_46
	farsjump NiechelleComeBattleScript

NiechellePhoneCallerScript:
	gettrainername STRING_BUFFER_3, LASS, NIECHELLE
	farscall PhoneScript_GreetPhone_Female
	checkflag ENGINE_NIECHELLE
	iftrue .GenericCall
	checkflag ENGINE_NIECHELLE_SATURDAY_NIGHT
	iftrue .GenericCall
	farscall PhoneScript_Random3
	ifequal 0, NiechelleWantsBattle
	ifequal 1, NiechelleWantsBattle

.GenericCall:
	farsjump Phone_GenericCall_Female

NiechelleSaturdayNight:
	setflag ENGINE_NIECHELLE_SATURDAY_NIGHT

NiechelleWantsBattle:
	getlandmarkname STRING_BUFFER_5, ROUTE_46
	setflag ENGINE_NIECHELLE
	farsjump PhoneScript_WantsToBattle_Female
