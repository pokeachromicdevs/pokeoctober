	object_const_def ; object_event constants
	const ROUTE33EASTGATE_OFFICER
	const ROUTE33EASTGATE_GRUNT

Route33EastGate_MapScripts:
	db 2 ; scene scripts
	scene_script .NoScene ; SCENE_ROUTE33EASTGATE_NOTHING
	scene_script .NoScene ; SCENE_ROUTE33EASTGATE_PAID_TOLL

	db 1 ; callbacks
	callback MAPCALLBACK_SPRITES, .SwitchOfficerGrunt

.NoScene:
	end

.SwitchOfficerGrunt:
	disappear ROUTE33EASTGATE_OFFICER
	disappear ROUTE33EASTGATE_GRUNT
	checkevent EVENT_BEAT_ROUTE33_KAREN
	iftrue .is_officer
; is grunt
	appear    ROUTE33EASTGATE_GRUNT
	return
.is_officer
	appear    ROUTE33EASTGATE_OFFICER
	return

Route33EastGateOfficerScript:
	jumptextfaceplayer .Text

.Text:
	text "Zzz<...>"
	done

Route33EastGateGruntScript:
	checkscene
	iffalse .Continue
	jumptextfaceplayer Route33EastGateRocketTollScript.YouCanGoThruTxt
.Continue:
	faceplayer
	sjump Route33EastGateRocketTollScript.AskPayment
	
Route33EastGateRocketTollScript:
	;turnobject PLAYER, UP
	;turnobject FOLLOWER, UP
	checkevent EVENT_BEAT_ROUTE33_KAREN
	iftrue .SkipToll
.AskPayment:
	opentext
	writetext .RocketAskTxt
	special PlaceMoneyTopRight
	yesorno
	iffalse .DeniedOrOutOfMoney
	checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .DeniedOrOutOfMoney
	takemoney YOUR_MONEY, 50
	special PlaceMoneyTopRight
	playsound SFX_TRANSACTION
	waitsfx
	writetext .YouCanGoThruTxt
	waitbutton
	closetext
.SkipToll:
	setscene SCENE_ROUTE33EASTGATE_PAID_TOLL
	end
.DeniedOrOutOfMoney:
	writetext .DeniedOrOutOfMoneyTxt
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal LEFT, .DoMoveEast
	ifequal RIGHT, .DoMoveWest
	end
.DoMoveEast:
	applymovement PLAYER, .MoveEast
	end
.DoMoveWest:
	applymovement PLAYER, .MoveWest
	end
.MoveEast:
	step RIGHT
	step_end
.MoveWest:
	step LEFT
	step_end

.RocketAskTxt:
	text "Hey! You there!"
	para "You need to pay"
	line "the toll if you"
	cont "want to pass!"
	para "Entry is ¥50!"
	para "Pay the ¥50?"
	done

.YouCanGoThruTxt:
	text "Go right ahead."
	done

.DeniedOrOutOfMoneyTxt:
	text "Well, I'm not going"
	line "to let you through"
	cont "for free."
	para "You'll have to find"
	line "another way."
	done

Route33EastGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, ROUTE_33,   1
	warp_event  0,  5, ROUTE_33,   2
	warp_event  9,  4, ALDER_TOWN, 5
	warp_event  9,  5, ALDER_TOWN, 6

	db 2 ; coord events
	coord_event 5,  4, SCENE_ROUTE33EASTGATE_NOTHING, Route33EastGateRocketTollScript
	coord_event 5,  5, SCENE_ROUTE33EASTGATE_NOTHING, Route33EastGateRocketTollScript

	db 0 ; bg events

	db 2 ; object events 
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route33EastGateOfficerScript, EVENT_OFFICER_IN_R33_GATE
	object_event  5,  2, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route33EastGateGruntScript, EVENT_GRUNT_IN_R33_GATE
