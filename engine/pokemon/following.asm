SetPartyNumberAsFollower::
; b = party number for follower, starts at 1.
;	If this is 0, it disables follower instead.
	ld a, b
	and a
	jr z, DisableFollower

; Follower flags = which number in party is following you
	ld [wWhichPartyFollower], a

; uncomment this to ensure palette appearing immediately (not in all cases)
	;call LoadFollowerPalette
	;ld hl, wOBPals1 palette PAL_OW_FOLLOWER
	;ld bc, 1 palettes
	;ld de, wOBPals2 palette PAL_OW_FOLLOWER
	;ld a, BANK(wOBPals1)
	;call FarCopyWRAM
	;call ForceUpdateCGBPals

; kind of crude check
	ld a, [wTileLeft]
	call GetTileCollision
	jr z, .spawn_left

	ld a, [wTileRight]
	call GetTileCollision
	jr z, .spawn_right

	ld a, [wTileDown]
	call GetTileCollision
	jr z, .spawn_down

	ld a, [wTileUp]
	call GetTileCollision
	jr z, .spawn_up

.spawn_down
	ld a, [wXCoord]
	add 4
	ld d, a
	ld a, [wYCoord]
	add 5
	ld e, a
	jr .got_spawn

.spawn_up
	ld a, [wXCoord]
	add 4
	ld d, a
	ld a, [wYCoord]
	add 3
	ld e, a
	jr .got_spawn

.spawn_left
	ld a, [wXCoord]
	add 3
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	jr .got_spawn

.spawn_right
	ld a, [wXCoord]
	add 5
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a
	jr .got_spawn

.spawn_center ; if all else fails
	ld a, [wXCoord]
	add 4
	ld d, a
	ld a, [wYCoord]
	add 4
	ld e, a

.got_spawn
	ld b, FOLLOWER
	farcall CopyDECoordsToMapObject
	call LoadFollowerPalette
	ld a, FOLLOWER
	call _CopyObjectStruct
	ret

DisableFollower::
	ld a, FOLLOWER
	call DeleteObjectStruct
	xor a
	ld [wWhichPartyFollower], a
	ret

IsMonFollowBlacklisted::
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld de, 2
	ld hl, CantFollowList
	jp IsInHalfwordArray

INCLUDE "data/pokemon/follow_blacklist.asm"
