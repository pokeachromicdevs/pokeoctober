SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw AdbarstorkEvosAttacks
	dw PupperonEvosAttacks
	dw CamouflakeEvosAttacks
	dw CoaltaEvosAttacks
	dw BurgelaEvosAttacks
	dw VupiiiEvosAttacks
	dw WorfursEvosAttacks
	dw WearlycanEvosAttacks
	dw DodaerieEvosAttacks
	dw ParasporEvosAttacks
	dw MolambinoEvosAttacks
	dw KiwackiEvosAttacks
	dw SilkaneEvosAttacks
	dw MorphobiaEvosAttacks
	dw TerrachnidEvosAttacks
	dw SmujjEvosAttacks
	dw KotoraEvosAttacks
	dw RaitoraEvosAttacks
	dw GorotoraEvosAttacks
	dw KoalyptusEvosAttacks
	dw OrefryEvoAttacks
	dw BallerineEvoAttacks
	dw FennecurseEvoAttacks
	dw OrijoeyEvoAttacks
	dw AggroswineEvoAttacks
	dw GermifrostEvosAttacks
	dw VegelancheEvosAttacks
	dw SnouwrbunEvosAttacks
	dw NecrorexEvosAttacks
.End:

NecrorexEvosAttacks:
	db 0 ; no evos?
	dbw 1, RAGE
	dbw 1, SCREECH
	dbw 7, FOCUS_ENERGY
	dbw 14, DRAGONBREATH
	dbw 21, BONE_RUSH
	dbw 28, THRASH
	dbw 35, ROAR
	dbw 42, ROCK_HEAD
	dbw 49, OUTRAGE
	dbw 56, ROCK_SLASH
	dbw 63, HYPER_BEAM
	db 0 ; no more attax

AggroswineEvoAttacks:
	db 0 ; no evos?
	dbw  1, RAGE
	dbw  1, LEER
	dbw  1, ENDURE
	dbw  7, QUICK_ATTACK
	dbw 14, BITE
	dbw 21, FURY_ATTACK
	dbw 28, PURSUIT
	dbw 35, CRUNCH
	dbw 42, HEADBUTT
	dbw 49, ROAR
	dbw 56, THRASH
	db 0 ; no more attax

OrijoeyEvoAttacks:
	dbbw EVOLVE_LEVEL, 30, KANGASKHAN
	db 0 ; no more evos
	dbw  1, COMET_PUNCH
	dbw  1, LEER
	dbw  5, BITE
	dbw 10, RAGE
	dbw 15, FOCUS_ENERGY
	dbw 20, CHARM
	dbw 25, DIZZY_PUNCH
	db 0 ; no more moves

FennecurseEvoAttacks:
	db 0 ; no more evolutions
	dbw  1, FIRE_SPIN
	dbw  1, LEER
	dbw  6, FAINT_ATTACK
	dbw 12, MEAN_LOOK
	;dbw 17, EERIE_LIGHT ; TODO
	dbw 22, FLAME_WHEEL
	dbw 28, WILL_O_WISP
	dbw 34, CURSE
	dbw 39, SHADOW_BALL
	dbw 44, SCARY_FACE
	dbw 50, AMBUSH
	dbw 56, FLAMETHROWER
	db 0 ; no more level-up moves

BallerineEvoAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MIMENTOR
	db 0 ; no more evos
	dbw 1, BARRIER
	dbw 6, CONFUSION
	dbw 9, SUBSTITUTE
	dbw 13, MEDITATE
	dbw 17, DOUBLESLAP
	dbw 21, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 27, ENCORE
	dbw 30, PSYBEAM
	dbw 35, BATON_PASS
	dbw 40, SAFEGUARD
	db 0 ; no more moves

OrefryEvoAttacks:
	dbbw EVOLVE_LEVEL, 18, GOLDEEN
	db 0 ; no more evos
	dbw 1,  PECK
	dbw 1,  TAIL_WHIP
	dbw 1,  SUPERSONIC
	dbw 6,  BUBBLE
	dbw 12, HORN_ATTACK
	dbw 16, FLAIL
	;dbw 22, DEEP_DIVE
	dbw 28, FURY_ATTACK
	dbw 32, TAKE_DOWN
	dbw 38, WATERFALL
	dbw 44, AGILITY
	dbw 48, MEGAHORN
	dbw 54, HORN_DRILL
	db 0 ; no more moves

KoalyptusEvosAttacks:
	db 0 ; no more evos
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 5, VINE_WHIP
	dbw 8, BITE
	dbw 15, RAZOR_LEAF
	dbw 21, POISON_STING ; XXX POISON_FANG
	dbw 25, FURY_SWIPES
	dbw 32, CRUNCH
	dbw 36, SLASH
	dbw 42, BELLY_DRUM
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

CamouflakeEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, GERMIFROST
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
	dbw 28, FAINT_ATTACK
	dbw 33, TACKLE ; MAGMA_RING
	dbw 39, WILL_O_WISP
	dbw 44, CONFUSE_RAY
	dbw 50, FIRE_BLAST
	dbw 55, PSYCHIC
	db 0 ; no more level-up moves

WorfursEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, WEARLYCAN
	db 0 ; no more evolutions
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

KiwackiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, DEFENSE_CURL
	dbw 7, ABSORB
	dbw 12, LEER
	dbw 17, MUD_SLAP
	dbw 24, RAZOR_LEAF
	dbw 29, MIRROR_MOVE
	dbw 34, JUMP_KICK
	dbw 41, GIGA_DRAIN
	dbw 46, DRILL_PECK
	dbw 51, SWORDS_DANCE
	dbw 58, TACKLE; EARTH DRILL
	db 0 ; no more level-up moves

SilkaneEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, MORPHOBIA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 5, LEECH_LIFE
	dbw 15, MIMIC
	dbw 20, HIDDEN_POWER
	db 0 ; no more level-up moves

MorphobiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 25, MEAN_LOOK
	dbw 30, TACKLE; SHADOW PUNCH
	dbw 34, SCARY_FACE
	dbw 40, SCREECH
	dbw 44, SHADOW_BALL
	dbw 48, FLY
	dbw 54, TACKLE;LUNGE
	db 0 ; no more level-up moves

TerrachnidEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 7, FOCUS_ENERGY
	dbw 11, MUD_SLAP
	dbw 15, MACH_PUNCH
	dbw 22, CURSE
	dbw 26, CROSS_CUTTER
	dbw 30, CUT; STUN CUT
	dbw 37, TOXIC
	dbw 41, TACKLE;LUNGE
	dbw 45, EARTHQUAKE
	dbw 52, FISSURE
	db 0 ; no more level-up moves

SmujjEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, GRIMER
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HARDEN
	dbw 10, POISON_GAS
	dbw 14, SLUDGE
	dbw 19, MUD_SLAP
	dbw 24, TOXIC
	dbw 28, DISABLE
	dbw 23, MINIMIZE
	dbw 33, SCREECH
	dbw 38, MINIMIZE
	dbw 42, BODY_SLAM
	dbw 47, ACID_ARMOR
	dbw 52, SLUDGE_BOMB
	db 0 ; no more level-up moves

KotoraEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, RAITORA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, THUNDERSHOCK
	dbw 10, BITE
	dbw 15, THUNDER_WAVE
	dbw 19, SCARY_FACE
	dbw 24, SPARK
	dbw 28, TAKE_DOWN
	dbw 33, AGILITY
	dbw 37, CRUNCH
	dbw 42, THUNDERBOLT
	dbw 46, SLASH
	db 0 ; no more level-up moves

RaitoraEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, GOROTORA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, THUNDERSHOCK
	dbw 10, BITE
	dbw 17, THUNDER_WAVE
	dbw 21, SCARY_FACE
	dbw 25, SPARK
	dbw 30, TAKE_DOWN
	dbw 35, AGILITY
	dbw 42, CRUNCH
	dbw 49, THUNDERBOLT
	dbw 56, SLASH
	db 0 ; no more level-up moves

GorotoraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 6, THUNDERSHOCK
	dbw 10, BITE
	dbw 17, THUNDER_WAVE
	dbw 21, SCARY_FACE
	dbw 25, SPARK
	dbw 31, TAKE_DOWN
	dbw 34, AGILITY
	dbw 45, CRUNCH
	dbw 51, THUNDERBOLT
	dbw 58, SLASH
	db 0 ; no more level-up moves

GermifrostEvosAttacks:
	dbbw EVOLVE_ITEM, HEART_STONE, VEGELANCHE
	dbbw EVOLVE_ITEM, POISON_STONE, SNOUWRBUN
	db 0 ; no more evolutions
	dbw 1, ROLLOUT
	dbw 1, GROWL
	dbw 4, RAPID_SPIN
	dbw 9, POWDER_SNOW
	dbw 13, DEFENSE_CURL
	dbw 18, ABSORB
	dbw 24, CHARM
	dbw 29, ICY_WIND
	dbw 33, MEGA_DRAIN
	dbw 38, MIST
	dbw 42, ICE_BEAM
	dbw 47, GIGA_DRAIN
	db 0 ; no more level-up moves

VegelancheEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLOUT
	dbw 1, GROWL
	dbw 4, RAPID_SPIN
	dbw 9, POWDER_SNOW
	dbw 13, DEFENSE_CURL
	dbw 18, ABSORB
	dbw 26, CHARM
	dbw 31, ICY_WIND
	dbw 35, MEGA_DRAIN
	dbw 40, MIST
	dbw 44, ICE_BEAM
	dbw 49, GIGA_DRAIN
	db 0 ; no more level-up moves

SnouwrbunEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLOUT
	dbw 1, GROWL
	dbw 4, RAPID_SPIN
	dbw 9, POWDER_SNOW
	dbw 13, DEFENSE_CURL
	dbw 18, ABSORB
	dbw 26, CHARM
	dbw 31, PURSUIT
	dbw 35, MEGA_DRAIN
	dbw 40, MIST
	dbw 44, FAINT_ATTACK
	dbw 49, GIGA_DRAIN
	db 0 ; no more level-up moves




;---------------------------------------------------------------------------------------------
_NUM_EVOS_ATTACKS = _NUM_EVOS_ATTACKS + ((EvosAttacksPointers3.End  - EvosAttacksPointers3)/2)
