	object_const_def ; object_event constants
	const DREADWOODS_SCHOOLBOY
	const DREADWOODS_MANCHILD
	const DREADWOODS_OFFICER1
	const DREADWOODS_SAILOR
	const DREADWOODS_BEAUTY
	const DREADWOODS_OFFICER2

DreadWoods_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSchoolboyAndy:
	trainer SCHOOLBOY, SCHOOLBOY_ANDY, EVENT_BEAT_SCHOOLBOY_ANDY, SchoolboyAndySeenText, SchoolboyAndyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext SchoolboyAndyAfterBattleText
	waitbutton
	closetext
	end

TrainerManchildMiguel:
	trainer MANCHILD, MIGUEL, EVENT_BEAT_MANCHILD_MIGUEL, ManchildMiguelSeenText, ManchildMiguelBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext ManchildMiguelAfterBattleText
	waitbutton
	closetext
	end

SchoolboyAndySeenText:
	text "This forest<...>I don't"
	line "know why, but it"

	para "sends shivers down"
	line "my spine<...>"
	done

SchoolboyAndyBeatenText:
	text "I<...>I think you're"
	line "the reason why I'm"
	cont "afraid of this"

	para "place."
	done

SchoolboyAndyAfterBattleText:
	text "Sigh<...>"

	para "Maybe I'm delusion-"
	line "al, and there's"

	para "nothing wrong with"
	line "these woods. Haha<...>"
	done

ManchildMiguelSeenText:
	text "I'm scared, but my"
	line "my mom told me to"

	para "stop calling her"
	line "and grow up<...>"

	para "I haven't moved"
	line "from this spot"
	cont "since."

	para "Could you hold"
	line "my hand?"
	done

ManchildMiguelBeatenText:
	text "Oh no, my only"
	line "friends!"
	done

ManchildMiguelAfterBattleText:
	text "I went into the"
	line "woods hoping to"

	para "end up in one of"
	line "the fantasy worlds"

	para "I always dream of,"
	line "only to experience"

	para "horror and fright"
	line "beyond even my"

	para "late night horror"
	line "marathons<...>"
	done

DreadWoods_SleepyCopScript:
	jumptextfaceplayer .Text

.Text:
	text "Zzz<...> huh?"
	para "Y-yeah, I'm keeping"
	line "a lookout for"
	cont "ROCKETS<...>"
	para "Zzz<...>"
	done

DreadWoods_SkateboardAd:
	jumptext .Txt
.Txt:
	text "TRAINER TIPS"
	para "Some ledges can be"
	line "climbed using the"
	cont "SKATEBOARD!"
	para "Right now, you can"
	line "get one at"
	cont "GOLDENROD CITY."
	done

DreadWoods_NightMonSign:
	jumptext .Txt
.Txt:
	text "Due to this area's"
	line "high tree density,"
	para "many #MON found"
	line "only at night can"
	para "be found here at"
	line "any time of the"
	cont "day."
	done

DreadWoods_BewareSign:
	jumptext .Txt
.Txt:
	text "BEWARE OF MANKEY"
	line "AND AGGROSWINE"
	para "These #MON"
	line "often team up to"
	para "deal with anyone"
	line "bothering them."
	done

DreadWoods_WarnGuy:
	jumptextfaceplayer .Txt
.Txt:
	text "You really don't"
	line "wanna mess with"
	cont "these two #MON."
	para "I've heard of some-"
	line "one recently who"
	para "got pelted by"
	line "MANKEY droppings,"
	para "and then getting"
	line "mauled by a nearby"
	cont "AGGROSWINE."
	para "Needless to say,"
	line "he's avoided this"
	cont "place ever since."
	done

DreadWoods_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 29,  2, ROUTE_32_NORTH, 1
	warp_event 29,  3, ROUTE_32_NORTH, 2
	warp_event 29, 36, ROUTE_32_SOUTH, 1
	warp_event 29, 37, ROUTE_32_SOUTH, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 15, 27, BGEVENT_READ, DreadWoods_SkateboardAd
	bg_event 15, 15, BGEVENT_READ, DreadWoods_NightMonSign
	bg_event  5, 29, BGEVENT_READ, DreadWoods_BewareSign

	db 4 ; object events
	object_event 22, 7, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyAndy, -1
	object_event 21, 15, SPRITE_MANCHILD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 2, TrainerManchildMiguel, -1
	object_event 14, 27, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, DreadWoods_SleepyCopScript, EVENT_BEAT_WHITNEY
	object_event  6, 30, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, -1, DreadWoods_WarnGuy, -1
