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
	dbw 45, COIN_HURL
	dbw 50, BODY_SLAM
	dbw 55, SLASH
	db 0 ; no more level-up moves
	
KatuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, CONFUSION
	dbw 5, NIGHT_SHADE
	dbw 10, NIGHT_SHADE
	dbw 20, TELEPORT
	dbw 26, QUICK_ATTACK
	dbw 30, PSYBEAM
	dbw 35, PURSUIT
	dbw 40, FUTURE_SIGHT
	dbw 45, CONFUSE_RAY
	dbw 50, WING_ATTACK ; put Synchronoise in this slot for final
	dbw 53, DRILL_PECK
	dbw 61, PSYCHIC_M
	db 0 ; no more level-up moves