	object_const_def ; object_event constants

Route32South_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	scene_script .DummyScene2 ; SCENE_ROUTE32_NOTHING

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

Route32SouthForceWildMonScript:
; try to force a map reload
	loadwildmon WOOPER, 6
	startbattle
	reloadmapafterbattle
	end

Route32South_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 14, DREAD_WOODS, 3
	warp_event  2, 15, DREAD_WOODS, 4

	db 14 ; coord events
	coord_event 15,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event 14,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event 13,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event 12,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event 11,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event 10,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  9,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  8,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  7,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  6,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  5,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  4,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  3,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript
	coord_event  2,  0, SCENE_DEFAULT, Route32SouthForceWildMonScript

	db 0 ; bg events

	db 0 ; object events

