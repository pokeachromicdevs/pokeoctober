	object_const_def ; object_event constants
	;const ROUTE32_FISHER1
	;const ROUTE32_FISHER2
	;const ROUTE32_FISHER3
	;const ROUTE32_YOUNGSTER1
	;const ROUTE32_YOUNGSTER2
	;const ROUTE32_YOUNGSTER3
	;const ROUTE32_LASS1
	;const ROUTE32_COOLTRAINER_M
	;const ROUTE32_YOUNGSTER4
	;const ROUTE32_FISHER4
	;const ROUTE32_POKE_BALL1
	;const ROUTE32_FISHER5
	;const ROUTE32_FRIEDA
	;const ROUTE32_POKE_BALL2

Route32_MapScripts:
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

Route32_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events
	; filler

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

