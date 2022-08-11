VioletMuseum_MapScripts:
	db 1 ; scene scripts
	scene_script .Nothing

	db 0 ; callbacks

.Nothing:
	end

; scripts here
VioletMuseum_ReceptionistScript:
	jumptextfaceplayer .Text
.Text:
	text "Enjoy the museum!"
	done

VioletMuseum_AskEntry:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .done

	turnobject PLAYER, LEFT
	opentext
	writetext .Text1
	special PlaceMoneyTopRight
	yesorno
	iffalse .declined
	checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .no_money
	takemoney YOUR_MONEY, 50
	special PlaceMoneyTopRight
	playsound SFX_TRANSACTION
	waitsfx
	writetext .Text2
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
.done
	end

.no_money
	writetext .Text3
	buttonsound
.declined
	writetext .Text4
	waitbutton
	closetext
	applymovement PLAYER, .WalkBack
	end

.WalkBack
	step DOWN
	step_end

.Text1:
	text "Hello! Welcome to"
	line "the VIOLET MUSEUM!"
	para "It's ¥50 for a"
	line "ticket."
	para "Would you like to"
	line "visit?"
	done

.Text2:
	text "Thank you!"
	line "Enjoy the museum!"
	done

.Text3:
	text "Sorry, but you"
	line "don't have enough"
	cont "money."
	done

.Text4:
	text "Come back again"
	line "sometime!"
	done

VioletMuseum_GrandDadGuyScript: ; fleentstones
	jumptextfaceplayer .Text
.Text:
	text "Wow! This stuff's"
	line "ancient, just like"
	cont "my grand dad!"
	done

VioletMuseum_UnownGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "Someone recently"
	line "donated a shard"
	para "with strange sym-"
	line "bols on it."
	para "The symbols look"
	line "like regular old"
	para "letters, but just"
	line "a tiny bit off."
	para "How peculiar<...>"
	done

VioletMuseum_FossilGuyScript:
	jumptextfaceplayer .Text
.Text:
	text "There's been a"
	line "fossil #MON"
	para "just recently dis-"
	line "covered!"
	para "It's a skeleton"
	line "beast that a few"
	para "trainers have"
	line "access to already!"
	para "Hoho! I can't wait"
	line "to see that in"
	cont "action!"
	done

VioletMuseum_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  9, VIOLET_CITY, 12
	warp_event  5,  9, VIOLET_CITY, 12

	db 1 ; coord events
	coord_event  3,  6, 0, VioletMuseum_AskEntry

	db 0 ; bg events

	db 4 ; object events
	object_event  1,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletMuseum_ReceptionistScript, -1
	object_event 12,  9, SPRITE_FLEDGLING, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletMuseum_GrandDadGuyScript, -1
	object_event 16,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletMuseum_FossilGuyScript, -1
	object_event  7,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VioletMuseum_UnownGuyScript, -1
