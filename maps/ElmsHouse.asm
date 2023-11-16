	object_const_def ; object_event constants
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd difficultbookshelf

ElmsFood:
	jumptext ElmsHouseFoodText

ElmsPokemonFood:
	jumptext ElmsHousePokemonFoodText

ElmsWifeText:
	text "Hi, <PLAY_G>! My"
	line "husband's always"

	para "so busy--I hope"
	line "he's OK."

	para "When he's caught"
	line "up in his #MON"

	para "research, he even"
	line "forgets to eat."
	done

ElmsSonText:
	text "When I grow up,"
	line "I'm going to help"
	cont "my dad!"

	para "I'm going to be a"
	line "great #MON"
	cont "professor!"
	done

ElmsHouseFoodText:
	text "There's some food"
	line "here. It must be"
	cont "for PROF. ELM."
	done

ElmsHousePokemonFoodText:
	text "There's some food"
	line "here. This must be"
	cont "for #MON."
	done

ElmsHousePCText:
	text "#MON. Where do"
	line "they come from? "

	para "Where are they"
	line "going?"

	para "Why has no one"
	line "ever witnessed a"
	cont "#MON's birth?"

	para "I want to know! I"
	line "will dedicate my"

	para "life to the study"
	line "of #MON!"

	para "…"

	para "It's a part of"
	line "PROF.ELM's re-"
	cont "search papers."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  0,  6, ELMS_LAB,    3

	db 0 ; coord events

	db 7 ; bg events
	bg_event  6,  1, BGEVENT_READ, ElmsHousePC
	bg_event 12,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event 13,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  0,  1, BGEVENT_READ, ElmsFood
	bg_event  2,  1, BGEVENT_READ, ElmsPokemonFood
	bg_event 10,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event 11,  1, BGEVENT_READ, ElmsHouseBookshelf

	db 2 ; object events
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  9,  3, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
