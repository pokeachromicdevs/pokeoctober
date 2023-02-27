; Crash screen. If you reach here, I dun goofed.
; Layout of screen:
;
; -- register dump --
; af: <a><f>    de: <d><e>
; bc: <b><c>    hl: <h><l>
; sp: < sp >    rw: <ROM bank><WRAM bank>
;
; -- version string --
;
; -- stack dump --
; Stack: <Stack-$0c>    --> <Stack+$00>
;        <Stack-$0a>        <Stack+$02>
;        <Stack-$08>        <Stack+$04>
;        <Stack-$06>        <Stack+$06>
;        <Stack-$04>        <Stack+$08>
;        <Stack-$02>        <Stack+$0a>
; (stack numbers in little endian)

CrashOveride::
	ld b, b ; set breakpoint here
; dump registers ASAP
	di
	ld [wCrashA], a
	ld a, b
	ld [wCrashB], a
	ld a, c
	ld [wCrashC], a
	ld a, d
	ld [wCrashD], a
	ld a, e
	ld [wCrashE], a
	ld a, h
	ld [wCrashH], a
	ld a, l
	ld [wCrashL], a
	ldh a, [rIE]
	ld [wCrashIE], a
	ldh a, [rLCDC]
	ld [wCrashLCDC], a
	ld [wCrashSP], sp

; somehow we're gonna need to get LOW(af)
	ld sp, wCrashTmpStack ; will write to @-2 and @-1
	; so it'll get overwritten anyway by the stack copying routine below
	push af
	pop bc
	ld a, c
	ld [wCrashF], a

; restore sp
	ld hl, wCrashSP
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; get 12 bytes before SP
; and 12 bytes on and after SP
	ld d, h
	ld e, l
	ld hl, -12
	add hl, de
	ld c, 24
	ld de, wCrashStackBackup
.copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copy
	ei

; save bank info
	ldh a, [hROMBank]
	ld [wCrashROMBank], a
	ldh a, [rSVBK] ; wram bank
	and %111
	ld [wCrashWRAMBank], a

.write_cause
; we ain't ever going back, so...
	ld a, BANK(_CrashOveride)
	rst Bankswitch
	jp _CrashOveride
