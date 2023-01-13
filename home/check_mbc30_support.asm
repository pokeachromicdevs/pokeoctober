DoesEmulatorSupportMBC30::
; sets the z flag if it does
	ld a, $80
	ld hl, $4000
	call GetFarByte
	cp $80
	ret
