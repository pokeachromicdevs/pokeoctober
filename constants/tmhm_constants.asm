add_tm: MACRO
if !DEF(TM01)
TM01 EQU const_value
	enum_start 1
endc
	define _\@_1, "TM_\1"
	const _\@_1
	enum \1_TMNUM
ENDM

; see data/moves/tmhm_moves.asm for moves
	add_tm DYNAMICPUNCH ; 00
	add_tm HEADBUTT     ; 01
	add_tm CURSE        ; 02
	add_tm ROLLOUT      ; 03
	add_tm ROAR         ; 04
	add_tm TOXIC        ; 05
	add_tm ZAP_CANNON   ; 06
	add_tm ROCK_SMASH   ; 07
	add_tm PSYCH_UP     ; 08
	add_tm HIDDEN_POWER ; 09
	add_tm SUNNY_DAY    ; 0a
	add_tm SWEET_SCENT  ; 0b
	add_tm SNORE        ; 0c
	add_tm BLIZZARD     ; 0d
	add_tm HYPER_BEAM   ; 0e
	add_tm ICY_WIND     ; 0f
	add_tm PROTECT      ; 10
	add_tm RAIN_DANCE   ; 11
	add_tm GIGA_DRAIN   ; 12
	add_tm ENDURE       ; 13
	add_tm FRUSTRATION  ; 14
	add_tm SOLARBEAM    ; 15
	add_tm IRON_TAIL    ; 16
	add_tm DRAGONBREATH ; 17
	add_tm THUNDER      ; 18
	add_tm EARTHQUAKE   ; 19
	add_tm RETURN       ; 1a
	add_tm DIG          ; 1b
	add_tm PSYCHIC_M    ; 1c
	add_tm SHADOW_BALL  ; 1d
	add_tm MUD_SLAP     ; 1e
	add_tm DOUBLE_TEAM  ; 1f
	add_tm ICE_PUNCH    ; 20
	add_tm SWAGGER      ; 21
	add_tm SLEEP_TALK   ; 22
	add_tm SLUDGE_BOMB  ; 23
	add_tm SANDSTORM    ; 24
	add_tm FIRE_BLAST   ; 25
	add_tm SWIFT        ; 26
	add_tm DEFENSE_CURL ; 27
	add_tm THUNDERPUNCH ; 28
	add_tm DREAM_EATER  ; 29
	add_tm DETECT       ; 2a
	add_tm REST         ; 2b
	add_tm ATTRACT      ; 2c
	add_tm THIEF        ; 2d
	add_tm STEEL_WING   ; 2e
	add_tm FIRE_PUNCH   ; 2f
	add_tm FURY_CUTTER  ; 30
	add_tm NIGHTMARE    ; 31
	add_tm ROCK_SLIDE
	add_tm THUNDER_WAVE
	add_tm SEISMIC_TOSS
	add_tm TRI_ATTACK
	add_tm BODY_SLAM
	add_tm WHIRLWIND
	add_tm SWORDS_DANCE
	add_tm BUBBLEBEAM
	add_tm SKULL_BASH
	add_tm ICE_BEAM
	add_tm THUNDERBOLT
	add_tm FLAMETHROWER
	add_tm GUST
	add_tm METAL_CLAW
	add_tm FLAME_WHEEL
	add_tm PIN_MISSILE
	add_tm SLUDGE
	add_tm WATERFALL
	add_tm CRUNCH
	add_tm CROSS_CUTTER
	add_tm TWISTER
	add_tm PETAL_DANCE
	add_tm HAZE
	add_tm ROCK_HEAD
	add_tm MEGAPHONE
	add_tm TEMPT
	add_tm NIGHT_SHADE
	add_tm FUTURE_SIGHT
	add_tm FORESIGHT
	add_tm MIND_READER
	add_tm CROSS_CHOP
	add_tm SCARY_FACE
	add_tm SPIKES
	add_tm FAINT_ATTACK
	add_tm JUMP_KICK
	add_tm EXTREMESPEED
	add_tm MACH_PUNCH
	;add_tm STUN_CUT ; XXX
	;add_tm UPPERCUT ; XXX
	;add_tm THUNDER_JOLT ; XXX
	;add_tm SHADOW_PUNCH ; XXX
	;add_tm DRAGON_SMASH ; XXX
	;add_tm DEEP_DIVE ; XXX
	;add_tm IRON_HEAD ; XXX
	;add_tm EERIE_LIGHT ; XXX

NUM_TMS EQU const_value - TM01

add_hm: MACRO
if !DEF(HM01)
HM01 EQU const_value
endc
	define _\@_1, "HM_\1"
	const _\@_1
	enum \1_TMNUM
ENDM

	add_hm UPROOT       ; 01
	add_hm WIND_RIDE    ; 02
	add_hm WATER_SPORT  ; 03
	add_hm STRONG_ARM   ; 04
	add_hm BRIGHT_MOSS  ; 05
	add_hm WHIRLPOOL    ; 06
	add_hm BOUNCE       ; 07

NUM_HMS EQU const_value - HM01

add_mt: MACRO
	enum \1_TMNUM
ENDM

	add_mt CUT      ; 01
	add_mt FLY      ; 02
	add_mt FLASH    ; 03
	add_mt STRENGTH ; 04
	add_mt SURF     ; 05

NUM_TM_HM_TUTOR EQU __enum__ + -1
