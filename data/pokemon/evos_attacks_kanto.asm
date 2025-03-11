EvosAttacksPointers1::
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
	dw MewEvosAttacks
.End:

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 21, RAZOR_LEAF
	dbw 25, TAKE_DOWN
;	dbw 30, TOXIC_LEECH
	dbw 36, SLEEP_POWDER
	dbw 40, DOUBLE_EDGE
	dbw 45, SYNTHESIS
	dbw 51, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 23, RAZOR_LEAF
	dbw 27, TAKE_DOWN
;	dbw 32, TOXIC_LEECH
	dbw 38, SLEEP_POWDER
	dbw 42, DOUBLE_EDGE
	dbw 47, SYNTHESIS
	dbw 53, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 23, RAZOR_LEAF
	dbw 27, TAKE_DOWN
;	dbw 32, TOXIC_LEECH
	dbw 40, SLEEP_POWDER
	dbw 44, DOUBLE_EDGE
	dbw 49, SYNTHESIS
	dbw 55, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, BITE
	dbw 10, EMBER
	dbw 15, RAGE
	dbw 21, FIRE_SPIN
	dbw 25, SMOKESCREEN
	dbw 30, SCARY_FACE
	dbw 36, FLAMETHROWER
	dbw 40, SLASH
	dbw 45, CRUNCH
	dbw 51, THRASH
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, BITE
	dbw 10, EMBER
	dbw 15, RAGE
	dbw 23, FIRE_SPIN
	dbw 27, SMOKESCREEN
	dbw 32, SCARY_FACE
	dbw 38, FLAMETHROWER
	dbw 42, SLASH
	dbw 47, CRUNCH
	dbw 53, THRASH
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, BITE
	dbw 10, EMBER
	dbw 15, RAGE
	dbw 23, FIRE_SPIN
	dbw 27, SMOKESCREEN
	dbw 32, SCARY_FACE
	dbw 40, FLAMETHROWER
	dbw 44, SLASH
	dbw 49, CRUNCH
	dbw 55, THRASH
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, LAVA_BURST ; POUND
	dbw 1, TAIL_WHIP
	dbw 6, WITHDRAW
	dbw 10, BUBBLE
	dbw 15, BITE
	dbw 21, WATER_GUN
	dbw 25, PROTECT
	dbw 30, RAPID_SPIN
	dbw 36, SURF
	dbw 40, RAIN_DANCE
	dbw 45, SKULL_BASH
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, TAIL_WHIP
	dbw 6, WITHDRAW
	dbw 10, BUBBLE
	dbw 15, BITE
	dbw 23, WATER_GUN
	dbw 27, PROTECT
	dbw 32, RAPID_SPIN
	dbw 38, SURF
	dbw 42, RAIN_DANCE
	dbw 47, SKULL_BASH
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, TAIL_WHIP
	dbw 6, WITHDRAW
	dbw 10, BUBBLE
	dbw 15, BITE
	dbw 23, WATER_GUN
	dbw 27, PROTECT
	dbw 32, RAPID_SPIN
	dbw 40, SURF
	dbw 44, RAIN_DANCE
	dbw 49, SKULL_BASH
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 7, HARDEN
	dbw 13, POISONPOWDER
	dbw 17, GUST
	dbw 22, SIGNAL_BEAM
	dbw 25, SLEEP_POWDER
	dbw 29, SAFEGUARD
	dbw 34, FLY
	dbw 37, STUN_SPORE
	dbw 41, LUNGE
	dbw 46, WHIRLWIND
	dbw 49, PSYCHIC_M
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 13, FOCUS_ENERGY
	dbw 17, RAGE
	dbw 22, TWINEEDLE
	dbw 25, AGILITY
	dbw 29, PIN_MISSILE
	dbw 34, FLY
	dbw 37, SPIKES
	dbw 41, LUNGE
	dbw 46, TOXIC
	dbw 49, SLUDGE_BOMB
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, GUST
	dbw 14, MUD_SLAP
	dbw 19, WING_ATTACK
	dbw 23, WHIRLWIND
	dbw 28, RAZOR_WIND
	dbw 33, MIRROR_MOVE
	dbw 37, TWISTER
	dbw 42, AGILITY
	dbw 47, FLY
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, GUST
	dbw 14, MUD_SLAP
	dbw 21, WING_ATTACK
	dbw 25, WHIRLWIND
	dbw 30, RAZOR_WIND
	dbw 35, MIRROR_MOVE
	dbw 39, TWISTER
	dbw 44, AGILITY
	dbw 49, FLY
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, GUST
	dbw 14, MUD_SLAP
	dbw 21, WING_ATTACK
	dbw 25, WHIRLWIND
	dbw 30, RAZOR_WIND
	dbw 35, MIRROR_MOVE
	dbw 35, TWISTER
	dbw 46, AGILITY
	dbw 51, FLY
	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, PURSUIT
	dbw 9, QUICK_ATTACK
	dbw 13, HYPER_FANG
	dbw 18, FOCUS_ENERGY
	dbw 22, BITE
	dbw 27, DETECT
	dbw 31, SCREECH
	dbw 36, CRUNCH
	dbw 40, DIG
	dbw 45, BODY_SLAM
	dbw 49, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, PURSUIT
	dbw 9, QUICK_ATTACK
	dbw 13, HYPER_FANG
	dbw 18, FOCUS_ENERGY
	dbw 24, BITE
	dbw 29, DETECT
	dbw 33, SCREECH
	dbw 38, CRUNCH
	dbw 42, DIG
	dbw 47, BODY_SLAM
	dbw 51, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 1, GROWL
	dbw 4, PURSUIT
	dbw 9, MIRROR_MOVE
	dbw 13, FURY_ATTACK
	dbw 18, WING_ATTACK
	dbw 24, TERRORIZE
	dbw 29, FAINT_ATTACK
	dbw 33, FLY
	dbw 38, DRILL_PECK
	dbw 44, AGILITY
	dbw 49, SKY_ATTACK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 1, GROWL
	dbw 4, PURSUIT
	dbw 9, MIRROR_MOVE
	dbw 13, FURY_ATTACK
	dbw 18, WING_ATTACK
	dbw 26, TERRORIZE
	dbw 31, FAINT_ATTACK
	dbw 35, FLY
	dbw 40, DRILL_PECK
	dbw 46, AGILITY
	dbw 51, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 14, ACID
	dbw 18, GLARE
	dbw 23, SCARY_FACE
	dbw 28, SLAM
;	dbw 32, POISON_FANG
	dbw 37, HAZE
	dbw 42, MEAN_LOOK
	dbw 46, BODY_SLAM
;	dbw 51, GUNK_BEAM
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 14, ACID
	dbw 18, GLARE
	dbw 25, SCARY_FACE
	dbw 30, SLAM
;	dbw 34, POISON_FANG
	dbw 39, HAZE
	dbw 44, MEAN_LOOK
	dbw 48, BODY_SLAM
;	dbw 53, GUNK_BEAM
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, QUICK_ATTACK
	dbw 11, THUNDER_WAVE
;	dbw 15, THUNDER_JOLT
	dbw 21, DOUBLE_TEAM
	dbw 26, SWIFT
	dbw 30, FAINT_ATTACK
	dbw 36, THUNDERBOLT
	dbw 41, AGILITY
	dbw 45, SKULL_BASH
	dbw 51, LIGHT_SCREEN
	dbw 56, THUNDER
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, QUICK_ATTACK
	dbw 11, THUNDER_WAVE
;   dbw 15, THUNDER_JOLT
	dbw 21, DOUBLE_TEAM
	dbw 26, SWIFT
	dbw 30, FAINT_ATTACK
	dbw 36, THUNDERBOLT
	dbw 41, AGILITY
	dbw 45, SKULL_BASH
	dbw 51, LIGHT_SCREEN
	dbw 56, THUNDER
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 4, POISON_STING
	dbw 9, MUD_SLAP
	dbw 14, RAPID_SPIN
	dbw 18, DEFENSE_CURL
	dbw 23, DIG
	dbw 28, FURY_SWIPES
	dbw 32, ROLLOUT
	dbw 37, PROTECT
	dbw 42, METAL_CLAW
	dbw 46, SANDSTORM
	dbw 51, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 4, POISON_STING
	dbw 9, MUD_SLAP
	dbw 14, RAPID_SPIN
	dbw 18, DEFENSE_CURL
	dbw 25, DIG
	dbw 30, FURY_SWIPES
	dbw 34, ROLLOUT
	dbw 39, PROTECT
	dbw 44, METAL_CLAW
	dbw 48, SANDSTORM
	dbw 53, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 6, SCRATCH
	dbw 12, POISON_STING
	dbw 18, DOUBLE_KICK
	dbw 24, BITE
;	dbw 30, POISON_FANG
	dbw 36, FURY_SWIPES
	dbw 42, PROTECT
	dbw 48, SLUDGE_BOMB
	dbw 54, SKULL_BASH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 6, SCRATCH
	dbw 12, POISON_STING
	dbw 20, DOUBLE_KICK
	dbw 26, BITE
;	dbw 32, POISON_FANG
	dbw 38, FURY_SWIPES
	dbw 44, PROTECT
	dbw 50, SLUDGE_BOMB
	dbw 56, SKULL_BASH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, DEFENSE_CURL
	dbw 6, SCRATCH
	dbw 12, POISON_STING
	dbw 20, DOUBLE_KICK
	dbw 26, BITE
;	dbw 32, POISON_FANG
	dbw 38, FURY_SWIPES
	dbw 44, PROTECT
	dbw 50, SLUDGE_BOMB
	dbw 56, SKULL_BASH
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 6, PECK
	dbw 12, POISON_STING
	dbw 18, DOUBLE_KICK
	dbw 24, HORN_ATTACK
;	dbw 30, POISON_FANG
	dbw 36, FURY_ATTACK
	dbw 42, SWAGGER
	dbw 48, SLUDGE_BOMB
	dbw 54, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 6, PECK
	dbw 12, POISON_STING
	dbw 20, DOUBLE_KICK
	dbw 26, HORN_ATTACK
;	dbw 32, POISON_FANG
	dbw 38, FURY_ATTACK
	dbw 44, SWAGGER
	dbw 50, SLUDGE_BOMB
	dbw 56, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 6, PECK
	dbw 12, POISON_STING
	dbw 20, DOUBLE_KICK
	dbw 26, HORN_ATTACK
;	dbw 32, POISON_FANG
	dbw 38, FURY_ATTACK
	dbw 44, SWAGGER
	dbw 50, SLUDGE_BOMB
	dbw 56, HORN_DRILL
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, ENCORE
	dbw 11, DOUBLESLAP
	dbw 18, METRONOME
	dbw 23, SWIFT
	dbw 29, SWEET_KISS
	dbw 36, MINIMIZE
	dbw 41, DIZZY_PUNCH
	dbw 47, MOONLIGHT
;	dbw 54, STAR_FREEZE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, ENCORE
	dbw 11, DOUBLESLAP
	dbw 18, METRONOME
	dbw 23, SWIFT
	dbw 29, SWEET_KISS
	dbw 36, MINIMIZE
	dbw 41, DIZZY_PUNCH
	dbw 47, MOONLIGHT
;	dbw 54, STAR_FREEZE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 6, QUICK_ATTACK
	dbw 11, SPITE
	dbw 17, PSYCH_UP
	dbw 22, FIRE_SPIN
	dbw 28, FAINT_ATTACK
;	dbw 33, LAVA_BURST
	dbw 39, WILL_O_WISP
	dbw 44, CONFUSE_RAY
	dbw 50, FIRE_BLAST
	dbw 55, PSYCHIC
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 6, QUICK_ATTACK
	dbw 11, SPITE
	dbw 17, PSYCH_UP
	dbw 22, FIRE_SPIN
	dbw 28, FAINT_ATTACK
;	dbw 33, LAVA_BURST
	dbw 39, WILL_O_WISP
	dbw 44, CONFUSE_RAY
	dbw 50, FIRE_BLAST
	dbw 55, PSYCHIC
	db 0 ; no more level-up moves


JigglypuffEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SING
	dbw 1, DEFENSE_CURL
	dbw 6, MEGAPHONE
	dbw 11, DOUBLESLAP
	dbw 18, ROLLOUT
	dbw 24, ECHO
	dbw 30, CHARM
;	dbw 36, SONIC_SCREAM
	dbw 42, REST
	dbw 48, WHIRLWIND
	dbw 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SING
	dbw 1, DEFENSE_CURL
	dbw 6, MEGAPHONE
	dbw 11, DOUBLESLAP
	dbw 18, ROLLOUT
	dbw 24, ECHO
	dbw 30, CHARM
;	dbw 36, SONIC_SCREAM
	dbw 42, REST
	dbw 48, WHIRLWIND
	dbw 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 6, POISON_STING
	dbw 11, BITE
	dbw 17, WING_ATTACK
	dbw 22, CONFUSE_RAY
;	dbw 28, TOXIC_LEECH
	dbw 33, SCREECH
	dbw 39, CRUNCH
	dbw 44, FLY
	dbw 50, HAZE
	dbw 55, SLUDGE_BOMB
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_ITEM, POISON_STONE, CROBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 6, POISON_STING
	dbw 11, BITE
	dbw 17, WING_ATTACK
	dbw 22, CONFUSE_RAY
;	dbw 30, TOXIC_LEECH
	dbw 35, SCREECH
	dbw 41, CRUNCH
	dbw 46, FLY
	dbw 52, HAZE
	dbw 57, SLUDGE_BOMB
	db 0 ; no more level-up moves

OddishEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, STUN_SPORE
	dbw 5, LEECH_SEED
	dbw 10, POISONPOWDER
	dbw 13, ACID
	dbw 18, SLEEP_POWDER
	dbw 23, MEGA_DRAIN
	dbw 26, CHARM
	dbw 31, GIGA_DRAIN
	dbw 36, ECHO
	dbw 39, TOXIC
	dbw 44, MOONLIGHT
	dbw 50, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	dbbw EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, STUN_SPORE
	dbw 5, LEECH_SEED
	dbw 10, POISONPOWDER
	dbw 13, ACID
	dbw 18, SLEEP_POWDER
	dbw 25, MEGA_DRAIN
	dbw 28, CHARM
	dbw 33, GIGA_DRAIN
	dbw 38, ECHO
	dbw 41, TOXIC
	dbw 46, MOONLIGHT
	dbw 52, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, STUN_SPORE
	dbw 5, LEECH_SEED
	dbw 10, POISONPOWDER
	dbw 13, ACID
	dbw 18, SLEEP_POWDER
	dbw 25, MEGA_DRAIN
	dbw 28, CHARM
	dbw 33, GIGA_DRAIN
	dbw 38, ECHO
	dbw 41, TOXIC
	dbw 46, MOONLIGHT
	dbw 52, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ABSORB
	dbw 6, STUN_SPORE
	dbw 10, LEECH_LIFE
	dbw 17, MEGA_DRAIN
	dbw 23, POISONPOWDER
;	dbw 27, DUAL_PINCER
	dbw 32, GIGA_DRAIN
	dbw 38, SPORE
	dbw 42, GROWTH
	dbw 47, SLASH
	dbw 53, LUNGE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ABSORB
	dbw 6, STUN_SPORE
	dbw 10, LEECH_LIFE
	dbw 17, MEGA_DRAIN
	dbw 23, POISONPOWDER
;	dbw 29, DUAL_PINCER
	dbw 34, GIGA_DRAIN
	dbw 40, SPORE
	dbw 44, GROWTH
	dbw 49, SLASH
	dbw 55, LUNGE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 4, LEECH_LIFE
	dbw 10, SUPERSONIC
	dbw 14, POISONPOWDER
	dbw 20, CONFUSION
	dbw 24, SIGNAL_BEAM
	dbw 30, STUN_SPORE
	dbw 34, PSYBEAM
;	dbw 40, TOXIC_LEECH
	dbw 44, SLEEP_POWDER
	dbw 50, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 4, LEECH_LIFE
	dbw 10, SUPERSONIC
	dbw 14, POISONPOWDER
	dbw 20, CONFUSION
	dbw 24, SIGNAL_BEAM
	dbw 30, STUN_SPORE
	dbw 38, PSYBEAM
;	dbw 42, TOXIC_LEECH
	dbw 46, SLEEP_POWDER
	dbw 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 8, MAGNITUDE
	dbw 12, QUICK_ATTACK
	dbw 16, DIG
	dbw 24, SAND_ATTACK
	dbw 28, SCREECH
	dbw 32, FAINT_ATTACK
	dbw 40, SLASH
	dbw 44, EARTHQUAKE
	dbw 48, EXTREMESPEED
	dbw 56, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 8, MAGNITUDE
	dbw 12, QUICK_ATTACK
	dbw 16, DIG
	dbw 24, SAND_ATTACK
	dbw 30, SCREECH
	dbw 34, FAINT_ATTACK
	dbw 42, SLASH
	dbw 46, EARTHQUAKE
	dbw 50, EXTREMESPEED
	dbw 58, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, THIEF
	dbw 12, BITE
	dbw 16, PAY_DAY
	dbw 22, FAINT_ATTACK
	dbw 28, FURY_SWIPES
	dbw 32, SCREECH
	dbw 38, COIN_HURL
	dbw 44, CHARM
	dbw 48, SWAGGER
	dbw 54, SLASH
    db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, THIEF
	dbw 12, BITE
	dbw 16, PAY_DAY
	dbw 22, FAINT_ATTACK
	dbw 28, FURY_SWIPES
	dbw 34, SCREECH
	dbw 40, COIN_HURL
	dbw 46, CHARM
	dbw 50, SWAGGER
	dbw 56, SLASH
    db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 6, DISABLE
	dbw 10, WATER_GUN
	dbw 16, CONFUSION
	dbw 20, SCREECH
	dbw 26, BUBBLEBEAM
	dbw 30, BIDE
	dbw 36, FURY_SWIPES
	dbw 40, PSYCH_UP
	dbw 46, ICE_PUNCH
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 6, DISABLE
	dbw 10, WATER_GUN
	dbw 16, CONFUSION
	dbw 20, SCREECH
	dbw 26, BUBBLEBEAM
	dbw 30, BIDE
	dbw 38, FURY_SWIPES
	dbw 42, PSYCH_UP
	dbw 48, ICE_PUNCH
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, LOW_KICK
	dbw 12, RAGE
	dbw 16, KARATE_CHOP
	dbw 22, FURY_SWIPES
	dbw 28, SEISMIC_TOSS
	dbw 32, SWAGGER
	dbw 38, STRENGTH
	dbw 44, SCREECH
	dbw 48, CROSS_CHOP
	dbw 54, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, LOW_KICK
	dbw 12, RAGE
	dbw 16, KARATE_CHOP
	dbw 22, FURY_SWIPES
	dbw 28, SEISMIC_TOSS
	dbw 34, SWAGGER
	dbw 40, STRENGTH
	dbw 46, SCREECH
	dbw 50, CROSS_CHOP
	dbw 56, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, ARCANINE
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

ArcanineEvosAttacks:
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

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 10, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 18, DOUBLESLAP
	dbw 23, ROLLOUT
	dbw 26, RAIN_DANCE
	dbw 31, BUBBLEBEAM
	dbw 36, BODY_SLAM
	dbw 39, SURF
	dbw 44, BELLY_DRUM
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 10, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 18, DOUBLESLAP
	dbw 23, ROLLOUT
	dbw 28, RAIN_DANCE
	dbw 33, BUBBLEBEAM
	dbw 38, BODY_SLAM
	dbw 41, SURF
	dbw 46, BELLY_DRUM
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 10, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 18, DOUBLESLAP
	dbw 23, ROLLOUT
	dbw 28, RAIN_DANCE
	dbw 33, BUBBLEBEAM
	dbw 38, BODY_SLAM
	dbw 41, SURF
	dbw 46, BELLY_DRUM
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, REST
	dbw 10, SLEEP_TALK
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbbw EVOLVE_TRADE, -1, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, REST
	dbw 10, SLEEP_TALK
	dbw 19, CONFUSION
	dbw 24, KINESIS
	dbw 27, DISABLE
	dbw 32, PSYBEAM
	dbw 36, RECOVER
	dbw 41, FUTURE_SIGHT
	dbw 45, REFLECT
	dbw 50, TRI_ATTACK
	dbw 54, PSYCHIC_M
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, REST
	dbw 10, SLEEP_TALK
	dbw 19, CONFUSION
	dbw 24, KINESIS
	dbw 27, DISABLE
	dbw 32, PSYBEAM
	dbw 36, RECOVER
	dbw 41, FUTURE_SIGHT
	dbw 45, REFLECT
	dbw 50, TRI_ATTACK
	dbw 54, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, ROCK_SMASH
	dbw 5, FOCUS_ENERGY
	dbw 12, SEISMIC_TOSS
	dbw 17, KARATE_CHOP
	dbw 23, FORESIGHT
	dbw 28, STRENGTH
	dbw 34, VITAL_THROW
	dbw 39, SUBMISSION
	dbw 45, SCARY_FACE
	dbw 50, CROSS_CHOP
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	dbbw EVOLVE_TRADE, -1, MACHAMP
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, ROCK_SMASH
	dbw 5, FOCUS_ENERGY
	dbw 12, SEISMIC_TOSS
	dbw 17, KARATE_CHOP
	dbw 23, FORESIGHT
	dbw 28, STRENGTH
	dbw 36, VITAL_THROW
	dbw 41, SUBMISSION
	dbw 47, SCARY_FACE
	dbw 52, CROSS_CHOP
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 1, ROCK_SMASH
	dbw 5, FOCUS_ENERGY
	dbw 12, SEISMIC_TOSS
	dbw 17, KARATE_CHOP
	dbw 23, FORESIGHT
	dbw 28, STRENGTH
	dbw 36, VITAL_THROW
	dbw 41, SUBMISSION
	dbw 47, SCARY_FACE
	dbw 52, CROSS_CHOP
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 5, WRAP
	dbw 10, SWEET_SCENT
	dbw 13, ACID
	dbw 18, SLEEP_POWDER
	dbw 23, RAZOR_LEAF
	dbw 26, POISONPOWDER
	dbw 31, GIGA_DRAIN
	dbw 36, STUN_SPORE
	dbw 39, SLAM
	dbw 44, SYNTHESIS
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	dbbw EVOLVE_ITEM, SUN_STONE, BELLIGNAN
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 5, WRAP
	dbw 10, SWEET_SCENT
	dbw 13, ACID
	dbw 18, SLEEP_POWDER
	dbw 25, RAZOR_LEAF
	dbw 28, POISONPOWDER
	dbw 33, GIGA_DRAIN
	dbw 38, STUN_SPORE
	dbw 41, SLAM
	dbw 46, SYNTHESIS
	dbw 52, SOLARBEAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 5, WRAP
	dbw 10, SWEET_SCENT
	dbw 13, ACID
	dbw 18, SLEEP_POWDER
	dbw 25, RAZOR_LEAF
	dbw 28, POISONPOWDER
	dbw 33, GIGA_DRAIN
	dbw 38, STUN_SPORE
	dbw 41, SLAM
	dbw 46, SYNTHESIS
	dbw 52, SOLARBEAM
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, SUPERSONIC
	dbw 6, BUBBLE
	dbw 12, CONSTRICT
	dbw 16, ACID
	dbw 20, WRAP
	dbw 26, BUBBLEBEAM
	dbw 32, BARRIER
	dbw 36, TOXIC
	dbw 40, SURF
	dbw 46, SCREECH
	dbw 52, SLUDGE_BOMB
	dbw 56, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, SUPERSONIC
	dbw 6, BUBBLE
	dbw 12, CONSTRICT
	dbw 16, ACID
	dbw 20, WRAP
	dbw 26, BUBBLEBEAM
	dbw 34, BARRIER
	dbw 38, TOXIC
	dbw 42, SURF
	dbw 48, SCREECH
	dbw 54, SLUDGE_BOMB
	dbw 58, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 5, ENDURE
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 22, ROLLOUT
	dbw 27, SELFDESTRUCT
	dbw 33, ROCK_SLIDE
	dbw 38, SEISMIC_TOSS
	dbw 44, EARTHQUAKE
	dbw 49, EXPLOSION
	dbw 55, ROCK_HEAD
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_TRADE, -1, GOLEM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 5, ENDURE
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 22, ROLLOUT
	dbw 29, SELFDESTRUCT
	dbw 35, ROCK_SLIDE
	dbw 40, SEISMIC_TOSS
	dbw 46, EARTHQUAKE
	dbw 51, EXPLOSION
	dbw 57, ROCK_HEAD
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 5, ENDURE
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 22, ROLLOUT
	dbw 29, SELFDESTRUCT
	dbw 35, ROCK_SLIDE
	dbw 40, SEISMIC_TOSS
	dbw 46, EARTHQUAKE
	dbw 51, EXPLOSION
	dbw 57, ROCK_HEAD
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
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

RapidashEvosAttacks:
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
	dbw 44, AGILITY
	dbw 49, SUNNY_DAY
	dbw 54, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, PSYWAVE
	dbw 11, WATER_GUN
	dbw 16, CURSE
	dbw 22, CONFUSION
	dbw 27, DISABLE
	dbw 33, HEADBUTT
	dbw 38, SURF
	dbw 44, REST
	dbw 49, AMNESIA
	dbw 55, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	dbbw EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 5, PSYWAVE
	dbw 11, WATER_GUN
	dbw 16, CURSE
	dbw 22, CONFUSION
	dbw 27, DISABLE
	dbw 33, HEADBUTT
	dbw 40, SURF
	dbw 46, REST
	dbw 51, AMNESIA
	dbw 57, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 6, FLASH
	dbw 11, SONICBOOM
	dbw 16, THUNDER_WAVE
	dbw 21, MAGNET_BOMB
	dbw 26, SPARK
	dbw 32, LOCK_ON
	dbw 38, SWIFT
	dbw 43, MAGNETISM
	dbw 48, SCREECH
	dbw 54, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 6, FLASH
	dbw 11, SONICBOOM
	dbw 16, THUNDER_WAVE
	dbw 21, MAGNET_BOMB
	dbw 26, SPARK
	dbw 34, LOCK_ON
	dbw 40, SWIFT
	dbw 45, MAGNETISM
	dbw 50, SCREECH
	dbw 56, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LUXSWAN
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 6, FALSE_SWIPE
	dbw 12, SAND_ATTACK
	dbw 17, FURY_ATTACK
	dbw 23, CUT
	dbw 29, FAINT_ATTACK
	dbw 34, FLY
	dbw 40, BATON_PASS
	dbw 46, SLASH
	dbw 51, SWORDS_DANCE
;	dbw 57, STUN_CUT
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
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

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1,	QUICK_ATTACK
	dbw 1,	GROWL
	dbw 6,	PURSUIT
	dbw 12,	PECK
	dbw 18,	LEER
	dbw 24,	FURY_ATTACK
	dbw 30,	RAGE
	dbw 38,	JUMP_KICK
	dbw 44,	AGILITY
	dbw 50,	DRILL_PECK
	dbw 56,	EXTREMESPEED
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, DOUBLESLAP
	dbw 1, GROWL
	dbw 5, HEADBUTT
	dbw 9, WATER_GUN
	dbw 14, ENCORE
	dbw 18, AURORA_BEAM
;	dbw 23, DEEP_DIVE
;	dbw 27, ICE_MIST
	dbw 32, TAKE_DOWN
	dbw 36, REST
	dbw 41, SURF	
	dbw 45, SAFEGUARD
	dbw 51, ICE_BEAM
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLESLAP
	dbw 1, GROWL
	dbw 5, HEADBUTT
	dbw 9, WATER_GUN
	dbw 14, ENCORE
	dbw 18, AURORA_BEAM
;	dbw 23, DEEP_DIVE
;	dbw 27, ICE_MIST
	dbw 32, TAKE_DOWN
	dbw 38, REST
	dbw 43, SURF	
	dbw 47, SAFEGUARD
	dbw 53, ICE_BEAM
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HARDEN
	dbw 5, ABSORB
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

MukEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HARDEN
	dbw 5, ABSORB
	dbw 10, POISON_GAS
	dbw 14, SLUDGE
	dbw 19, MUD_SLAP
	dbw 24, TOXIC
	dbw 28, DISABLE
	dbw 23, MINIMIZE
	dbw 33, SCREECH
	dbw 38, MINIMIZE
	dbw 44, BODY_SLAM
	dbw 51, ACID_ARMOR
	dbw 56, SLUDGE_BOMB
	db 0 ; no more level-up moves
	
; ------ all Shadow learnsets above this line ----- 

ShellderEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 1, LICK
	dbw 9, SUPERSONIC
	dbw 17, AURORA_BEAM
	dbw 25, PROTECT
	dbw 33, LEER
	dbw 41, CLAMP
	dbw 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, SUPERSONIC
	dbw 1, AURORA_BEAM
	dbw 1, PROTECT
	dbw 4, SPIKE_CANNON
	dbw 33, SPIKES
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 28, CONFUSE_RAY
	dbw 33, DREAM_EATER
	dbw 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbbw EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SPITE
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 1, SPITE
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbbw EVOLVE_TRADE, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, HARDEN
	dbw 7, BIND
	dbw 10, BIDE
	dbw 17, ROCK_THROW
	dbw 20, SLAM
	dbw 27, RAGE ; SAND_TOMB
	dbw 30, RAGE
	dbw 40, SANDSTORM
	dbw 47, DUST_DEVIL
	dbw 50, ROAR
	dbw 57, EARTHQUAKE
	dbw 60, CURSE
	dbw 67, ROCK_SLASH
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 10, DISABLE
	dbw 18, CONFUSION
	dbw 25, HEADBUTT
	dbw 31, POISON_GAS
	dbw 36, MEDITATE
	dbw 40, PSYCHIC_M
	dbw 43, PSYCH_UP
	dbw 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 1, DISABLE
	dbw 1, CONFUSION
	dbw 10, DISABLE
	dbw 18, CONFUSION
	dbw 25, HEADBUTT
	dbw 33, POISON_GAS
	dbw 40, MEDITATE
	dbw 49, PSYCHIC_M
	dbw 55, PSYCH_UP
	dbw 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, HARDEN
	dbw 23, STOMP
	dbw 27, GUILLOTINE
	dbw 34, PROTECT
	dbw 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 1, VICEGRIP
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, HARDEN
	dbw 23, STOMP
	dbw 27, GUILLOTINE
	dbw 38, PROTECT
	dbw 49, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 9, SCREECH
	dbw 17, SONICBOOM
	dbw 23, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 33, LIGHT_SCREEN
	dbw 37, SWIFT
	dbw 39, EXPLOSION
	dbw 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, SONICBOOM
	dbw 1, SELFDESTRUCT
	dbw 9, SCREECH
	dbw 17, SONICBOOM
	dbw 23, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 34, LIGHT_SCREEN
	dbw 40, SWIFT
	dbw 44, EXPLOSION
	dbw 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 7, REFLECT
	dbw 13, LEECH_SEED
	dbw 19, CONFUSION
	dbw 25, STUN_SPORE
	dbw 31, POISONPOWDER
	dbw 37, SLEEP_POWDER
	dbw 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, CONFUSION
	dbw 1, STOMP
	dbw 31, EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, LEER
	dbw 21, FOCUS_ENERGY
	dbw 25, BONEMERANG
	dbw 29, RAGE
	dbw 33, FALSE_SWIPE
	dbw 37, THRASH
	dbw 41, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 1, BONE_CLUB
	dbw 1, HEADBUTT
	dbw 4, SWORDS_DANCE
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, LEER
	dbw 21, FOCUS_ENERGY
	dbw 25, BONEMERANG
	dbw 32, RAGE
	dbw 39, FALSE_SWIPE
	dbw 46, THRASH
	dbw 53, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLE_KICK
	dbw 6, MEDITATE
	dbw 11, ROLLING_KICK
	dbw 16, JUMP_KICK
	dbw 21, FOCUS_ENERGY
	dbw 26, HI_JUMP_KICK
	dbw 31, MIND_READER
	dbw 36, FORESIGHT
	dbw 41, ENDURE
	dbw 46, MEGA_KICK
	dbw 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 7, AGILITY
	dbw 13, PURSUIT
	dbw 26, THUNDERPUNCH
	dbw 26, ICE_PUNCH
	dbw 26, FIRE_PUNCH
	dbw 32, MACH_PUNCH
	dbw 38, MEGA_PUNCH
	dbw 44, DETECT
	dbw 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LICKILICKY
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 1, SUPERSONIC
	dbw 6, WRAP
	dbw 11, DEFENSE_CURL
	dbw 17, STOMP
	dbw 22, SEISMIC_TOSS
	dbw 28, DISABLE
	dbw 33, ROLLOUT
	dbw 39, SLAM
	dbw 44, MAGNITUDE
	dbw 50, SCREECH
	dbw 55, BODY_SLAM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 9, SMOG
	dbw 17, SELFDESTRUCT
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 33, HAZE
	dbw 41, EXPLOSION
	dbw 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 1, SMOG
	dbw 1, SELFDESTRUCT
	dbw 9, SMOG
	dbw 17, SELFDESTRUCT
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 33, HAZE
	dbw 44, EXPLOSION
	dbw 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw	1, TACKLE
	dbw 1, LEER
	dbw 1, HORN_ATTACK
	dbw 6, FURY_ATTACK
	dbw 12, STOMP
	dbw 19, MAGNITUDE
	dbw 25, TAKE_DOWN
	dbw 31, ROCK_HEAD
	dbw 38, SCARY_FACE
	dbw 44, SKULL_BASH
	dbw 50, MEGAHORN
	dbw 57, HORN_DRILL
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	dbw	1, TACKLE
	dbw 1, LEER
	dbw 1, HORN_ATTACK
	dbw 6, FURY_ATTACK
	dbw 12, STOMP
	dbw 19, MAGNITUDE
	dbw 25, TAKE_DOWN
	dbw 31, ROCK_HEAD
	dbw 38, SCARY_FACE
	dbw 46, SKULL_BASH
	dbw 52, MEGAHORN
	dbw 59, HORN_DRILL
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, GROWL
	dbw 9, TAIL_WHIP
	dbw 13, SOFTBOILED
	dbw 17, DOUBLESLAP
	dbw 23, MINIMIZE
	dbw 29, SING
	dbw 35, EGG_BOMB
	dbw 41, DEFENSE_CURL
	dbw 49, LIGHT_SCREEN
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
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

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 7, LEER
	dbw 13, BITE
	dbw 19, TAIL_WHIP
	dbw 25, MEGA_PUNCH
	dbw 31, RAGE
	dbw 37, ENDURE
	dbw 43, DIZZY_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 8, SMOKESCREEN
	dbw 15, LEER
	dbw 22, WATER_GUN
	dbw 29, TWISTER
	dbw 36, AGILITY
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbbw EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, SMOKESCREEN
	dbw 1, LEER
	dbw 1, WATER_GUN
	dbw 8, SMOKESCREEN
	dbw 15, LEER
	dbw 22, WATER_GUN
	dbw 29, TWISTER
	dbw 40, AGILITY
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 10, SUPERSONIC
	dbw 15, HORN_ATTACK
	dbw 24, FLAIL
	dbw 29, FURY_ATTACK
	dbw 38, WATERFALL
	dbw 43, HORN_DRILL
	dbw 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 1, TAIL_WHIP
	dbw 10, SUPERSONIC
	dbw 15, HORN_ATTACK
	dbw 24, FLAIL
	dbw 29, FURY_ATTACK
	dbw 41, WATERFALL
	dbw 49, HORN_DRILL
	dbw 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 7, WATER_GUN
	dbw 13, RAPID_SPIN
	dbw 19, RECOVER
	dbw 25, SWIFT
	dbw 31, BUBBLEBEAM
	dbw 37, MINIMIZE
	dbw 43, LIGHT_SCREEN
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, RAPID_SPIN
	dbw 1, RECOVER
	dbw 1, BUBBLEBEAM
	dbw 37, CONFUSE_RAY
	db 0 ; no more level-up moves
	
; ------ all Shadow learnsets below this line ----- 

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, ENCORE
	dbw 4, CONFUSION
	dbw 10, MEDITATE
	dbw 15, CHARM
	dbw 19, MIMIC
	dbw 25, DOUBLESLAP
	dbw 30, SAFEGUARD
	dbw 34, REFLECT
	dbw 34, LIGHT_SCREEN
	dbw 38, PSYBEAM
	dbw 43, SUBSTITUTE
	dbw 47, BATON_PASS
	dbw 53, PSYCHIC_M
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, SCIZOR
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 12, FURY_CUTTER
	dbw 18, METAL_CLAW
	dbw 24, FALSE_SWIPE
	dbw 30, WING_ATTACK
	dbw 36, AGILITY
	dbw 42, SLASH
	dbw 48, FLY
	dbw 54, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 1, SWEET_KISS
	dbw 1, POUND
	dbw 6, CHARM
	dbw 12, POWDER_SNOW
	dbw 18, DOUBLESLAP
	dbw 24, CONFUSION
	dbw 30, ICE_PUNCH
	dbw 38, BODY_SLAM
	dbw 44, PSYCHIC_M
	dbw 50, PERISH_SONG
	dbw 56, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 5, THUNDERSHOCK
	dbw 10, KARATE_CHOP
	dbw 14, SCREECH
	dbw 19, SWIFT
	dbw 24, LIGHT_SCREEN
	dbw 28, THUNDERPUNCH
	dbw 35, SWAGGER
	dbw 40, CROSS_CHOP
	dbw 44, THUNDERBOLT
	dbw 49, STRENGTH
	dbw 54, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, LEER
	dbw 5, EMBER
	dbw 10, KARATE_CHOP
	dbw 14, SMOKESCREEN
	dbw 19, FAINT_ATTACK
	dbw 24, CONFUSE_RAY
	dbw 28, FIRE_PUNCH
	dbw 35, SUNNY_DAY
	dbw 40, CROSS_CHOP
	dbw 44, FLAMETHROWER
	dbw 49, BODY_SLAM
	dbw 54, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	dbbw EVOLVE_TRADE, METAL_COAT, TRICULES
	db 0 ; no more evolutions
	dbw 1, VICEGRIP
	dbw 1, HARDEN
	dbw 5, BIND
	dbw 11, FURY_CUTTER
	dbw 17, SEISMIC_TOSS
	dbw 23, FOCUS_ENERGY
	dbw 29, CROSS_CUTTER
	dbw 35, DIG
	dbw 40, SUBMISSION
	dbw 46, SWORDS_DANCE
	dbw 52, GUILLOTINE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 5, RAGE
	dbw 10, PURSUIT
	dbw 17, HORN_ATTACK
	dbw 22, SCARY_FACE
	dbw 27, HEADBUTT
	dbw 34, REST
	dbw 39, TAKE_DOWN
	dbw 44, MAGNITUDE
	dbw 51, THRASH
	dbw 56, EARTHQUAKE
	dbw 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 10, TACKLE
	dbw 15, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 10, TACKLE
	dbw 15, FLAIL
	dbw 25, DRAGON_RAGE	
	dbw 30, LEER
	dbw 35, RAGE
	dbw 40, TWISTER
	dbw 45, HYDRO_PUMP
	dbw 50, RAIN_DANCE
	dbw 55, THRASH
	dbw 60, OUTRAGE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 7, MIST
	dbw 14, BODY_SLAM
	dbw 21, CONFUSE_RAY
	dbw 28, SURF
	dbw 35, RAIN_DANCE
	dbw 42, SAFEGUARD
	dbw 49, ICE_BEAM
	dbw 56, PERISH_SONG
	dbw 63, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbbw EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbbw EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbbw EVOLVE_ITEM, HEART_STONE, ESPEON
	dbbw EVOLVE_ITEM, POISON_STONE, UMBREON
	dbbw EVOLVE_ITEM, LEAF_STONE, LEAFEON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, GROWL
	dbw 5, FOCUS_ENERGY
	dbw 10, QUICK_ATTACK
	dbw 15, SAND_ATTACK
	dbw 20, BITE
	dbw 25, CHARM
	dbw 30, TAKE_DOWN
	dbw 35, BATON_PASS
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, GROWL
	dbw 5, FOCUS_ENERGY
	dbw 10, QUICK_ATTACK
	dbw 15, SAND_ATTACK
	dbw 20, BITE
	dbw 25, CHARM
	dbw 30, TAKE_DOWN
	dbw 35, BATON_PASS
	dbw 40, MIST
	dbw 45, AURORA_BEAM
	dbw 50, HAZE
	dbw 55, SURF
	dbw 60, ACID_ARMOR
	dbw 65, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, GROWL
	dbw 5, FOCUS_ENERGY
	dbw 10, QUICK_ATTACK
	dbw 15, SAND_ATTACK
	dbw 20, BITE
	dbw 25, CHARM
	dbw 30, TAKE_DOWN
	dbw 35, BATON_PASS
	dbw 40, SPARK
	dbw 45, DOUBLE_KICK
	dbw 50, THUNDERBOLT
	dbw 55, EXTREMESPEED
	dbw 60, AGILITY
	dbw 65, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, GROWL
	dbw 5, FOCUS_ENERGY
	dbw 10, QUICK_ATTACK
	dbw 15, SAND_ATTACK
	dbw 20, BITE
	dbw 25, CHARM
	dbw 30, TAKE_DOWN
	dbw 35, BATON_PASS
	dbw 40, FIRE_SPIN
	dbw 45, DIG
	dbw 50, FLAMETHROWER
	dbw 55, EXTREMESPEED
	dbw 60, AGILITY
	dbw 65, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbbw EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SHARPEN
	dbw 1, THUNDER_WAVE
	dbw 8, PECK
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, AGILITY
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, MIMIC
	dbw 48, ZAP_CANNON
	dbw 56, HYPER_BEAM
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 5, BITE
	dbw 10, LEER
	dbw 15, WATER_GUN
	dbw 20, SAND_ATTACK
	dbw 25, ANCIENTPOWER
	dbw 30, RAPID_SPIN
	dbw 35, MUD_SLAP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 5, BITE
	dbw 10, LEER
	dbw 15, WATER_GUN
	dbw 20, SAND_ATTACK
	dbw 25, ANCIENTPOWER
	dbw 30, RAPID_SPIN
	dbw 35, MUD_SLAP
	dbw 47, SPIKE_CANNON
	dbw 54, ROCK_SLIDE
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, ABSORB
	dbw 10, LEER
	dbw 15, WATER_GUN
	dbw 20, SAND_ATTACK
	dbw 25, ANCIENTPOWER
	dbw 30, MEGA_DRAIN
	dbw 35, DIG
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 5, ABSORB
	dbw 10, LEER
	dbw 15, WATER_GUN
	dbw 20, SAND_ATTACK
	dbw 25, ANCIENTPOWER
	dbw 30, MEGA_DRAIN
	dbw 35, DIG
	dbw 47, SLASH
	dbw 54, WATERFALL
	dbw 61, ROCK_SLIDE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, SUPERSONIC
	dbw 7, BITE
	dbw 14, AGILITY
	dbw 21, ANCIENTPOWER
	dbw 28, TAKE_DOWN
	dbw 35, FLY
	dbw 42, SCARY_FACE
	dbw 49, CRUNCH
	dbw 56, ROCK_HEAD
	dbw 63, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
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

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 1, GUST
	dbw 1, MIST
	dbw 9, AGILITY
	dbw 18, FLY
	dbw 27, AURORA_BEAM
	dbw 36, MIND_READER
	dbw 45, ICE_BEAM
	dbw 54, REFLECT
	dbw 63, BLIZZARD
	dbw 72, SKY_ATTACK
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GUST
	dbw 1, THUNDER_WAVE
	dbw 9, AGILITY
	dbw 18, FLY
	dbw 27, SPARK
	dbw 36, DRILL_PECK
	dbw 45, THUNDERBOLT
	dbw 54, LIGHT_SCREEN
	dbw 63, THUNDER
	dbw 72, SKY_ATTACK
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, GUST
	dbw 1, SAFEGUARD
	dbw 9, AGILITY
	dbw 18, FLY
	dbw 27, FLAME_WHEEL
	dbw 36, ENDURE
	dbw 45, FLAMETHROWER
	dbw 54, SUNNY_DAY
	dbw 63, FIRE_BLAST
	dbw 72, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, THUNDER_WAVE
	dbw 12, TWISTER
	dbw 17, SAFEGUARD
	dbw 23, SLAM
	dbw 28, DRAGON_RAGE
	dbw 34, AGILITY
	dbw 39, DRAGONBREATH
	dbw 45, SURF
	dbw 50, OUTRAGE
	dbw 56, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, THUNDER_WAVE
	dbw 12, TWISTER
	dbw 17, SAFEGUARD
	dbw 23, SLAM
	dbw 28, DRAGON_RAGE
	dbw 36, AGILITY
	dbw 41, DRAGONBREATH
	dbw 47, SURF
	dbw 52, OUTRAGE
	dbw 58, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 5, THUNDER_WAVE
	dbw 12, TWISTER
	dbw 17, SAFEGUARD
	dbw 23, SLAM
	dbw 28, DRAGON_RAGE
	dbw 36, AGILITY
	dbw 41, DRAGONBREATH
	dbw 47, SURF
	dbw 52, OUTRAGE
	dbw 60, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 1, PSYCH_UP
	dbw 11, BARRIER
	dbw 22, TELEPORT
	dbw 33, FUTURE_SIGHT
	dbw 44, SWIFT
	dbw 55, SHADOW_BALL
	dbw 66, PSYCHIC_M
	dbw 77, BARRIER
	dbw 88, RECOVER
	dbw 99, TACKLE ; SYNCHRONIZE
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, TELEPORT
	dbw 1, PSYCH_UP
	dbw 10, MEGA_PUNCH
	dbw 20, METRONOME
	dbw 30, FUTURE_SIGHT
	dbw 40, ANCIENTPOWER
	dbw 50, EXTREMESPEED
	dbw 60, PSYCHIC_M
	dbw 70, BARRIER
	dbw 80, TRANSFORM
	dbw 90, HYPER_BEAM
	db 0 ; no more level-up moves

;----------------------------------------------------------------------
_NUM_EVOS_ATTACKS = (EvosAttacksPointers1.End  - EvosAttacksPointers1)/2
