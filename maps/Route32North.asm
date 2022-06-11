	object_const_def ; object_event constants

Route32North_MapScripts:
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

Route32North_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 12, DREAD_WOODS, 1
	warp_event  2, 13, DREAD_WOODS, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

