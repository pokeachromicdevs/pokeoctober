_CrashOveride::
; restore screen positions
	call MapSetup_Sound_Off
	call DisableLCD
	xor a
	ld [hSCX], a
	ld [hSCY], a
	ld a, $90
	ld [hWY], a
	call CrashOveride_ResetLY
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	callfar ClearSpriteAnims
	call ClearSprites
	call EnableLCD
	call ClearScreen

	ld de, Font
	ld hl, vTiles1
	lb bc, BANK(Font), $80
	call Get1bpp

; we can take our sweet-ass time here
	ld de, CrashTxt1
	hlcoord 1, 1
	call PlaceString

	ld de, CrashTxt2
	hlcoord 1, 2
	call PlaceString

	ld de, CrashTxt3
	hlcoord 1, 4
	call PlaceString

	ld de, CrashTxt4
	hlcoord 1, 11
	call PlaceString

; determine cause of crash
	ld de, CrashOveride_ErrorStrings
	ldh a, [hCrashCode]
	and a
	jr z, .place_error
	cp NUM_E_CODES
	jr c, .not_unknown

	;ld de, CrashOveride_ErrorUnknown
	jr .place_error

.not_unknown
	ld c, a
.find_str_loop
	ld a, [de]
	inc de
	cp "@"
	jr nz, .find_str_loop
	dec c
	jr nz, .find_str_loop ; not yet
.place_error
	hlcoord 8, 1
	call PlaceString

; af
	hlcoord 4, 4
	ld de, wCrashA
	call CrashMemWordToHexBE

; bc
	hlcoord 4, 5
	ld de, wCrashB
	call CrashMemWordToHexBE

; de
	hlcoord 12, 4
	ld de, wCrashD
	call CrashMemWordToHexBE

; hl
	hlcoord 12, 5
	ld de, wCrashH
	call CrashMemWordToHexBE

; sp
	hlcoord 4, 6
	ld de, wCrashSP
	call CrashMemWordToHex

; rom bank
	hlcoord 12, 6
	ld de, wCrashROMBank
	call CrashMemByteToHex

; wram bank
	hlcoord 14, 6
	ld de, wCrashWRAMBank
	call CrashMemByteToHex

; stack traces
	ld bc, SCREEN_WIDTH-4

; first row
	hlcoord 8, 11
	ld de, wCrashStackBackup
rept 6
	call CrashMemWordToHex
	add hl, bc
	inc de
	inc de
endr

; second row
	hlcoord 14, 11
rept 6
	call CrashMemWordToHex
	add hl, bc
	inc de
	inc de
endr

; put arrow
	hlcoord 13, 11
	ld [hl], "▶"
.inf

	call DelayFrame
	jr .inf

CrashTxt1:
	db "CRASH:@"

CrashTxt2:
	db "Please file a bug!@"

CrashTxt3:
	db "af:     de:         "
	db "bc:     hl:         "
	db "sp:     rw:         @"

CrashTxt4:
	db "Stack:@"

CrashMemWordToHex:
; @param de	memory address containing little-endian word
	inc de
	call CrashMemByteToHex
	dec de
	jr CrashMemByteToHex

CrashMemWordToHexBE:
; @param de	memory address containing big-endian word
	call CrashMemByteToHex
	inc de

CrashMemByteToHex:
; @param de	which memory address to display
; @param hl	where in wTileMap to display it
	ld a, [de]
; get high byte
	swap a
	and %1111
	call .nibble2letter
	ld a, [de]
	and %1111
; fallthru
.nibble2letter:
	cp $a
	jr c, .is_num
; is A-F?
	sub $a
	add "A"
	ld [hli], a
	ret
.is_num
	add "0"
	ld [hli], a
	ret

CrashOveride_ResetLY:
	ld hl, wLYOverrides
	call .reset
	call .reset
	ld hl, wLYOverridesBackup
	call .reset
.reset
	xor a
	ld c, $90
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	ret

CrashOveride_ErrorStrings:
	db "Unknown@"
	db "opcode C7@"
	db "opcode DF@"
	db "opcode E7@"
	db "opcode FF@"
	db "Div. by 0@"
	db "S.overflow@"
	db "S.underflow@"
	db "Win.stack!@"
	db "Wrong call@"

;CrashOveride_ErrorUnknown:
;	db "Unknown@"
