SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw CoinpurEvosAttacks
	dw AdbarstorkEvosAttacks
	dw PupperonEvosAttacks
	dw MoibelleEvosAttacks
	dw BelledamEvosAttacks
	dw CleflingEvosAttacks
	dw MallodyEvosAttacks
	dw CamouflakeEvosAttacks
	dw CoaltaEvosAttacks
	dw BurgelaEvosAttacks 
	dw VupiiiEvosAttacks
	dw WorfursEvosAttacks
	
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
	dbbw EVOLVE_LEVEL, 16, MALLODY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, MIRROR_MOVE
	dbw 5, PECK
	dbw 10, SING
	dbw 15, SCREECH
	db 0 ; no more level-up moves
	
MallodyEvosAttacks:
	db 0 ; no more evolutions
	dbw 16, WING_ATTACK
	dbw 20, WATER_GUN
	dbw 24, TWISTER
	dbw 30, DISABLE
	dbw 34, FLY
	dbw 38, REST
	dbw 38, SNORE
	dbw 44, SLEEP_TALK
	dbw 48, PERISH_SONG
	db 0 ; no more level-up moves
	
CamouflakeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLOUT
	dbw 1, GROWL
	dbw 4, RAPID_SPIN
	dbw 9, POWDER_SNOW
	dbw 13, DEFENSE_CURL
	dbw 18, ABSORB
	dbw 22, CHARM
	dbw 27, ICY_WIND
	dbw 31, MEGA_DRAIN
	dbw 36, MIST
	dbw 40, ICE_BEAM
	dbw 45, GIGA_DRAIN
	db 0 ; no more level-up moves
	
CoaltaEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PONYTA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 5, GROWL
	dbw 10, EMBER
	dbw 14, DOUBLE_KICK
	dbw 19, FIRE_SPIN
	dbw 24, QUICK_ATTACK
	dbw 28, FLAME_WHEEL
	dbw 33, STOMP
	dbw 38, FLAMETHROWER
	dbw 42, AGILITY
	dbw 47, SUNNY_DAY
	dbw 52, FIRE_BLAST
	db 0 ; no more level-up moves 
	
BurgelaEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, TANGELA
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, STUN_SPORE
	dbw 5, ABSORB
	dbw 8, GROWTH
	dbw 13, BIND
	dbw 17, VINE_WHIP
	dbw 22, POISONPOWDER
	dbw 25, MEGA_DRAIN
	dbw 30, SLAM
	dbw 33, ANCIENTPOWER
	dbw 38, GIGA_DRAIN
	dbw 41, SLEEP_POWDER
	dbw 46, ROLLOUT
	db 0 ; no more level-up moves
	
VupiiiEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, VULPIX
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 6, QUICK_ATTACK
	dbw 11, TEMPT
	dbw 17, SPITE
	dbw 22, FIRE_SPIN
	dbw 28, CONFUSION
	dbw 33, FLAMETHROWER
	dbw 39, FAINT_ATTACK
	dbw 44, CONFUSE_RAY
	dbw 50, FIRE_BLAST
	dbw 55, PSYCHIC
	db 0 ; no more level-up moves
	
WorfursEvosAttacks:
	db 0 ; no more evolutions, will evolve at level 31 once Wearlycan is in
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 7, POWDER_SNOW
	dbw 12, FURY_SWIPES
	dbw 18, SAFEGUARD
	dbw 23, LOW_KICK
	dbw 29, ICY_WIND
	dbw 34, SLASH
	dbw 40, SCREECH
	dbw 45, CONFUSE_RAY
	dbw 51, BLIZZARD
	db 0 ; no more level-up moves