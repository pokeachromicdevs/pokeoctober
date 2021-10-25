	object_const_def ; object_event constants
	const CHERRYGROVEWOODS_YOUNGSTER

CherrygroveWoods_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene0 ; SCENE_CHERRYGROVEWOODS_NOTHING

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

CherrygroveWoods_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
