DoesEmulatorSupportMBC30::
; sets the z flag if it does
	ld a, BANK(EXROM_Sentinel)
	ld hl, EXROM_Sentinel
	call GetFarByte
	cp BANK(EXROM_Sentinel)
	ret
