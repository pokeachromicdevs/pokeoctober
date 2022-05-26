SetPartyNumberAsFollower::
; b = party number for follower, starts at 1.
;	If this is 0, it disables follower instead.
	ld a, b
	and a
	jr z, DisableFollower

; Follower flags = which number in party is following you
	ld [wFollowerFlags], a

; fix position of follow obj
	ld b, FOLLOWER
	ld a, [wXCoord]
	add 4
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	farcall CopyDECoordsToMapObject
	farcall ChangeFollowerColor
	ld a, FOLLOWER
	call _CopyObjectStruct
	ret

DisableFollower::
	ld a, FOLLOWER
	call DeleteObjectStruct
	xor a
	ld [wFollowerFlags], a
	ret
