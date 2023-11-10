	object_const_def ; object_event constants
	const HILLSGUSTHOUSE_POKEFAN_M

HillsGustHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TMGustGuy:
	faceplayer
	checkevent EVENT_GOT_TM63_GUST
	iftrue .GotGust
	opentext
	writetext GustGuyText
	waitbutton
	verbosegivetmhm GUST_TMNUM
	setevent EVENT_GOT_TM63_GUST
	writetext GustAfterText
	waitbutton
	closetext
	end
	
.GotGust:
	opentext
	writetext GustAfterText
	waitbutton
	closetext
	end
	
GustGuyText:
	text "Well, blow me"
	line "away! You found"
	cont "my house!"
	
	para "Here, take this"
	line "from lonely old"
	cont "me."
	done
	
GustAfterText:
	text "GUST is a reliable"
	line "flying-type move."
	
	para "Try teaching it"
	line "to a #MON that"
	cont "can stir up wind,"
	
	para "like PIDGEY or"
	line "JIGGLYPUFF."
	done

HillsGustHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SILENT_HILLS, 5
	warp_event  3,  7, SILENT_HILLS, 5

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TMGustGuy, -1