GetFollowingSprite::
; input:
; 	hl = Pokemon ID (starts at 1)
; output:
;	b  = sprite bank
;	c  = sprite color
;	de = sprite address

	ld a, [hROMBank]
	ld [hSavedROMBank], a
	
	ld a, BANK(FollowSpritePointers)
	rst Bankswitch

	dec hl
	ld b, h
	ld c, l

	ld hl, FollowSpritePointers
	add hl, bc
	add hl, bc
	add hl, bc
	add hl, bc

	ld b, [hl] ; bank
	inc hl
	ld e, [hl] ; address
	inc hl
	ld d, [hl]
	inc hl
	ld c, [hl]

	ld a, [hSavedROMBank]
	rst Bankswitch
	ret
