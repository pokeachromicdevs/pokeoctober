	object_const_def ; object_event constants
	const ROUTE33_ROCKET1
	const ROUTE33_ROCKET2
	const ROUTE33_HYUCK_GUY
	const ROUTE33_KAREN
	const ROUTE33_KURT
	const ROUTE33_BUGSY
	const ROUTE33_ELM

Route33_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route33Sign:
	jumptext .Text

.Text:
	text "ROUTE 33"
	line "ALDER TOWN -"
	cont "AZALEA TOWN"

	para "Thru MT. HIVE"
	done

Route33_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 1 ; bg events
	bg_event 34,  8, BGEVENT_READ, Route33Sign

	db 0 ; object events
