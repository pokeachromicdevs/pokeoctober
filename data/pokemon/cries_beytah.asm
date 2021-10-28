mon_betacry: MACRO
; index, pitch, length
	dw \1, \2, \3
ENDM

BetaPokemonCries::
	mon_betacry CRY_RATTATA,     $035,  $0e0 ; MOIBELLE
