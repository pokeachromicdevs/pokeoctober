	object_const_def ; object_event constants

AzaleaTown_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_AZALEATOWN_NOTHING
	scene_script .DummyScene1 ; SCENE_AZALEATOWN_RIVAL_BATTLE
	scene_script .DummyScene2 ; SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.Flypoint:
	setflag ENGINE_FLYPOINT_AZALEA
	return

AzaleaTownSign:
	jumptext AzaleaTownSignText

AzaleaGymSign:
	jumptext AzaleaGymSignText

AzaleaTownPokecenterSign:
	jumpstd pokecentersign

AzaleaTownMartSign:
	jumpstd martsign

AzaleaTownHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_AZALEA_TOWN_HIDDEN_FULL_HEAL

AzaleaTownSignText:
	text "AZALEA TOWN"
	line "Where People and"

	para "#MON Live in"
	line "Happy Harmony"
	done

AzaleaGymSignText:
	text "AZALEA TOWN"
	line "#MON GYM"
	;cont "LEADER: BUGSY"

	;para "The Walking"
	;line "Bug #MON"
	;cont "Encyclopedia"
	done

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11,  5, AZALEA_POKECENTER_1F, 1
	warp_event 15,  5, AZALEA_MART, 2

	db 0 ; coord events

	db 5 ; bg events
	bg_event 18,  6, BGEVENT_READ, AzaleaTownSign
	bg_event  7,  5, BGEVENT_READ, AzaleaGymSign
	bg_event 12,  5, BGEVENT_READ, AzaleaTownPokecenterSign
	bg_event 16,  5, BGEVENT_READ, AzaleaTownMartSign
	bg_event 10, 14, BGEVENT_ITEM, AzaleaTownHiddenFullHeal

	db 0 ; object events
