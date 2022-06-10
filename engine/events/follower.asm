SECTION "Follower Script", ROMX

FollowerScript::
; before we do anything, load the follower's nick
; into wStringBuffer1
	callasm .GetFollowerNickname

; make sure follower is facing player
	faceplayer

; poisoned script takes priority
	callasm .IsFollowerPoisoned
	iftrue .Poisoned

; regular script goes here
	random 5
	ifequal  0, FollowerScriptChoice1
	ifequal  1, FollowerScriptChoice2
	ifequal  2, FollowerScriptChoice3
	ifequal  3, FollowerScriptChoice4
	ifequal  4, FollowerScriptChoice5

; invalid or i somehow missed one
	jumptextfaceplayer .Text
.Text:
	text "This"
	done

.Poisoned:
; poisoned script
	showemote EMOTE_SAD, FOLLOWER, 30
	jumptext .PoisonedText
	end

.PoisonedText
	text_ram wStringBuffer1
	text " is"
	line "shivering from the"
	cont "poison<...>"
	done

.GetFollowerNickname:
	ld a, [wWhichPartyFollower]
	and a
	ret z ; just in case!
	dec a
	ld hl, wPartyMonNicknames	
	jp GetNick

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

; randomized choice

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
