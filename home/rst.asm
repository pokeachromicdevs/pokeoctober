; rst vectors

SECTION "rst0", ROM0
; 2 ops before jump to account for $ffff being called
	nop
	nop
	jp CrashOveride

SECTION "rst8", ROM0 ; rst FarCall
	jp FarCall_hl

SECTION "rst10", ROM0 ; rst Bankswitch
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

SECTION "rst18", ROM0
	jp CrashOveride

SECTION "rst20", ROM0
	jp CrashOveride

SECTION "rst28", ROM0 ; rst JumpTable
	push de
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de
	jp hl

; SECTION "rst30", ROM0
; rst30 is midst rst28

SECTION "rst38", ROM0
	jp CrashOveride
