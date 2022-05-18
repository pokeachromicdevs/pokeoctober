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
	dw WearlycanEvosAttacks
	dw DodaerieEvosAttacks
	dw ParasporEvosAttacks
	dw MolambinoEvosAttacks
	
CoinpurEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, MEOWTH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, BITE
	dbw 12, TEMPT
	dbw 16, PAY_DAY
	dbw 22, FAINT_ATTACK
	dbw 28, FURY_SWIPES
	dbw 32, SCREECH
	dbw 38, COIN_HURL
	dbw 44, CHARM
	dbw 48, SWAGGER
	dbw 54, SLASH
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
	dbw 1, LICK
	dbw 1, TAIL_WHIP
	dbw 4, QUICK_ATTACK
	dbw 10, FAINT_ATTACK
	dbw 14, MEGAPHONE
	dbw 20, HEAL_BELL
	dbw 24, NIGHT_SHADE
	dbw 30, TEMPT
	dbw 34, CRUNCH
	dbw 40, SLASH
	dbw 44, MOONLIGHT
	dbw 50, SHADOW_BALL
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
	dbbw EVOLVE_LEVEL, 31, WEARLYCAN
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, QUICK_ATTACK
	dbw 10, POWDER_SNOW
	dbw 19, DEFENSE_CURL
	dbw 24, ICY_WIND
	dbw 29, MIMIC
	dbw 33, ICE_PUNCH
	dbw 38, DIG
	dbw 43, ROAR
	dbw 47, THRASH
	dbw 52, BLIZZARD
	db 0 ; no more level-up moves
	
WearlycanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 7, QUICK_ATTACK
	dbw 12, POWDER_SNOW
	dbw 21, DEFENSE_CURL
	dbw 26, ICY_WIND
	dbw 30, MIMIC
	dbw 35, ICE_PUNCH
	dbw 40, DIG
	dbw 45, ROAR
	dbw 49, THRASH
	dbw 54, BLIZZARD
	db 0 ; no more level-up moves
	
DodaerieEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, DODUO
	db 0 ; no more evolutions
	dbw 1,	QUICK_ATTACK
	dbw 1,	GROWL
	dbw 6,	PECK
	dbw 12,	PURSUIT
	dbw 18,	CHARM
	dbw 24,	FURY_ATTACK
	dbw 30,	RAGE
	dbw 36,	JUMP_KICK
	dbw 42,	DRILL_PECK
	dbw 48,	AGILITY
	dbw 54,	EXTREMESPEED
	db 0 ; no more level-up moves
	
ParasporEvosAttacks:
	dbbw EVOLVE_LEVEL, 12, PARAS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ABSORB
	dbw 6, POISONPOWDER
	dbw 10, LEECH_LIFE
	dbw 15, MEGA_DRAIN
	dbw 21, STUN_SPORE
	dbw 25, TACKLE ; DUAL_PINCER
	dbw 30, GIGA_DRAIN
	dbw 36, SPORE
	dbw 40, GROWTH
	dbw 45, SLASH
	dbw 51, TACKLE ; LUNGE
	db 0 ; no more level-up moves
	
MolambinoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1 , WATER_GUN
	dbw 1 , GROWL
	dbw 1 , TACKLE
	dbw 10, RAGE
	dbw 12, BUBBLE
	dbw 13, HARDEN
	dbw 16, SUPERSONIC
	dbw 19, BIDE
	dbw 23, SLAM
	dbw 29, DOUBLE_TEAM
	dbw 35, ACID_ARMOR
	dbw 42, IRON_TAIL
	dbw 47, THRASH
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves