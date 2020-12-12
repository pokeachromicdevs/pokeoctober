; HM moves can't be forgotten

IsHM::
	cp HM01
	jr c, .NotHM
	scf
	ret
.NotHM:
	and a
	ret

IsHMMove::
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld hl, .HMMoves
	ld de, 2
	jp IsInHalfwordArray

.HMMoves:
	dw UPROOT
	dw WIND_RIDE
	dw WATER_SPORT
	dw STRENGTH
	dw BRIGHT_MOSS
	dw WATERFALL
	dw WHIRLPOOL
	dw -1 ; end
