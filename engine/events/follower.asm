SECTION "Follower Script", ROMX

FollowerScript::
; before we do anything, load the follower's nick
; into wStringBuffer1
	callasm .GetFollowerNickname

; make sure follower is facing player
	faceplayer

; play cry
	callasm .PlayCry

; poisoned script takes priority
	callasm .IsFollowerPoisoned
	iftrue FollowerPoisonedScript

; ...then starter mons
	callasm .GetFollowerSpecies

	ifequal16 CHIKORITA, FollowerChikoritaScript
	ifequal16 PETAMOLE,  FollowerChikoritaScript
	ifequal16 MEGANIUM,  FollowerChikoritaScript

	ifequal16 CYNDAQUIL,  FollowerCyndaquilScript
	ifequal16 QUILAVA,    FollowerCyndaquilScript
	ifequal16 TYPHLOSION, FollowerCyndaquilScript

	ifequal16 TOTODILE,   FollowerTotodileScript
	ifequal16 CROCONAW,   FollowerTotodileScript
	ifequal16 FERALIGATR, FollowerTotodileScript

; ...then fallback to generic script
	sjump FollowerGenericScript

.PlayCry:
	push hl
		call GetFollowingPokemon
		call PlayMonCry
	pop hl
	ret

.GetFollowerNickname:
	ld a, [wWhichPartyFollower]
	and a
	ret z ; just in case!
	dec a
	ld hl, wPartyMonNicknames	
	jp GetNick

.GetFollowerSpecies:
	push hl
		call GetFollowingPokemon
		ld a, l
		ld [wScriptWordVar], a
		ld a, h
		ld [wScriptWordVar + 1], a
	pop hl
	ret

.IsFollowerPoisoned:
	ld a, [wCurPartyMon]
	push af
		ld a, [wWhichPartyFollower] ; assume this is always > 0
		dec a
		ld [wCurPartyMon], a
		ld a, MON_STATUS
		call GetPartyParamLocation
		ld a, [hl]
		and 1 << PSN
		jr z, .not_poisoned
		ld a, 1 ; poisoned
		jr .done_checking
.not_poisoned
		xor a ; not poisoned
		jr .done_checking
.done_checking
		ld [wScriptVar], a
	pop af
	ld [wCurPartyMon], a
	ret


FollowerChikoritaScript:
	random 2
	iftrue FollowerGenericScript
	random 3
	ifequal 0, FollowerChikoritaScriptChoice1
	ifequal 1, FollowerChikoritaScriptChoice2
	ifequal 2, FollowerChikoritaScriptChoice3
	sjump FollowerGenericScript ; fallback

FollowerChikoritaScriptChoice1:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text "'s leaf"
	line "is emitting a"
	cont "lovely scent."
	done

FollowerChikoritaScriptChoice2:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " is"
	line "waving its leaf"
	cont "around happily!"
	done

FollowerChikoritaScriptChoice3:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " is"
	line "using its vines to"
	cont "feel around its"
	cont "surroundings."
	done

FollowerCyndaquilScript:
	random 2
	iftrue FollowerGenericScript
	readmem wEnvironment
	ifequal INDOOR, .indoors
; outdoors or caves or routes etc.
	random 3
	ifequal 0, FollowerCyndaquilScriptChoice1
	ifequal 1, FollowerCyndaquilScriptChoice2
	ifequal 2, FollowerCyndaquilScriptChoiceBerry
	sjump FollowerGenericScript ; fallback

.indoors
	random 2
	ifequal 0, FollowerCyndaquilScriptChoice1
	ifequal 1, FollowerCyndaquilScriptChoice2
	sjump FollowerGenericScript ; fallback

FollowerCyndaquilScriptChoice1:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " flared"
	line "the flames on its"
	cont "back!"
	done

FollowerCyndaquilScriptChoice2:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text "'s flames"
	line "appear bright red!"
	done

FollowerCyndaquilScriptChoiceBerry:
; 1/10 == 1/60 chance of cyndaquil giving you an item
	random 10
	ifless 9, FollowerCyndaquilScript

	opentext
	writetext .Text
	yesorno
	iffalse .done
	verbosegiveitem BURNT_BERRY
.done
	closetext
	end
.Text:
	text_ram wStringBuffer1
	text " found a"
	line "BERRY and is"
	cont "roasting it."

	para "Want it?"
	done

FollowerTotodileScript:
	random 2
	iftrue FollowerGenericScript
	random 3
	ifequal 0, FollowerTotodileScriptChoice1
	ifequal 1, FollowerTotodileScriptChoice2
	ifequal 2, FollowerTotodileScriptChoice3
	sjump FollowerGenericScript ; fallback

FollowerTotodileScriptChoice1:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " chomps"
	line "you lightly."
	done

FollowerTotodileScriptChoice2:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text_start
	line "squirted you with"
	cont "water!"
	done

FollowerTotodileScriptChoice3:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " lets a"
	line "loose cry of ex-"
	cont "citement."
	done

FollowerPoisonedScript:
; poisoned script
	showemote EMOTE_SAD, FOLLOWER, 30
	jumptext .Text
	end
.Text:
	text_ram wStringBuffer1
	text " is"
	line "shivering from the"
	cont "poison<...>"
	done

FollowerGenericScript:
	random 5
	ifequal  0, FollowerScriptChoice1
	ifequal  1, FollowerScriptChoice2
	ifequal  2, FollowerScriptChoice3
	ifequal  3, FollowerScriptChoice4
	ifequal  4, FollowerScriptChoice5
; invalid or i somehow missed one
	jumptext .InvalidText
.InvalidText:
	text "This"
	done

FollowerScriptChoice1:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " is"
	line "staring inquisi-"
	cont "tively at you!"
	done

FollowerScriptChoice2:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " appears"
	line "to be curious."
	done

FollowerScriptChoice3:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " is"
	line "looking at the"
	cont "ground."
	done


FollowerScriptChoice4:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " seems a"
	line "little shy."
	done

FollowerScriptChoice5:
	jumptext .Text
.Text:
	text_ram wStringBuffer1
	text " seems"
	line "relaxed."
	done
