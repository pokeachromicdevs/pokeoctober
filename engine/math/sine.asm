; A simple sine function.
_Sine::
; INPUT:  e = signed 6-bit value
;         d = degree offset
; OUTPUT: e = d * sin(e).
	ld a, e
	and %111111
	cp  %100000
	jr nc, .negative
	call .apply
	ld a, h
	ld e, a
	ret
.negative
	and %011111
	call .apply
	ld a, h
	xor $ff
	inc a
	ld e, a
	ret

.apply
	ld e, a
	ld a, d
	ld d, 0
	ld hl, .sinewave
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld hl, 0
.multiply ; Factor amplitude
	srl a
	jr nc, .even
	add hl, de
.even
	sla e
	rl d
	and a
	jr nz, .multiply
	ret

.sinewave
; 32 samples of sin(x) from x=0 to x<32768 (pi radians)
x = 0
rept 32
	dw (sin(x) + (sin(x) & $ff)) >> 8 ; round up
x = x + DIV(32768, 32) ; a circle has 65536 "degrees"
endr

