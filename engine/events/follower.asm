SECTION "Follower Script", ROMX

FollowerScript::
	callasm .IsFollowerPoisoned
	iftrue .Poisoned

; regular script goes here
	jumptextfaceplayer .Text
.Text:
	text "This"
	done

.Poisoned:
; poisoned script
	showemote EMOTE_SAD, FOLLOWER, 30
	end

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
