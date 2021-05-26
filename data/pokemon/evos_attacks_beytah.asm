SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw CoinpurEvosAttacks
	dw KatuEvosAttacks

CoinpurEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, MEOWTH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 11, BITE 
	dbw 20, PAY_DAY
	dbw 28, FAINT_ATTACK
	dbw 32, ATTRACT
	dbw 35, SCREECH
	dbw 41, FURY_SWIPES
	dbw 45, GLARE
	dbw 50, BODY_SLAM
	dbw 55, SLASH
	db 0 ; no more level-up moves
	
KatuEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, XATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 10, NIGHT_SHADE
	dbw 15, TELEPORT
	dbw 25, FUTURE_SIGHT
	dbw 45, CONFUSE_RAY
	dbw 55, PSYCHIC_M
	db 0 ; no more level-up moves
