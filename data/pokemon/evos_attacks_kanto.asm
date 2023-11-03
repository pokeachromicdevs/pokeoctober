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
	dbw 15, STUN_SPORE
	dbw 21, RAZOR_LEAF
	dbw 25, POISONPOWDER
	dbw 30, TAKE_DOWN
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
	dbw 15, STUN_SPORE
	dbw 23, RAZOR_LEAF
	dbw 27, POISONPOWDER
	dbw 32, TAKE_DOWN
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
	dbw 15, STUN_SPORE
	dbw 23, RAZOR_LEAF
	dbw 27, POISONPOWDER
	dbw 32, TAKE_DOWN
	dbw 40, SLEEP_POWDER
	dbw 42, DOUBLE_EDGE
	dbw 47, SYNTHESIS
	dbw 53, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, GROWL
	dbw 10, EMBER
	dbw 15, BITE
	dbw 21, RAGE
	dbw 25, SCARY_FACE
	dbw 30, FIRE_SPIN
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
	dbw 6, GROWL
	dbw 10, EMBER
	dbw 15, BITE
	dbw 23, RAGE
	dbw 27, SCARY_FACE
	dbw 32, FIRE_SPIN
	dbw 38, FLAMETHROWER
	dbw 42, SLASH
	dbw 47, CRUNCH
	dbw 53, THRASH
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 6, GROWL
	dbw 10, EMBER
	dbw 15, BITE
	dbw 23, RAGE
	dbw 27, SCARY_FACE
	dbw 32, FIRE_SPIN
	dbw 40, FLAMETHROWER
	dbw 44, SLASH
	dbw 49, CRUNCH
	dbw 55, THRASH
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, POUND
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
	dbw 1, HARDEN
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 13, POISONPOWDER
	dbw 17, GUST
	dbw 22, MEGA_DRAIN
	dbw 25, SLEEP_POWDER
	dbw 29, PSYBEAM
	dbw 34, FLY
	dbw 37, STUN_SPORE
	dbw 41, TACKLE ; LUNGE
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
	dbw 37, SPIKE_CANNON
	dbw 41, TACKLE ; LUNGE
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
	dbw 14, ENDURE
	dbw 19, MUD_SLAP
	dbw 24, WING_ATTACK
	dbw 28, WHIRLWIND
	dbw 33, MIRROR_MOVE
	dbw 37, TWISTER
	dbw 42, AGILITY
	dbw 46, FLY
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, GUST
	dbw 14, ENDURE
	dbw 21, MUD_SLAP
	dbw 26, WING_ATTACK
	dbw 30, WHIRLWIND
	dbw 35, MIRROR_MOVE
	dbw 39, TWISTER
	dbw 44, AGILITY
	dbw 48, FLY
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SAND_ATTACK
	dbw 5, QUICK_ATTACK
	dbw 9, GUST
	dbw 14, ENDURE
	dbw 21, MUD_SLAP
	dbw 26, WING_ATTACK
	dbw 30, WHIRLWIND
	dbw 35, MIRROR_MOVE
	dbw 41, TWISTER
	dbw 46, AGILITY
	dbw 50, FLY
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
	dbw 24, SCARY_FACE
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
	dbw 26, SCARY_FACE
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
	dbw 23, HAZE
	dbw 28, TACKLE ; TOXIC_LEECH
	dbw 32, FAINT_ATTACK
	dbw 37, SLAM
	dbw 42, MEAN_LOOK
	dbw 46, BODY_SLAM
	dbw 51, SLUDGE_BOMB
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 14, ACID
	dbw 18, GLARE
	dbw 25, HAZE
	dbw 30, TACKLE ; TOXIC_LEECH
	dbw 34, FAINT_ATTACK
	dbw 39, SLAM
	dbw 44, MEAN_LOOK
	dbw 48, BODY_SLAM
	dbw 53, SLUDGE_BOMB
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, QUICK_ATTACK
	dbw 11, THUNDER_WAVE
	;dbw 15, THUNDERJOLT ; TODO
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
	;dbw 15, THUNDERJOLT ; TODO
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
	;dbw 30, POISON_FANG ; XXX
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
	;dbw 32, POISON_FANG ; XXX
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
	;dbw 32, POISON_FANG ; XXX
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
	;dbw 30, POISON_FANG ; XXX
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
	;dbw 32, POISON_FANG ; XXX
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
	;dbw 32, POISON_FANG ; XXX
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
	dbw 42, DIZZY_PUNCH
	dbw 48, MOONLIGHT
	dbw 55, TACKLE ; STAR_FREEZE
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
	dbw 42, DIZZY_PUNCH
	dbw 48, MOONLIGHT
	dbw 55, TACKLE ; STAR_FREEZE
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, NINETALES
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

NinetalesEvosAttacks:
	db 0 ; no more evolutions
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


JigglypuffEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, SING
	dbw 1, DEFENSE_CURL
	dbw 6, DOUBLESLAP
	dbw 11, DISABLE
	dbw 18, ROLLOUT
	dbw 24, MEGAPHONE
	dbw 30, BODY_SLAM
	dbw 36, CHARM
	dbw 42, REST
	dbw 48, WHIRLWIND
	dbw 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 4, SING
	dbw 1, DEFENSE_CURL
	dbw 6, DOUBLESLAP
	dbw 11, DISABLE
	dbw 18, ROLLOUT
	dbw 24, MEGAPHONE
	dbw 30, BODY_SLAM
	dbw 36, CHARM
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
	dbw 28, TACKLE ; TOXIC_LEECH
	dbw 33, SCREECH
	dbw 39, CRUNCH
	dbw 44, FLY
	dbw 50, HAZE
	dbw 55, SLUDGE_BOMB
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 1, SUPERSONIC
	dbw 6, POISON_STING
	dbw 11, BITE
	dbw 17, WING_ATTACK
	dbw 22, CONFUSE_RAY
	dbw 30, TACKLE ; TOXIC_LEECH
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
	dbw 36, TOXIC
	dbw 39, BODY_SLAM
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
	dbw 38, TOXIC
	dbw 41, BODY_SLAM
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
	dbw 38, TOXIC
	dbw 41, BODY_SLAM
	dbw 46, MOONLIGHT
	dbw 52, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
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

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, ABSORB
	dbw 6, POISONPOWDER
	dbw 10, LEECH_LIFE
	dbw 15, MEGA_DRAIN
	dbw 21, STUN_SPORE
	dbw 27, TACKLE ; DUAL_PINCER
	dbw 32, GIGA_DRAIN
	dbw 38, SPORE
	dbw 42, GROWTH
	dbw 47, SLASH
	dbw 53, TACKLE ; LUNGE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 4, SUPERSONIC
	dbw 10, CONFUSION
	dbw 14, ACID
	dbw 20, POISONPOWDER
	dbw 24, LEECH_LIFE
	dbw 30, STUN_SPORE
	dbw 34, PSYBEAM
	dbw 40, SLEEP_POWDER
	dbw 44, PSYCHIC_M
	dbw 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 4, SUPERSONIC
	dbw 10, CONFUSION
	dbw 14, ACID
	dbw 20, POISONPOWDER
	dbw 24, LEECH_LIFE
	dbw 30, STUN_SPORE
	dbw 38, PSYBEAM
	dbw 42, SLEEP_POWDER
	dbw 46, PSYCHIC_M
	dbw 52, SLUDGE_BOMB
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

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, TAIL_WHIP
	dbw 6, BITE
	dbw 12, TEMPT
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
	dbw 5, TAIL_WHIP
	dbw 10, DISABLE
	dbw 16, CONFUSION
	dbw 23, SCREECH
	dbw 31, PSYCH_UP
	dbw 40, FURY_SWIPES
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 1, DISABLE
	dbw 1, CONFUSION
	dbw 5, TAIL_WHIP
	dbw 10, DISABLE
	dbw 16, CONFUSION
	dbw 23, SCREECH
	dbw 31, PSYCH_UP
	dbw 44, FURY_SWIPES
	dbw 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 21, FURY_SWIPES
	dbw 27, FOCUS_ENERGY
	dbw 33, SEISMIC_TOSS
	dbw 39, CROSS_CHOP
	dbw 45, SCREECH
	dbw 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, RAGE
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 21, FURY_SWIPES
	dbw 27, FOCUS_ENERGY
	dbw 27, RAGE
	dbw 36, SEISMIC_TOSS
	dbw 45, CROSS_CHOP
	dbw 54, SCREECH
	dbw 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
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

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROAR
	dbw 1, LEER
	dbw 1, TAKE_DOWN
	dbw 1, FLAME_WHEEL
	dbw 4, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 19, DOUBLESLAP
	dbw 25, RAIN_DANCE
	dbw 31, BODY_SLAM
	dbw 37, BELLY_DRUM
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 1, WATER_GUN
	dbw 7, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 19, DOUBLESLAP
	dbw 27, RAIN_DANCE
	dbw 35, BODY_SLAM
	dbw 43, BELLY_DRUM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, SUBMISSION
	dbw 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbbw EVOLVE_TRADE, -1, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, KINESIS
	dbw 1, CONFUSION
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 21, PSYBEAM
	dbw 26, RECOVER
	dbw 31, FUTURE_SIGHT
	dbw 38, PSYCHIC_M
	dbw 45, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 1, KINESIS
	dbw 1, CONFUSION
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 21, PSYBEAM
	dbw 26, RECOVER
	dbw 31, FUTURE_SIGHT
	dbw 38, PSYCHIC_M
	dbw 45, REFLECT
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
	dbw 6, GROWTH
	dbw 11, WRAP
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 23, ACID
	dbw 30, SWEET_SCENT
	dbw 37, RAZOR_LEAF
	dbw 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	dbbw EVOLVE_ITEM, POISON_STONE, BELLIGNAN
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, GROWTH
	dbw 1, WRAP
	dbw 6, GROWTH
	dbw 11, WRAP
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 24, ACID
	dbw 33, SWEET_SCENT
	dbw 42, RAZOR_LEAF
	dbw 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 1, SLEEP_POWDER
	dbw 1, SWEET_SCENT
	dbw 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 19, ACID
	dbw 25, BUBBLEBEAM
	dbw 30, WRAP
	dbw 36, BARRIER
	dbw 43, SCREECH
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, SUPERSONIC
	dbw 1, CONSTRICT
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 19, ACID
	dbw 25, BUBBLEBEAM
	dbw 29, WRAP
	dbw 38, BARRIER
	dbw 47, SCREECH
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 26, HARDEN
	dbw 31, ROLLOUT
	dbw 36, EARTHQUAKE
	dbw 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_TRADE, -1, GOLEM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, ROCK_THROW
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 27, HARDEN
	dbw 34, ROLLOUT
	dbw 41, EARTHQUAKE
	dbw 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, ROCK_THROW
	dbw 1, MAGNITUDE
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 27, HARDEN
	dbw 34, ROLLOUT
	dbw 41, EARTHQUAKE
	dbw 48, EXPLOSION
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
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 6, GROWL
	dbw 15, WATER_GUN
	dbw 20, CONFUSION
	dbw 29, DISABLE
	dbw 34, HEADBUTT
	dbw 43, AMNESIA
	dbw 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	dbbw EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, WATER_GUN
	dbw 6, GROWL
	dbw 15, WATER_GUN
	dbw 20, CONFUSION
	dbw 29, DISABLE
	dbw 34, HEADBUTT
	dbw 36, WITHDRAW
	dbw 46, AMNESIA
	dbw 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 16, SONICBOOM
	dbw 21, THUNDER_WAVE
	dbw 27, LOCK_ON
	dbw 33, SWIFT
	dbw 39, SCREECH
	dbw 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 1, SONICBOOM
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 16, SONICBOOM
	dbw 21, THUNDER_WAVE
	dbw 27, LOCK_ON
	dbw 29, TRI_ATTACK
	dbw 35, SWIFT ; from G/S
	dbw 43, SCREECH
	dbw 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LUXSWAN
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 12, FURY_ATTACK
	dbw 18, BATON_PASS
	dbw 24, CUT
	dbw 30, FLY
	dbw 36, FALSE_SWIPE
	dbw 42, SWORDS_DANCE
	dbw 48, SLASH
	dbw 54, AGILITY
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 9, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 21, QUICK_ATTACK
	dbw 25, RAGE
	dbw 33, DRILL_PECK
	dbw 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 1, PURSUIT
	dbw 1, FURY_ATTACK
	dbw 9, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 21, QUICK_ATTACK
	dbw 25, RAGE
	dbw 30, TRI_ATTACK
	dbw 38, DRILL_PECK
	dbw 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 5, GROWL
	dbw 16, AURORA_BEAM
	dbw 21, REST
	dbw 32, TAKE_DOWN
	dbw 37, ICE_BEAM
	dbw 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 1, GROWL
	dbw 1, AURORA_BEAM
	dbw 5, GROWL
	dbw 16, AURORA_BEAM
	dbw 21, REST
	dbw 32, TAKE_DOWN
	dbw 43, ICE_BEAM
	dbw 60, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
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

MukEvosAttacks:
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
	dbw 44, BODY_SLAM
	dbw 51, ACID_ARMOR
	dbw 56, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
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
	dbw 10, BIND
	dbw 14, ROCK_THROW
	dbw 23, HARDEN
	dbw 27, RAGE
	dbw 36, SANDSTORM
	dbw 40, SLAM
	dbw 43, ROCK_HEAD
	dbw 44, DOUBLE_EDGE
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
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 7, SUPERSONIC
	dbw 13, DEFENSE_CURL
	dbw 19, STOMP
	dbw 25, WRAP
	dbw 31, DISABLE
	dbw 37, SLAM
	dbw 43, SCREECH
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
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 13, STOMP
	dbw 19, FURY_ATTACK
	dbw 31, SCARY_FACE
	dbw 37, HORN_DRILL
	dbw 49, TAKE_DOWN
	dbw 55, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 1, STOMP
	dbw 1, FURY_ATTACK
	dbw 13, STOMP
	dbw 19, FURY_ATTACK
	dbw 31, SCARY_FACE
	dbw 37, HORN_DRILL
	dbw 54, TAKE_DOWN
	dbw 65, EARTHQUAKE
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

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRIER
	dbw 6, CONFUSION
	dbw 11, SUBSTITUTE
	dbw 16, MEDITATE
	dbw 21, DOUBLESLAP
	dbw 26, LIGHT_SCREEN
	dbw 26, REFLECT
	dbw 31, ENCORE
	dbw 36, PSYBEAM
	dbw 41, BATON_PASS
	dbw 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 12, PURSUIT
	dbw 18, FALSE_SWIPE
	dbw 24, AGILITY
	dbw 30, WING_ATTACK
	dbw 36, SLASH
	dbw 42, SWORDS_DANCE
	dbw 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 1, LOVELY_KISS
	dbw 1, POWDER_SNOW
	dbw 9, LOVELY_KISS
	dbw 13, POWDER_SNOW
	dbw 21, DOUBLESLAP
	dbw 25, ICE_PUNCH
	dbw 35, MEAN_LOOK
	dbw 41, BODY_SLAM
	dbw 51, PERISH_SONG
	dbw 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERPUNCH
	dbw 9, THUNDERPUNCH
	dbw 17, LIGHT_SCREEN
	dbw 25, SWIFT
	dbw 36, SCREECH
	dbw 47, THUNDERBOLT
	dbw 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, SMOG
	dbw 1, FIRE_PUNCH
	dbw 7, LEER
	dbw 13, SMOG
	dbw 19, FIRE_PUNCH
	dbw 25, SMOKESCREEN
	dbw 33, SUNNY_DAY
	dbw 41, FLAMETHROWER
	dbw 49, CONFUSE_RAY
	dbw 57, FIRE_BLAST
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
	dbw 4, TAIL_WHIP
	dbw 8, RAGE
	dbw 13, HORN_ATTACK
	dbw 19, SCARY_FACE
	dbw 26, PURSUIT
	dbw 34, REST
	dbw 43, THRASH
	dbw 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 1, BITE
	dbw 25, DRAGON_RAGE
	dbw 30, LEER
	dbw 35, TWISTER
	dbw 40, HYDRO_PUMP
	dbw 45, RAIN_DANCE
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 8, MIST
	dbw 15, BODY_SLAM
	dbw 22, CONFUSE_RAY
	dbw 29, PERISH_SONG
	dbw 36, ICE_BEAM
	dbw 43, RAIN_DANCE
	dbw 50, SAFEGUARD
	dbw 57, HYDRO_PUMP
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
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, WATER_GUN
	dbw 8, SAND_ATTACK
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, AURORA_BEAM
	dbw 42, HAZE
	dbw 47, ACID_ARMOR
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, THUNDERSHOCK
	dbw 8, SAND_ATTACK
	dbw 23, QUICK_ATTACK
	dbw 30, DOUBLE_KICK
	dbw 36, PIN_MISSILE
	dbw 42, THUNDER_WAVE
	dbw 47, AGILITY
	dbw 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, EMBER
	dbw 8, SAND_ATTACK
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, FIRE_SPIN
	dbw 42, SMOG
	dbw 47, LEER
	dbw 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbbw EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, SHARPEN
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 31, LEER
	dbw 37, PROTECT
	dbw 49, ANCIENTPOWER
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 1, BITE
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 31, LEER
	dbw 37, PROTECT
	dbw 39, SPIKE_CANNON
	dbw 54, ANCIENTPOWER
	dbw 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 10, ABSORB
	dbw 19, LEER
	dbw 28, SAND_ATTACK
	dbw 37, ENDURE
	dbw 46, MEGA_DRAIN
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 10, ABSORB
	dbw 19, LEER
	dbw 28, SAND_ATTACK
	dbw 37, ENDURE
	dbw 39, SLASH
	dbw 51, MEGA_DRAIN
	dbw 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 8, AGILITY
	dbw 15, BITE
	dbw 22, SUPERSONIC
	dbw 29, ANCIENTPOWER
	dbw 36, SCARY_FACE
	dbw 43, TAKE_DOWN
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, AMNESIA
	dbw 15, DEFENSE_CURL
	dbw 22, BELLY_DRUM
	dbw 29, HEADBUTT
	dbw 36, SNORE
	dbw 36, REST
	dbw 43, BODY_SLAM
	dbw 50, ROLLOUT
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, POWDER_SNOW
	dbw 13, MIST
	dbw 25, AGILITY
	dbw 37, MIND_READER
	dbw 49, ICE_BEAM
	dbw 61, REFLECT
	dbw 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, THUNDERSHOCK
	dbw 13, THUNDER_WAVE
	dbw 25, AGILITY
	dbw 37, DETECT
	dbw 49, DRILL_PECK
	dbw 61, LIGHT_SCREEN
	dbw 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, EMBER
	dbw 13, FIRE_SPIN
	dbw 25, AGILITY
	dbw 37, ENDURE
	dbw 49, FLAMETHROWER
	dbw 61, SAFEGUARD
	dbw 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 36, AGILITY
	dbw 43, SAFEGUARD
	dbw 50, OUTRAGE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 56, OUTRAGE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 54, WING_ATTACK
	dbw 61, OUTRAGE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 11, BARRIER
	dbw 22, SWIFT
	dbw 33, PSYCH_UP
	dbw 44, FUTURE_SIGHT
	dbw 55, MIST
	dbw 66, PSYCHIC_M
	dbw 77, AMNESIA
	dbw 88, RECOVER
	dbw 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 10, TRANSFORM
	dbw 20, MEGA_PUNCH
	dbw 30, METRONOME
	dbw 40, PSYCHIC_M
	dbw 50, ANCIENTPOWER
	db 0 ; no more level-up moves

;-----------------------------------------------------------------------
_NUM_EVOS_ATTACKS = (EvosAttacksPointers1.End  - EvosAttacksPointers1)/2
