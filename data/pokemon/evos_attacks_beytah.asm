SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw StantlerEvosAttacks
	dw SmeargleEvosAttacks
	dw TyrogueEvosAttacks
	dw HitmontopEvosAttacks
	dw SmoochumEvosAttacks
	dw ElekidEvosAttacks
	dw MagbyEvosAttacks
	dw MiltankEvosAttacks
	dw BlisseyEvosAttacks
	dw RaikouEvosAttacks
	dw EnteiEvosAttacks
	dw SuicuneEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
	dw LugiaEvosAttacks
	dw HoOhEvosAttacks
	dw KomaitiffEvosAttacks
	dw CelebiEvosAttacks
	dw KokopelliEvosAttacks
	dw PupperonEvosAttacks
	dw CoaltaEvosAttacks
	dw BurgelaEvosAttacks
	dw VulpiiiEvosAttacks
	dw WorfursEvosAttacks
	dw WearlycanEvosAttacks
	dw DodaerieEvosAttacks
	dw ParasporEvosAttacks
	dw KiwackiEvosAttacks
	dw SilkaneEvosAttacks
	dw MorphobiaEvosAttacks
	dw TerrachnidEvosAttacks
	dw SmujjEvosAttacks
	dw KoalyptusEvosAttacks
	dw OrefryEvoAttacks
	dw BallerineEvoAttacks
	dw OrijoeyEvoAttacks
	dw AggroswineEvoAttacks
	dw NecrorexEvosAttacks
	dw NurssumEvosAttacks
	dw GesticuteEvosAttacks
	dw RattlitEvosAttacks
	dw PiplupEvosAttacks
	dw AudinoEvosAttacks
	dw MunchlaxEvosAttacks
	dw MinccinoEvosAttacks
	dw CinccinoEvosAttacks
	dw SphealEvosAttacks
	dw ShuricornEvosAttacks
.End:

StantlerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FLASH
	dbw 1, STOMP
	dbw 1, LEER
	dbw 7, NIGHT_SHADE
	dbw 12, DOUBLE_KICK
	dbw 19, MEAN_LOOK
	dbw 24, HEADBUTT
	dbw 31, HYPNOSIS
	dbw 36, TERRORIZE
	dbw 43, LUNGE
	dbw 48, TACKLE ; MYSTIC_HORNS
	dbw 55, SKULL_BASH
	db 0 ; no more level-up moves
	
SmeargleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	dbbbw EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	dbbbw EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	dbbbw EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	db 0 ; no more level-up moves
	
HitmontopEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLING_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, PURSUIT
	dbw 19, QUICK_ATTACK
	dbw 25, RAPID_SPIN
	dbw 31, COUNTER
	dbw 37, AGILITY
	dbw 43, DETECT
	dbw 49, TRIPLE_KICK
	db 0 ; no more level-up moves
	
SmoochumEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 9, SWEET_KISS
	dbw 13, POWDER_SNOW
	dbw 21, CONFUSION
	dbw 25, SING
	dbw 33, MEAN_LOOK
	dbw 37, PSYCHIC_M
	dbw 45, PERISH_SONG
	dbw 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 9, THUNDERPUNCH
	dbw 17, LIGHT_SCREEN
	dbw 25, SWIFT
	dbw 33, SCREECH
	dbw 41, THUNDERBOLT
	dbw 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 7, LEER
	dbw 13, SMOG
	dbw 19, FIRE_PUNCH
	dbw 25, SMOKESCREEN
	dbw 31, SUNNY_DAY
	dbw 37, FLAMETHROWER
	dbw 43, CONFUSE_RAY
	dbw 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, DEFENSE_CURL
	dbw 13, STOMP
	dbw 19, MILK_DRINK
	dbw 26, BIDE
	dbw 34, ROLLOUT
	dbw 43, BODY_SLAM
	dbw 53, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, GROWL
	dbw 7, TAIL_WHIP
	dbw 10, SOFTBOILED
	dbw 13, DOUBLESLAP
	dbw 18, MINIMIZE
	dbw 23, SING
	dbw 28, EGG_BOMB
	dbw 33, DEFENSE_CURL
	dbw 40, LIGHT_SCREEN
	dbw 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, THUNDERSHOCK
	dbw 21, ROAR
	dbw 31, QUICK_ATTACK
	dbw 41, SPARK
	dbw 51, REFLECT
	dbw 61, CRUNCH
	dbw 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, EMBER
	dbw 21, ROAR
	dbw 31, FIRE_SPIN
	dbw 41, STOMP
	dbw 51, FLAMETHROWER
	dbw 61, SWAGGER
	dbw 71, FIRE_BLAST
	db 0 ; no more level-up moves
	
SuicuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, BUBBLEBEAM
	dbw 21, RAIN_DANCE
	dbw 31, GUST
	dbw 41, AURORA_BEAM
	dbw 51, MIST
	dbw 61, MIRROR_COAT
	dbw 71, HYDRO_PUMP
	db 0 ; no more level-up moves
	
LarvitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 36, SCARY_FACE
	dbw 43, CRUNCH
	dbw 50, EARTHQUAKE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 38, SCARY_FACE
	dbw 47, CRUNCH
	dbw 56, EARTHQUAKE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, SANDSTORM
	dbw 1, SCREECH
	dbw 8, SANDSTORM
	dbw 15, SCREECH
	dbw 22, ROCK_SLIDE
	dbw 29, THRASH
	dbw 38, SCARY_FACE
	dbw 47, CRUNCH
	dbw 61, EARTHQUAKE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves
	
LugiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AEROBLAST
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, HYDRO_PUMP
	dbw 55, RAIN_DANCE
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SACRED_FIRE
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, FIRE_BLAST
	dbw 55, SUNNY_DAY
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves
	
KomaitiffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SACRED_FIRE
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, FIRE_BLAST
	dbw 55, SUNNY_DAY
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_SEED
	dbw 1, CONFUSION
	dbw 1, RECOVER
	dbw 1, HEAL_BELL
	dbw 10, SAFEGUARD
	dbw 20, ANCIENTPOWER
	dbw 30, FUTURE_SIGHT
	dbw 40, BATON_PASS
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves
	
KokopelliEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PURSUIT
	dbw 1, SING
	dbw 1, RECOVER
	dbw 1, EARTHQUAKE
	dbw 10, LEECH_SEED
	dbw 20, ANCIENTPOWER
	dbw 30, MAGNITUDE
	dbw 40, FAINT_ATTACK
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves
	
NecrorexEvosAttacks:
	db 0 ; no more evolutions
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

BallerineEvoAttacks:
	dbbw EVOLVE_LEVEL, 15, MIMENTOR
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

PupperonEvosAttacks:
	dbbw EVOLVE_LEVEL, 13, GROWLITHE
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, GROWL
	dbw 6, BITE
	dbw 11, LEER
	dbw 17, SWAGGER
	dbw 22, FLAME_WHEEL
	dbw 28, TAKE_DOWN
	dbw 33, FLAMETHROWER
	dbw 39, CRUNCH
	dbw 44, ROAR
	dbw 50, FIRE_BLAST
	dbw 56, OUTRAGE
	db 0 ; no more level-up moves

CoaltaEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, PONYTA
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
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TANGELA
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

VulpiiiEvosAttacks:
	dbbw EVOLVE_LEVEL, 13, VULPIX
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 1, SPITE
	dbw 6, QUICK_ATTACK
	dbw 11, SAFEGUARD
	dbw 17, FIRE_SPIN
	dbw 22, CONFUSE_RAY
	dbw 28, FAINT_ATTACK
	dbw 33, WILL_O_WISP
	dbw 39, FLAMETHROWER
;	dbw 44, ENERGY_SINGE
;	dbw 50, NASTY_PLOT
	dbw 55, FIRE_BLAST
	dbw 61, PSYCHIC
	db 0 ; no more level-up moves

WorfursEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, WEARLYCAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 5, ROAR
	dbw 10, POWDER_SNOW
	dbw 14, PURSUIT
	dbw 19, ICY_WIND
	dbw 25, MIMIC
	dbw 31, ICE_PUNCH
	dbw 36, DIG
	dbw 41, BLINDSIDE
	dbw 47, THRASH ; WINTER CLAWS
	dbw 52, THRASH
	db 0 ; no more level-up moves

WearlycanEvosAttacks:
    db 0 ; no more evolutions
    dbw 1, TACKLE
    dbw 1, LEER
    dbw 5, ROAR
    dbw 10, POWDER_SNOW
    dbw 14, PURSUIT
    dbw 19, ICY_WIND
    dbw 27, MIMIC
    dbw 33, ICE_PUNCH
    dbw 38, DIG
    dbw 43, BLINDSIDE
    dbw 49, THRASH ; WINTER CLAWS
    dbw 54, THRASH
    db 0 ; no more level-up moves

DodaerieEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, DODUO
	db 0 ; no more evolutions
	dbw 1,	QUICK_ATTACK
	dbw 1,	GROWL
	dbw 6,	PURSUIT
	dbw 12,	PECK
	dbw 18,	LEER
	dbw 24,	FURY_ATTACK
	dbw 30,	RAGE
	dbw 36,	JUMP_KICK
	dbw 42,	AGILITY
	dbw 48,	DRILL_PECK
	dbw 54,	EXTREMESPEED
	db 0 ; no more level-up moves

ParasporEvosAttacks:
	dbbw EVOLVE_LEVEL, 12, PARAS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ABSORB
	dbw 6, STUN_SPORE
	dbw 10, LEECH_LIFE
	dbw 15, MEGA_DRAIN
	dbw 21, GROWTH
	dbw 25, POISONPOWDER
	dbw 30, CROSS_CUTTER
	dbw 36, SLASH
	dbw 40, GIGA_DRAIN
	dbw 45, SPORE
	dbw 51, SUBSTITUTE
;	dbw 55, STUN_CUT
	dbw 60, LUNGE
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
	dbw 54, LUNGE
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
;	dbw 30, STUN CUT
	dbw 37, TOXIC
	dbw 41, LUNGE
	dbw 45, EARTHQUAKE
	dbw 52, FISSURE
	db 0 ; no more level-up moves

SmujjEvosAttacks:
	dbbw EVOLVE_LEVEL, 19, GRIMER
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

NurssumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, DOUBLE_KICK
;	dbw 9, TANTRUM
	dbw 13, QUICK_ATTACK
	dbw 18, BARRAGE
	dbw 26, CHARM
	dbw 31, EXTREMESPEED
;	dbw 35, MILK_TIME
	dbw 40, TAKE_DOWN
	dbw 44, FAINT_ATTACK
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
GesticuteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, TAIL_WHIP
	dbw 7, PSYWAVE
	dbw 14, MEDITATE
;   dbw 18, DELIVERY
	dbw 22, CONFUSION
	dbw 29, CHARM
	dbw 36, SWIFT
	dbw 40, PSYBEAM
	dbw 44, TRI_ATTACK
;   dbw 51, REVELATION
	dbw 58, DOUBLE_EDGE
	db 0 ; no more level-up moves
	
RattlitEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, NIGHT_SHADE
	dbw 1, GROWL
    dbw 5, ECHO
	dbw 10, HEAL_BELL
	dbw 15, CONFUSION
	dbw 20, ECHO
	dbw 25, RAPID_SPIN
	dbw 30, SHADOW_BALL
	dbw 35, ECHO
;	dbw 40, EXIT_PATH
	dbw 45, PSYCHIC_M
	dbw 50, ECHO
	db 0 ; no more level-up moves
	
PiplupEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 6, BUBBLE
	dbw 10, WATER_GUN
	dbw 15, PECK
	dbw 21, BUBBLEBEAM
	dbw 25, BIDE
	dbw 30, AURORA_BEAM
	dbw 36, SURF
	dbw 40, MIST
	dbw 45, DRILL_PECK
	dbw 51, HYDRO_PUMP
	db 0 ; no more evolutions
	
AudinoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, MIND_READER
	dbw 10, SING
	dbw 15, SWIFT
	dbw 20, ECHO
	dbw 25, SAFEGUARD
	dbw 30, CONFUSION
	dbw 35, TRI_ATTACK
	dbw 40, HEAL_BELL
	dbw 45, PSYBEAM
	dbw 50, REST
	dbw 55, RETURN
	db 0 ; no more level-up moves
	
MunchlaxEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, ROLLOUT
	dbw 8, HEADBUTT
	dbw 16, AMNESIA
	dbw 24, REST
	dbw 24, SNORE
	dbw 32, CRUNCH
	dbw 40, BODY_SLAM
	dbw 48, CURSE
	dbw 56, BELLY_DRUM
	dbw 64, HYPER_BEAM
	db 0 ; no more level-up moves
	
MinccinoEvosAttacks:
	dbbw EVOLVE_ITEM, HEART_STONE, CINCCINO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 7, DOUBLESLAP
	dbw 12, ENCORE
	dbw 16, SWIFT
	dbw 20, SING
	dbw 25, KARATE_CHOP
	dbw 32, TAIL_SLAP
	dbw 40, SNORE
	dbw 43, DIG
;	dbw 47, SONIC_SCREAM
	dbw 52, IRON_TAIL
	db 0 ; no more level-up moves
	
CinccinoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 7, DOUBLESLAP
	dbw 12, ENCORE
	dbw 16, SWIFT
	dbw 20, SING
	dbw 25, KARATE_CHOP
	dbw 32, TAIL_SLAP
	dbw 40, SNORE
	dbw 43, DIG
;	dbw 47, SONIC_SCREAM
	dbw 52, IRON_TAIL
	db 0 ; no more level-up moves
	
SphealEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, RAPID_SPIN
	dbw 4, POWDER_SNOW
	dbw 10, DEFENSE_CURL
	dbw 14, ROLLOUT
;	dbw 14, ICE_BALL
	dbw 20, TAKE_DOWN
	dbw 24, ENCORE
	dbw 30, ROCK_SLIDE
	dbw 34, REST
	dbw 40, ICE_BEAM
	dbw 44, EARTHQUAKE
	dbw 50, ROCK_HEAD
	db 0 ; no more level-up moves
	
ShuricornEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, CUT
	dbw 5, SWIFT
	dbw 12, SMOKESCREEN
	dbw 17, MACH_PUNCH
	dbw 24, DOUBLE_TEAM
	dbw 29, FLY
	dbw 36, EXTREMESPEED
;	dbw 41, STUN_CUT
	dbw 48, SWORDS_DANCE
	dbw 53, ROCK_SLASH
	db 0 ; no more level-up moves

;---------------------------------------------------------------------------------------------
_NUM_EVOS_ATTACKS = _NUM_EVOS_ATTACKS + ((EvosAttacksPointers3.End  - EvosAttacksPointers3)/2)
