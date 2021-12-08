SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw CoinpurEvosAttacks
	dw AdbarstorkEvosAttacks
	dw PupperonEvosAttacks
	dw MoibelleEvosAttacks
	dw BelledamEvosAttacks
	dw CleflingEvosAttacks

CoinpurEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, MEOWTH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, BITE
	dbw 13, PAY_DAY
	dbw 19, FURY_SWIPES
	dbw 25, FAINT_ATTACK
	dbw 31, COIN_HURL
	dbw 37, SCREECH
	dbw 43, SLASH
	db 0 ; no more level-up moves
	
AdbarstorkEvosAttacks:
	db  0; no more evolutions 
	dbw 1, PECK
	dbw 5, GROWL
	dbw 9, FURY_ATTACK
	dbw 12, WHIRLWIND
	dbw 19, TWISTER
	dbw 25, WING_ATTACK
	dbw 31, SCREECH
	dbw 39, MIRROR_MOVE
	dbw 45, DRILL_PECK
	dbw 52, FLY
	db 0 ; no more level-up moves

PupperonEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, GROWLITHE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, CHARM
	dbw 6, EMBER
	dbw 12, LEER
	dbw 17, FLAME_WHEEL
	dbw 23, REVERSAL
	dbw 28, TAKE_DOWN
	dbw 34, FLAMETHROWER
	dbw 39, AGILITY
	dbw 45, CRUNCH
	dbw 50, OUTRAGE
	dbw 56, FIRE_BLAST
	db 0 ; no more level-up moves
	
MoibelleEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, BELLEDAM
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, PURSUIT
	dbw 12, BITE
	dbw 18, COIN_HURL
	dbw 23, FURY_SWIPES
	dbw 27, HEAL_BELL
	dbw 30, FAINT_ATTACK
	dbw 34, LOVELY_KISS
	dbw 34, SWEET_KISS
	dbw 40, CONFUSE_RAY
	dbw 45, ATTRACT
	dbw 50, SLASH
	db 0 ; no more level-up moves
	
BelledamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 10, PURSUIT
	dbw 18, BITE
	dbw 21, COIN_HURL
	dbw 26, FURY_SWIPES
	dbw 30, HEAL_BELL
	dbw 33, FAINT_ATTACK
	dbw 36, LOVELY_KISS
	dbw 36, SWEET_KISS
	dbw 43, CONFUSE_RAY
	dbw 48, ATTRACT
	dbw 53, SLASH
	db 0 ; no more level-up moves
	
CleflingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, QUICK_ATTACK
	dbw 12, WHIRLWIND
	dbw 17, SING
	dbw 25, WING_ATTACK
	dbw 34, MIMIC
	dbw 40, SCREECH
	dbw 46, MIRROR_MOVE
	dbw 50, FLY
	db 0 ; no more level-up moves
	
BellignanEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, LOVELY_KISS
	db 1, RAZOR_LEAF
	db 42, CONFUSE_RAY
	db 50, GIGA_DRAIN
	db 54, SOLARBEAM
	db 0 ; no more level-up moves