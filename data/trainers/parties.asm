; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - end_party_def ; end

__party_open__  = 0
next_party: MACRO
IF __party_open__  == 1
fail "\tPrevious party definition has not been closed yet!\n\t(add 'end_party' to the previous line to fix this)"
ENDC
	next_list_item
__party_open__  = 1
ENDM
end_party_list: MACRO
	end_list_items
IF __party_open__  == 1
fail "\tParty list ended without ending the previous party defs!\n\t(add 'end_party' to the previous line to fix this)"
ENDC
ENDM
end_party: MACRO
	db -1
__party_open__  = 0
ENDM

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	next_party ; FALKNER (1)
		db "FALKNER@", TRAINERTYPE_ITEM_MOVES
		db 10
		dw PIDGEY
		db NO_ITEM
		dw MUD_SLAP, QUICK_ATTACK, GUST, NO_MOVE
		db 11
		dw NATU
		db NO_ITEM
		dw PECK, NIGHT_SHADE, NO_MOVE, NO_MOVE
		db 14
		dw ADBARSTORK
		db BERRY
		dw FURY_ATTACK, GROWL, WHIRLWIND, NO_MOVE
	end_party
	end_party_list

WhitneyGroup:
	next_party ; WHITNEY (1)
		db "WHITNEY@", TRAINERTYPE_ITEM_MOVES

		;dbw 17, KOALYPTUS
		;db  NO_ITEM
		;dw  THUNDERSHOCK, WATER_GUN, NO_MOVE, NO_MOVE

		dbw 19, FARFETCH_D
		db  NO_ITEM
		dw  GUST, SAND_ATTACK, FURY_ATTACK, MUD_SLAP 

		dbw 20, MILTANK
		db  PRZCUREBERRY
		dw  ROLLOUT, ATTRACT, STOMP, MILK_DRINK
	end_party
	end_party_list

BugsyGroup:
	next_party ; BUGSY (1)
		db "BUGSY@", TRAINERTYPE_ITEM_MOVES
		dbw 23, LEDIAN
		db FIRE_MANE
		dw TACKLE, SUPERSONIC, COMET_PUNCH, ROLLOUT
		dbw 24, ARIADOS
		db FIRE_MANE
		dw POISON_STING, BITE, SPIDER_WEB, NIGHT_SHADE
		dbw 26, HERACROSS
		db SILVERPOWDER
		dw FURY_CUTTER, DETECT, HORN_ATTACK, ENDURE
	end_party
	end_party_list

MortyGroup:
	next_party ; MORTY (1)
		db "MORTY@", TRAINERTYPE_MOVES
		db 21
		dw GASTLY
		dw LICK, SPITE, MEAN_LOOK, CURSE
		db 21
		dw HAUNTER
		dw HYPNOSIS, MIMIC, CURSE, NIGHT_SHADE
		db 25
		dw GENGAR
		dw HYPNOSIS, SHADOW_BALL, MEAN_LOOK, DREAM_EATER
		db 23
		dw HAUNTER
		dw SPITE, MEAN_LOOK, MIMIC, NIGHT_SHADE
	end_party
	end_party_list

PryceGroup:
	next_party ; PRYCE (1)
		db "PRYCE@", TRAINERTYPE_MOVES
		db 27
		dw SEEL
		dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
		db 29
		dw DEWGONG
		dw HEADBUTT, ICY_WIND, AURORA_BEAM, REST
		db 31
		dw PILOSWINE
		dw ICY_WIND, FURY_ATTACK, MIST, BLIZZARD
	end_party
	end_party_list

JasmineGroup:
	next_party ; JASMINE (1)
		db "JASMINE@", TRAINERTYPE_MOVES
		db 30
		dw MAGNEMITE
		dw THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
		db 30
		dw MAGNEMITE
		dw THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
		db 35
		dw STEELIX
		dw SCREECH, SUNNY_DAY, ROCK_THROW, IRON_TAIL
	end_party
	end_party_list

ChuckGroup:
	next_party ; CHUCK (1)
		db "CHUCK@", TRAINERTYPE_MOVES
		db 27
		dw PRIMEAPE
		dw LEER, RAGE, KARATE_CHOP, FURY_SWIPES
		db 30
		dw POLIWRATH
		dw HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	end_party
	end_party_list

ClairGroup:
	next_party ; CLAIR (1)
		db "CLAIR@", TRAINERTYPE_MOVES
		db 37
		dw DRAGONAIR
		dw THUNDER_WAVE, SURF, SLAM, DRAGONBREATH
		db 37
		dw DRAGONAIR
		dw THUNDER_WAVE, THUNDERBOLT, SLAM, DRAGONBREATH
		db 37
		dw DRAGONAIR
		dw THUNDER_WAVE, ICE_BEAM, SLAM, DRAGONBREATH
		db 40
		dw KINGDRA
		dw SMOKESCREEN, SURF, HYPER_BEAM, DRAGONBREATH
	end_party
	end_party_list

Rival1Group:
	next_party ; RIVAL1 (1)
		db "?@", TRAINERTYPE_NORMAL
		db 5
		dw CHIKORITA
	end_party

	next_party ; RIVAL1 (2)
		db "?@", TRAINERTYPE_NORMAL
		db 5
		dw CYNDAQUIL
	end_party

	next_party ; RIVAL1 (3)
		db "?@", TRAINERTYPE_NORMAL
		db 5
		dw TOTODILE
	end_party

	next_party ; RIVAL1 (4)
		db "?@", TRAINERTYPE_NORMAL
		dbw 12, SENTRET
		dbw 12, ZUBAT
		dbw 13, PHANPY
		dbw 13, CHIKORITA
	end_party

	next_party ; RIVAL1 (5)
		db "?@", TRAINERTYPE_NORMAL
		dbw 12, SENTRET
		dbw 12, ZUBAT
		dbw 13, PHANPY
		dbw 13, CYNDAQUIL
	end_party

	next_party ; RIVAL1 (6)
		db "?@", TRAINERTYPE_NORMAL
		dbw 12, SENTRET
		dbw 12, ZUBAT
		dbw 13, PHANPY
		dbw 13, TOTODILE
	end_party

	next_party ; RIVAL1 (7)
		db "?@", TRAINERTYPE_NORMAL
		dbw 21, PHANPY
		dbw 21, VULPIX
		dbw 22, GOLBAT
		dbw 22, PETAMOLE
	end_party

	next_party ; RIVAL1 (8)
		db "?@", TRAINERTYPE_NORMAL
		dbw 21, PHANPY
		dbw 21, VULPIX ; CORASUN
		dbw 22, GOLBAT
		dbw 22, QUILAVA
	end_party

	next_party ; RIVAL1 (9)
		db "?@", TRAINERTYPE_NORMAL
		dbw 21, PHANPY
		dbw 21, TANGELA
		dbw 22, GOLBAT
		dbw 22, CROCONAW
	end_party

	next_party ; RIVAL1 (10)
		db "?@", TRAINERTYPE_MOVES
		db 30
		dw GOLBAT
		dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
		db 28
		dw MAGNEMITE
		dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
		db 30
		dw HAUNTER
		dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
		db 32
		dw SNEASEL
		dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
		db 32
		dw MEGANIUM
		dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	end_party

	next_party ; RIVAL1 (11)
		db "?@", TRAINERTYPE_MOVES
		db 30
		dw GOLBAT
		dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
		db 28
		dw MAGNEMITE
		dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
		db 30
		dw HAUNTER
		dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
		db 32
		dw SNEASEL
		dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
		db 32
		dw QUILAVA
		dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	end_party

	next_party ; RIVAL1 (12)
		db "?@", TRAINERTYPE_MOVES
		db 30
		dw GOLBAT
		dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
		db 28
		dw MAGNEMITE
		dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
		db 30
		dw HAUNTER
		dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
		db 32
		dw SNEASEL
		dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
		db 32
		dw FERALIGATR
		dw RAGE, WATER_GUN, BITE, SCARY_FACE
	end_party

	next_party ; RIVAL1 (13)
		db "?@", TRAINERTYPE_MOVES
		db 34
		dw DONPHAN
		dw ROLLOUT, SANDSTORM, HEADBUTT, SUNNY_DAY
		db 36
		dw CROBAT
		dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
		db 35
		dw ELECTABUZZ
		dw THUNDERPUNCH, ICE_PUNCH, THUNDER_WAVE, SWIFT
		db 35
		dw MAGCARGO
		dw SUNNY_DAY, FLAMETHROWER, PROTECT, ROCK_THROW
		db 35
		dw KADABRA
		dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
		db 38
		dw MEGANIUM
		dw SYNTHESIS, GIGA_DRAIN, EARTHQUAKE, SOLARBEAM
	end_party

	next_party ; RIVAL1 (14)
		db "?@", TRAINERTYPE_MOVES
		db 34
		dw DONPHAN
		dw ROLLOUT, SANDSTORM, HEADBUTT, SUNNY_DAY
		db 36
		dw CROBAT
		dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
		db 35
		dw ELECTABUZZ
		dw THUNDERPUNCH, ICE_PUNCH, THUNDER_WAVE, SWIFT
		db 35
		dw HAUNTER
		dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
		db 35
		dw KADABRA
		dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
		db 38
		dw TYPHLOSION
		dw THUNDERPUNCH, FIRE_PUNCH, QUICK_ATTACK, FLAME_WHEEL
	end_party

	next_party ; RIVAL1 (15)
		db "?@", TRAINERTYPE_MOVES
		db 34
		dw DONPHAN
		dw ROLLOUT, SANDSTORM, HEADBUTT, SUNNY_DAY
		db 36
		dw CROBAT
		dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
		db 34
		dw ELECTABUZZ
		dw THUNDERPUNCH, ICE_PUNCH, THUNDER_WAVE, SWIFT
		db 35
		dw MAGCARGO
		dw SUNNY_DAY, FLAMETHROWER, PROTECT, ROCK_THROW
		db 35
		dw KADABRA
		dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
		db 38
		dw FERALIGATR
		dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	end_party

	end_party_list

PokemonProfGroup:
	next_party ; ELM (1)
		db "ELM@", TRAINERTYPE_MOVES
		dbw 66, TAUROS
		dw  RAGE, EARTHQUAKE, THRASH, SWAGGER
	end_party
	end_party_list

WillGroup:
	next_party ; WILL (1)
		db "WILL@", TRAINERTYPE_MOVES
		db 40
		dw XATU
		dw QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
		db 41
		dw JYNX
		dw DOUBLESLAP, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
		db 41
		dw EXEGGUTOR
		dw REFLECT, LEECH_SEED, EGG_BOMB, PSYCHIC_M
		db 41
		dw SLOWBRO
		dw CURSE, AMNESIA, BODY_SLAM, PSYCHIC_M
		db 42
		dw XATU
		dw QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	end_party

	end_party_list

PKMNTrainerGroup:
	next_party ; CAL (1)
		db "CAL@", TRAINERTYPE_NORMAL
		db 10
		dw CHIKORITA
		db 10
		dw CYNDAQUIL
		db 10
		dw TOTODILE
	end_party

	next_party ; CAL (2)
		db "CAL@", TRAINERTYPE_NORMAL
		db 30
		dw BAYLEEF
		db 30
		dw QUILAVA
		db 30
		dw CROCONAW
	end_party

	next_party ; CAL (3)
		db "CAL@", TRAINERTYPE_NORMAL
		db 50
		dw MEGANIUM
		db 50
		dw TYPHLOSION
		db 50
		dw FERALIGATR
	end_party

	end_party_list

BrunoGroup:
	next_party ; BRUNO (1)
		db "BRUNO@", TRAINERTYPE_MOVES
		db 42
		dw HITMONTOP
		dw PURSUIT, QUICK_ATTACK, DIG, DETECT
		db 42
		dw HITMONLEE
		dw SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, FORESIGHT
		db 42
		dw HITMONCHAN
		dw THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
		db 43
		dw ONIX
		dw BIND, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
		db 46
		dw MACHAMP
		dw ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	end_party

	end_party_list

KarenGroup:
	next_party ; KAREN (1)
		db "KAREN@", TRAINERTYPE_NORMAL
		dbw 21, SNEASEL
		dbw 22, GASTLY
		dbw 23, HOUNDOUR
	end_party

	end_party_list

KogaGroup:
	next_party ; KOGA (1)
		db "KOGA@", TRAINERTYPE_MOVES
		db 40
		dw ARIADOS
		dw DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, GIGA_DRAIN
		db 41
		dw VENOMOTH
		dw SUPERSONIC, GUST, PSYCHIC_M, TOXIC
		db 43
		dw FORRETRESS
		dw PROTECT, SWIFT, EXPLOSION, SPIKES
		db 42
		dw MUK
		dw MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
		db 44
		dw CROBAT
		dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	end_party

	end_party_list

ChampionGroup:
	next_party ; CHAMPION (1)
		db "LANCE@", TRAINERTYPE_MOVES
		db 44
		dw GYARADOS
		dw FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
		db 47
		dw DRAGONITE
		dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
		db 47
		dw DRAGONITE
		dw THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
		db 46
		dw AERODACTYL
		dw WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
		db 46
		dw CHARIZARD
		dw FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
		db 50
		dw DRAGONITE
		dw FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	end_party

	end_party_list

BrockGroup:
	next_party ; BROCK (1)
		db "BROCK@", TRAINERTYPE_MOVES
		db 41
		dw GRAVELER
		dw DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
		db 41
		dw RHYHORN
		dw FURY_ATTACK, SCARY_FACE, EARTHQUAKE, HORN_DRILL
		db 42
		dw OMASTAR
		dw BITE, SURF, PROTECT, SPIKE_CANNON
		db 44
		dw ONIX
		dw BIND, ROCK_SLIDE, BIDE, SANDSTORM
		db 42
		dw KABUTOPS
		dw SLASH, SURF, ENDURE, GIGA_DRAIN
	end_party

	end_party_list

MistyGroup:
	next_party ; MISTY (1)
		db "MISTY@", TRAINERTYPE_MOVES
		db 42
		dw GOLDUCK
		dw SURF, DISABLE, PSYCH_UP, PSYCHIC_M
		db 42
		dw QUAGSIRE
		dw SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
		db 44
		dw LAPRAS
		dw SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
		db 47
		dw STARMIE
		dw SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	end_party

	end_party_list

LtSurgeGroup:
	next_party ; LT_SURGE (1)
		db "LT.SURGE@", TRAINERTYPE_MOVES
		db 44
		dw RAICHU
		dw THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
		db 40
		dw ELECTRODE
		dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
		db 40
		dw MAGNETON
		dw LOCK_ON, DOUBLE_TEAM, SWIFT, ZAP_CANNON
		db 40
		dw ELECTRODE
		dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
		db 46
		dw ELECTABUZZ
		dw QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	end_party

	end_party_list

ScientistGroup:
	next_party ; SCIENTIST (1)
		db "ROSS@", TRAINERTYPE_NORMAL
		db 22
		dw KOFFING
		db 22
		dw KOFFING
	end_party

	end_party_list

ErikaGroup:
	next_party ; ERIKA (1)
		db "ERIKA@", TRAINERTYPE_MOVES
		db 42
		dw TANGELA
		dw VINE_WHIP, BIND, GIGA_DRAIN, SLEEP_POWDER
		db 41
		dw JUMPLUFF
		dw MEGA_DRAIN, LEECH_SEED, COTTON_SPORE, GIGA_DRAIN
		db 46
		dw VICTREEBEL
		dw SUNNY_DAY, SYNTHESIS, ACID, RAZOR_LEAF
		db 46
		dw BELLOSSOM
		dw SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLARBEAM
	end_party

	end_party_list

YoungsterGroup:
	next_party ; YOUNGSTER (1)
		db "JOEY@", TRAINERTYPE_NORMAL
		db 4
		dw RATTATA
	end_party
	
	next_party ; YOUNGSTER (2)
		db "MIKEY@", TRAINERTYPE_NORMAL
		db 2
		dw PIDGEY
		db 4
		dw RATTATA
	end_party

	next_party ; YOUNGSTER (3)
		db "ALBERT@", TRAINERTYPE_NORMAL
		db 6
		dw RATTATA
		db 8
		dw ZUBAT
	end_party

	next_party ; YOUNGSTER (4)
		db "GORDON@", TRAINERTYPE_NORMAL
		db 10
		dw WOOPER
	end_party

	next_party ; YOUNGSTER (5)
		db "SAMUEL@", TRAINERTYPE_NORMAL
		db 7
		dw RATTATA
		db 10
		dw SANDSHREW
		db 8
		dw SPEAROW
		db 8
		dw SPEAROW
	end_party

	next_party ; YOUNGSTER (6)
		db "IAN@", TRAINERTYPE_NORMAL
		db 10
		dw MANKEY
		db 12
		dw DIGLETT
	end_party

	next_party ; YOUNGSTER (7)
		db "JOEY@", TRAINERTYPE_NORMAL
		db 15
		dw RATTATA
	end_party

	next_party ; YOUNGSTER (8)
		db "JOEY@", TRAINERTYPE_MOVES
		db 21
		dw RATICATE
		dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	end_party

	next_party ; YOUNGSTER (9)
		db "WARREN@", TRAINERTYPE_NORMAL
		db 35
		dw FEAROW
	end_party

	next_party ; YOUNGSTER (10)
		db "JIMMY@", TRAINERTYPE_NORMAL
		db 33
		dw RATICATE
		db 33
		dw ARBOK
	end_party

	next_party ; YOUNGSTER (11)
		db "OWEN@", TRAINERTYPE_NORMAL
		db 35
		dw GROWLITHE
	end_party

	next_party ; YOUNGSTER (12)
		db "JASON@", TRAINERTYPE_NORMAL
		db 33
		dw SANDSLASH
		db 33
		dw CROBAT
	end_party

	next_party ; YOUNGSTER (13)
		db "JOEY@", TRAINERTYPE_MOVES
		db 30
		dw RATICATE
		dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	end_party

	next_party ; YOUNGSTER (14)
		db "JOEY@", TRAINERTYPE_MOVES
		db 37
		dw RATICATE
		dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	end_party
	
	next_party ; YOUNGSTER (1)
		db "MAX@", TRAINERTYPE_NORMAL
		db 2
		dw YANMA
		db 2
		dw SANDSHREW
	end_party
	
	next_party ; YOUNGSTER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 2
	dw CLEFLING
	db 5
	dw LEDYBA
	end_party
	
	next_party ; YOUNGSTER (1)
	db "DAN@", TRAINERTYPE_NORMAL
	db 10
	dw RATTATA
	db 11
	dw HOOTHOOT
	db 12
	dw MAREEP
	db 12
	dw RATTATA 
	end_party


	end_party_list

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:
	next_party ; SCHOOLBOY (1)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 31
	dw WEEPINBELL
	db 33
	dw VICTREEBEL
	end_party

	next_party ; SCHOOLBOY (2)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 31
	dw JYNX
	db 31
	dw ELECTABUZZ
	db 31
	dw MAGMAR
	end_party

	next_party ; SCHOOLBOY (3)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 34
	dw ALAKAZAM
	end_party

	next_party ; SCHOOLBOY (4)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	end_party

	next_party ; SCHOOLBOY (5)
	db "JOE@", TRAINERTYPE_NORMAL
	db 33
	dw TANGELA
	db 33
	dw VAPOREON
	end_party

	next_party ; SCHOOLBOY (6)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 27
	dw PARAS
	db 27
	dw POLIWHIRL
	db 35
	dw DITTO
	end_party

	next_party ; SCHOOLBOY (7)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	end_party

	next_party ; SCHOOLBOY (8)
	db "NATE@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 32
	dw EXEGGUTOR
	end_party

	next_party ; SCHOOLBOY (9)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 32
	dw DITTO
	end_party

	next_party ; SCHOOLBOY (12)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db 19
	dw MAGNEMITE
	end_party

	next_party ; SCHOOLBOY (13)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 27
	dw MR__MIME
	db 31
	dw MAGNETON
	end_party

	next_party ; SCHOOLBOY (14)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 30
	dw MR__MIME
	db 34
	dw MAGNETON
	end_party

	next_party ; SCHOOLBOY (15)
	db "CHAD@", TRAINERTYPE_MOVES
	db 34
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	end_party
	
	next_party ; SCHOOLBOY (16)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 7
	dw MAREEP
	db 8
	dw BURGELA
	db 9
	dw ODDISH
	end_party
	
	next_party ; SCHOOLBOY (17)
	db "AVERY@", TRAINERTYPE_NORMAL
	db 8
	dw RATTATA
	db 8
	dw SPEAROW
	db 9
	dw PARASPOR
	db 10
	dw SWINUB
	end_party 

	end_party_list

BirdKeeperGroup:
	next_party ; BIRD_KEEPER (1)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 4
	dw HOOTHOOT
	db 7
	dw SPEAROW
	end_party

	next_party ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	end_party

	next_party ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 14
	dw PIDGEOTTO
	end_party

	next_party ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 17
	dw PIDGEY
	db 15
	dw PIDGEY
	db 19
	dw PIDGEY
	db 15
	dw PIDGEY
	db 15
	dw PIDGEY
	end_party

	next_party ; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_NORMAL
	db 15
	dw DODUO
	db 16
	dw DODUO
	db 17
	dw DODUO
	end_party

	next_party ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 18
	dw SPEAROW
	db 20
	dw FEAROW
	db 18
	dw SPEAROW
	end_party

	next_party ; BIRD_KEEPER (7)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 25
	dw PIDGEOTTO
	db 25
	dw PIDGEOTTO
	end_party

	next_party ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 34
	dw PIDGEOT
	end_party

	next_party ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 35
	dw FEAROW
	end_party

	next_party ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 28
	dw DODUO
	db 32
	dw DODRIO
	end_party

	next_party ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	end_party

	next_party ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 36
	dw FARFETCH_D
	end_party

	next_party ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 6
	dw PIDGEY
	db 8
	dw SPEAROW
	end_party

	next_party ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	end_party

	next_party ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	end_party

	next_party ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw FEAROW
	end_party

	next_party ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	dw FURY_ATTACK, DETECT, FLY, SLASH
	end_party

	next_party ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw PIDGEOTTO
	end_party

	next_party ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	dw TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	dw SWIFT, DETECT, STEEL_WING, FLY
	end_party
	
	next_party ; BIRD_KEEPER (20)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 7
	dw MURKROW
	end_party 

	end_party_list
	
LassGroup:
	next_party ; LASS (1)
		db "CARRIE@", TRAINERTYPE_MOVES
		db 18
		dw SNUBBULL
		dw SCARY_FACE, CHARM, BITE, LICK
	end_party

	next_party ; LASS (2)
		db "BRIDGET@", TRAINERTYPE_NORMAL
		db 15
		dw JIGGLYPUFF
		db 15
		dw JIGGLYPUFF
		db 15
		dw JIGGLYPUFF
	end_party

	next_party ; LASS (3)
		db "ALICE@", TRAINERTYPE_NORMAL
		db 30
		dw GLOOM
		db 34
		dw ARBOK
		db 30
		dw GLOOM
	end_party

	next_party ; LASS (4)
		db "KRISE@", TRAINERTYPE_NORMAL
		db 12
		dw ODDISH
		db 15
		dw CUBONE
	end_party

	next_party ; LASS (5)
		db "CONNIE@", TRAINERTYPE_NORMAL
		db 21
		dw MARILL
	end_party

	next_party ; LASS (6)
		db "LINDA@", TRAINERTYPE_NORMAL
		db 30
		dw BULBASAUR
		db 32
		dw IVYSAUR
		db 34
		dw VENUSAUR
	end_party

	next_party ; LASS (7)
		db "LAURA@", TRAINERTYPE_NORMAL
		db 28
		dw GLOOM
		db 31
		dw PIDGEOTTO
		db 31
		dw BELLOSSOM
	end_party

	next_party ; LASS (8)
		db "SHANNON@", TRAINERTYPE_NORMAL
		db 29
		dw PARAS
		db 29
		dw PARAS
		db 32
		dw PARASECT
	end_party

	next_party ; LASS (9)
		db "MICHELLE@", TRAINERTYPE_NORMAL
		db 32
		dw SKIPLOOM
		db 33
		dw HOPPIP
		db 34
		dw JUMPLUFF
	end_party

	next_party ; LASS (10)
		db "DANA@", TRAINERTYPE_MOVES
		db 18
		dw FLAAFFY
		dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
		db 18
		dw PSYDUCK
		dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	end_party

	next_party ; LASS (11)
		db "ELLEN@", TRAINERTYPE_NORMAL
		db 30
		dw WIGGLYTUFF
		db 34
		dw GRANBULL
	end_party

	next_party ; LASS (12)
		db "CONNIE@", TRAINERTYPE_NORMAL
		db 21
		dw MARILL
	end_party

	next_party ; LASS (13)
		db "CONNIE@", TRAINERTYPE_NORMAL
		db 21
		dw MARILL
	end_party

	next_party ; LASS (14)
		db "DANA@", TRAINERTYPE_MOVES
		db 21
		dw FLAAFFY
		dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
		db 21
		dw PSYDUCK
		dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	end_party

	next_party ; LASS (15)
		db "DANA@", TRAINERTYPE_MOVES
		db 29
		dw PSYDUCK
		dw SCRATCH, DISABLE, CONFUSION, SCREECH
		db 29
		dw AMPHAROS
		dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	end_party

	next_party ; LASS (16)
		db "DANA@", TRAINERTYPE_MOVES
		db 32
		dw PSYDUCK
		dw SCRATCH, DISABLE, CONFUSION, SCREECH
		db 32
		dw AMPHAROS
		dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	end_party

	next_party ; LASS (17)
		db "DANA@", TRAINERTYPE_MOVES
		db 36
		dw AMPHAROS
		dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
		db 36
		dw GOLDUCK
		dw DISABLE, SURF, PSYCHIC_M, SCREECH
	end_party
	
	next_party ; LASS (18)
		db "ARIEL@", TRAINERTYPE_NORMAL
		db 5
		dw ZUBAT
		db 7
		dw PIDGEY
		db 8
		dw HOPPIP
	end_party
	
	next_party ; LASS (18)
		db "SAM@", TRAINERTYPE_NORMAL
		db 2
		dw COINPUR
		db 4
		dw SENTRET
	end_party
	
	next_party ; LASS (19)
		db "NIECHELLE@", TRAINERTYPE_NORMAL
		db 3
		dw CAMOUFLAKE
		db 4
		dw CAMOUFLAKE
	end_party
	
	next_party ; LASS (20)
		db "YURI@", TRAINERTYPE_NORMAL
		db 2
		dw CAMOUFLAKE
		db 3
		dw MARILL
		db 4
		dw SWINUB
	end_party
	
	next_party ; LASS (20)
		db "HELEN@", TRAINERTYPE_NORMAL
		db 14
		dw COINPUR
		db 14
		dw SENTRET
		db 15
		dw FURRET
	end_party
	
	next_party ; LASS (21)
		db "JUNE@", TRAINERTYPE_NORMAL
		db 9
		dw IGGLYBUFF
		db 11
		dw SENTRET
		db 11
		dw MOLAMBINO
	end_party
	
	next_party ; LASS (21)
		db "ANNIE@", TRAINERTYPE_NORMAL
		db 9
		dw YANMA
		db 12
		dw CLEFFA
		db 14
		dw ZUBAT
	end_party
	
	next_party ; LASS (23)
		string "TINA"
		db     TRAINERTYPE_NORMAL
		dbw    10, BUTTERFREE
	end_party

	end_party_list

JanineGroup:
	next_party ; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 36
	dw CROBAT
	dw SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 33
	dw ARIADOS
	dw SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 39
	dw VENOMOTH
	dw FORESIGHT, DOUBLE_TEAM, GUST, PSYCHIC_M
	end_party

	end_party_list

CooltrainerMGroup:
	next_party ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_MOVES
	db 26
	dw CHARMANDER
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db 26
	dw SQUIRTLE
	dw WITHDRAW, WATER_GUN, BITE, CURSE
	db 26
	dw BULBASAUR
	dw LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	end_party

	next_party ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 24
	dw IVYSAUR
	db 24
	dw CHARMELEON
	db 24
	dw WARTORTLE
	end_party

	next_party ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	end_party

	next_party ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 36
	dw SEADRA
	end_party

	next_party ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	end_party

	next_party ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 35
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 35
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	end_party

	next_party ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db KINGS_ROCK
	dw SURF, STOMP, GUILLOTINE, BLIZZARD
	db 39
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	end_party

	next_party ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	end_party

	next_party ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	dw CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	end_party

	next_party ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 32
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 32
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	end_party

	next_party ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	dw WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	end_party

	next_party ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	dw SAND_ATTACK, POISON_STING, SLASH, SWIFT
	end_party

	next_party ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	end_party

	next_party ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	end_party

	next_party ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	end_party

	next_party ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 35
	dw FLAREON
	db 35
	dw TANGELA
	db 35
	dw TAUROS
	end_party

	next_party ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 35
	dw CHARMELEON
	db 35
	dw WARTORTLE
	end_party

	next_party ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 14
	dw CHARMANDER
	db 14
	dw SQUIRTLE
	end_party

	next_party ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	end_party

	next_party ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw WRAP, SURF, DRAGON_RAGE, SLAM
	end_party

	end_party_list

CooltrainerFGroup:
	next_party ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 22
	dw FLAREON
	db 22
	dw VAPOREON
	db 22
	dw JOLTEON
	end_party

	next_party ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 25
	dw SKIPLOOM
	dw SYNTHESIS, POISONPOWDER, MEGA_DRAIN, LEECH_SEED
	db 25
	dw NINETALES
	dw EMBER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	end_party

	next_party ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 37
	dw SEADRA
	end_party

	next_party ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 36
	dw DRAGONAIR
	end_party

	next_party ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 28
	dw CLOYSTER
	end_party

	next_party ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 24
	dw SEAKING
	end_party

	next_party ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 24
	dw WARTORTLE
	db 24
	dw WARTORTLE
	end_party

	next_party ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	dw BITE, CURSE, SURF, RAIN_DANCE
	end_party

	next_party ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	end_party

	next_party ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw NIDOQUEEN
	db 31
	dw STARMIE
	end_party

	next_party ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw IVYSAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw VENUSAUR
	dw BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	end_party

	next_party ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	end_party

	next_party ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 35
	dw STARMIE
	db 35
	dw NINETALES
	end_party

	next_party ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 38
	dw STARMIE
	end_party

	next_party ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	end_party

	next_party ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw BELLOSSOM
	dw ABSORB, STUN_SPORE, ACID, SOLARBEAM
	end_party

	next_party ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	end_party

	next_party ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db FOCUS_ORB
	dw STOMP, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	end_party

	next_party ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 36
	dw NIDOQUEEN
	db 34
	dw STARMIE
	end_party

	next_party ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 38
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	end_party

	next_party ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	dw SWIFT, LEER, WATERFALL, TWISTER
	end_party

	end_party_list

BeautyGroup:
	next_party ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 9
	dw SENTRET
	db 13
	dw SENTRET
	db 17
	dw SENTRET
	end_party

	next_party ; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_MOVES
	db 16
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, PAY_DAY
	db 16
	dw MEOWTH
	dw SCRATCH, GROWL, BITE, SLASH
	end_party

	next_party ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	end_party

	next_party ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 28
	dw VILEPLUME
	db 34
	dw BUTTERFREE
	end_party

	next_party ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	end_party

	next_party ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 32
	dw PARAS
	db 32
	dw EXEGGCUTE
	db 35
	dw PARASECT
	end_party

	next_party ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	end_party

	next_party ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 17
	dw HOPPIP
	dw SYNTHESIS, TAIL_WHIP, TACKLE, POISONPOWDER
	db 17
	dw SKIPLOOM
	dw SYNTHESIS, TAIL_WHIP, TACKLE, STUN_SPORE
	end_party

	next_party ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 19
	dw CORSOLA
	end_party

	next_party
		string "PEONY"
		db     TRAINERTYPE_NORMAL
		
		dbw    17, MOIBELLE
		;dbw    17, KOIJACK
		dbw    18, SMOOCHUM
	end_party

	end_party_list

PokemaniacGroup:
	next_party ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	end_party

	next_party ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 24
	dw MAROWAK
	end_party

	next_party ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	end_party

	next_party ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORINA
	db 16
	dw NIDORINO
	end_party

	next_party ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 19
	dw SLOWBRO
	end_party

	next_party ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 19
	dw LICKITUNG
	end_party

	next_party ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 19
	dw NIDOKING
	end_party

	next_party ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 31
	dw RHYDON
	end_party

	next_party ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	end_party

	next_party ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
	dw RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	end_party

	next_party ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 12
	dw LICKITUNG
	dw LICK, SUPERSONIC, CUT, NO_MOVE
	end_party

	next_party ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 10
	dw SLOWPOKE
	end_party

	next_party ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 27
	dw RHYHORN
	end_party

	next_party ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	dw ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
	end_party

	next_party ; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_NORMAL
	db 17
	dw NIDOKING
	db 17
	dw NIDOQUEEN
	end_party

	end_party_list

GruntMGroup:
	next_party ; GRUNTM (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	dbw 19, RATTATA
	;dbw 20, BALLERINE
	end_party

	next_party ; GRUNTM (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	dbw 20, SMEARGLE
	dbw 20, RATICATE
	end_party

	next_party ; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw RATICATE
	end_party

	next_party ; GRUNTM (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw GRIMER
	db 23
	dw GRIMER
	db 25
	dw MUK
	end_party

	next_party ; GRUNTM (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw RATTATA
	db 21
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	end_party

	next_party ; GRUNTM (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ZUBAT
	db 26
	dw ZUBAT
	end_party

	next_party ; GRUNTM (7)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 23
	dw GRIMER
	db 23
	dw ZUBAT
	db 23
	dw RATTATA
	end_party

	next_party ; GRUNTM (8)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw WEEZING
	end_party

	next_party ; GRUNTM (9)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 26
	dw KOFFING
	end_party

	next_party ; GRUNTM (10)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw GOLBAT
	db 22
	dw GRIMER
	end_party

	next_party ; GRUNTM (11)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw MUK
	db 23
	dw KOFFING
	db 25
	dw RATTATA
	end_party

	next_party ; GRUNTM (12)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	end_party

	next_party ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	end_party

	next_party ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw GOLBAT
	end_party

	next_party ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 23
	dw WEEZING
	end_party

	next_party ; GRUNTM (16)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	end_party

	next_party ; GRUNTM (17)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw GOLBAT
	end_party

	next_party ; GRUNTM (18)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 17
	dw ZUBAT
	db 17
	dw RATTATA
	end_party

	next_party ; GRUNTM (19)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw VENONAT
	db 18
	dw VENONAT
	end_party

	next_party ; GRUNTM (20)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw DROWZEE
	db 19
	dw ZUBAT
	end_party

	next_party ; GRUNTM (21)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 17
	dw GRIMER
	db 18
	dw RATTATA
	end_party

	next_party ; GRUNTM (22)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	end_party

	next_party ; GRUNTM (23)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	end_party

	next_party ; GRUNTM (24)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 25
	dw KOFFING
	end_party

	next_party ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 24
	dw MUK
	end_party

	next_party ; GRUNTM (26)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	end_party

	next_party ; GRUNTM (27)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	end_party

	next_party ; GRUNTM (28)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 19
	dw RATICATE
	end_party

	next_party ; GRUNTM (29)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw RATTATA
	db 9
	dw RATTATA
	end_party

	next_party ; GRUNTM (30)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	end_party

	next_party ; GRUNTM (31)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 30
	dw GOLBAT
	end_party

	end_party_list

GentlemanGroup:
	next_party ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 18
	dw GROWLITHE
	db 18
	dw GROWLITHE
	end_party

	next_party ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 33
	dw PERSIAN
	end_party

	next_party ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 33
	dw FLAAFFY
	end_party

	next_party ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	end_party

	next_party ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 20
	dw NOCTOWL
	end_party

	end_party_list

SkierGroup:
	next_party ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	end_party

	next_party ; SKIER (2)
	db "CLARISSA@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	end_party

	end_party_list

TeacherGroup:
	next_party ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	end_party

	next_party ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 36
	dw CUBONE
	end_party

	next_party ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	end_party
	
	next_party ; TEACHER (4)
	db "ANN@", TRAINERTYPE_NORMAL
	db 2
	dw HOOTHOOT
	db 4 
	dw MOIBELLE
	end_party
	
	next_party ; TEACHER (5)
	db "BELLA@", TRAINERTYPE_NORMAL
	db 7
	dw PICHU
	db 9
	dw HOOTHOOT
	db 9
	dw MARILL
	db 11
	dw DROWZEE
	end_party

	end_party_list

SabrinaGroup:
	next_party ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46
	dw ESPEON
	dw SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 46
	dw MR__MIME
	dw BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 48
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	end_party

	end_party_list

BugCatcherGroup:
	next_party ; BUG_CATCHER (1)
	db "MAX@", TRAINERTYPE_NORMAL
	db 3
	dw VENONAT
	db 4
	dw LEDYBA
	end_party

	next_party ; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_NORMAL
	db 32
	dw BEEDRILL
	db 32
	dw BUTTERFREE
	end_party

	next_party ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	end_party

	next_party ; BUG_CATCHER (4)
	db "STANLEY@", TRAINERTYPE_NORMAL
	db 3
	dw CATERPIE
	db 3
	dw METAPOD
	db 4
	dw KAKUNA
	db 5
	dw SCYTHER
	end_party

	next_party ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 7
	dw WEEDLE
	db 9
	dw KAKUNA
	db 12
	dw BEEDRILL
	end_party

	next_party ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 12
	dw CATERPIE
	db 12
	dw WEEDLE
	end_party

	next_party ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 13
	dw PARAS
	end_party

	next_party ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 15
	dw VENONAT
	end_party

	next_party ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 30
	dw ARIADOS
	db 32
	dw PINSIR
	end_party

	next_party ; BUG_CATCHER (10)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	end_party

	next_party ; BUG_CATCHER (11)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	end_party

	next_party ; BUG_CATCHER (12)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	end_party

	next_party ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	end_party

	next_party ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	end_party

	next_party ; BUG_CATCHER (15)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 8
	dw LEDYBA
	db 10
	dw PARAS
	end_party

	next_party ; BUG_CATCHER (16)
		string "LENNY"
		db     TRAINERTYPE_NORMAL
		dbw    2, CATERPIE
		dbw    2, WEEDLE
	end_party

	next_party ; BUG_CATCHER (17)
		string "TIM"
		db     TRAINERTYPE_NORMAL
		dbw    3, LEDYBA
		dbw    3, SPINARAK
	end_party

	next_party ; BUG_CATCHER (18)
		string "HIKARU"
		db     TRAINERTYPE_NORMAL
		dbw     9, METAPOD
		dbw    18, BUTTERFREE
		dbw     9, KAKUNA
		dbw    18, BEEDRILL
		dbw    19, SCYTHER
	end_party

	end_party_list

FisherGroup:
	next_party ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 5
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db 5
	dw MAGIKARP
	end_party

	next_party ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 10
	dw GOLDEEN
	end_party

	next_party ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 34
	dw TENTACRUEL
	end_party

	next_party ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 31
	dw POLIWHIRL
	db 31
	dw SEAKING
	end_party

	next_party ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 8
	dw POLIWAG
	db 8
	dw POLIWAG
	end_party

	next_party ; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL
	db 10
	dw MAGIKARP
	db 10
	dw GYARADOS
	db 15
	dw MAGIKARP
	db 15
	dw GYARADOS
	end_party

	next_party ; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 18
	dw QWILFISH
	end_party

	next_party ; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 27
	dw GYARADOS
	end_party

	next_party ; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_NORMAL
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	end_party

	next_party ; FISHER (10)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 23
	dw GOLDEEN
	db 23
	dw GOLDEEN
	db 25
	dw SEAKING
	end_party

	next_party ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	end_party

	next_party ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 29
	dw OCTILLERY
	db 25
	dw REMORAID
	db 29
	dw CLOYSTER
	end_party

	next_party ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 32
	dw REMORAID
	end_party

	next_party ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 25
	dw MAGIKARP
	db 31
	dw QWILFISH
	db 31
	dw TENTACRUEL
	end_party

	next_party ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	end_party

	next_party ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	end_party

	next_party ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 19
	dw GOLDEEN
	end_party

	next_party ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	end_party

	next_party ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 32
	dw GOLDEEN
	db 32
	dw QWILFISH
	end_party

	next_party ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 29
	dw GOLDEEN
	db 29
	dw GOLDEEN
	db 32
	dw SEAKING
	end_party

	next_party ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 30
	dw QWILFISH
	db 34
	dw SEAKING
	end_party

	next_party ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 38
	dw REMORAID
	dw PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	end_party

	next_party ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 32
	dw GOLDEEN
	end_party

	next_party ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	dw ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	end_party

	next_party ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 37
	dw QWILFISH
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	end_party
	
	next_party ; FISHER (26)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 3
	dw MAGIKARP
	db 3
	dw POLIWAG
	db 3
	dw WOOPER
	end_party

	next_party ; FISHER (27)
		string "MANNY"
		db     TRAINERTYPE_NORMAL
		dbw    13, REMORAID
	end_party

	next_party ; FISHER (28)
		string "GEORGE"
		db     TRAINERTYPE_NORMAL
		dbw    20, GYARADOS
	end_party

	next_party ; FISHER (29)
		string "KOI"
		db     TRAINERTYPE_NORMAL
		dbw    15, MAGIKARP
		dbw    15, MAGIKARP
		dbw    15, MAGIKARP
	end_party


	end_party_list

SwimmerMGroup:
	next_party ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 30
	dw SEADRA
	end_party

	next_party ; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 20
	dw TENTACOOL
	db 20
	dw TENTACOOL
	end_party

	next_party ; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_NORMAL
	db 18
	dw SHELLDER
	db 20
	dw WARTORTLE
	db 18
	dw SHELLDER
	end_party

	next_party ; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 19
	dw TENTACOOL
	db 19
	dw TENTACRUEL
	end_party

	next_party ; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 16
	dw TENTACOOL
	db 17
	dw TENTACOOL
	db 16
	dw TENTACOOL
	db 19
	dw STARYU
	db 17
	dw TENTACOOL
	db 19
	dw REMORAID
	end_party

	next_party ; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	end_party

	next_party ; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_NORMAL
	db 20
	dw GYARADOS
	db 20
	dw GYARADOS
	end_party

	next_party ; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_NORMAL
	db 23
	dw KRABBY
	end_party

	next_party ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	end_party

	next_party ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	end_party

	next_party ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	end_party

	next_party ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	end_party

	next_party ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	end_party

	next_party ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 26
	dw SEADRA
	db 28
	dw TENTACOOL
	db 30
	dw TENTACRUEL
	db 28
	dw GOLDEEN
	end_party

	next_party ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 34
	dw CLOYSTER
	end_party

	next_party ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	end_party

	next_party ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 34
	dw MARILL
	end_party

	next_party ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 29
	dw OCTILLERY
	db 32
	dw QUAGSIRE
	end_party

	next_party ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	end_party

	next_party ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	end_party

	next_party ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 32
	dw HORSEA
	db 32
	dw HORSEA
	db 35
	dw SEADRA
	end_party

	end_party_list

SwimmerFGroup:
	next_party ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 21
	dw STARYU
	end_party

	next_party ; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_NORMAL
	db 19
	dw STARYU
	db 19
	dw SHELLDER
	end_party

	next_party ; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_NORMAL
	db 18
	dw GOLDEEN
	db 20
	dw GOLDEEN
	db 20
	dw SEAKING
	end_party

	next_party ; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_MOVES
	db 20
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db 22
	dw GOLDEEN
	dw PECK, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	end_party

	next_party ; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 22
	dw SEEL
	end_party

	next_party ; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_NORMAL
	db 20
	dw STARYU
	db 20
	dw STARMIE
	end_party

	next_party ; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_MOVES
	db 21
	dw HORSEA
	dw BUBBLE, SMOKESCREEN, LEER, WATER_GUN
	db 21
	dw HORSEA
	dw DRAGON_RAGE, SMOKESCREEN, LEER, WATER_GUN
	end_party

	next_party ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	end_party

	next_party ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	end_party

	next_party ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	end_party

	next_party ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	end_party

	next_party ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 34
	dw SEAKING
	end_party

	next_party ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	end_party

	next_party ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 29
	dw MARILL
	db 32
	dw LAPRAS
	end_party

	next_party ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 32
	dw STARMIE
	end_party

	next_party ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	end_party

	next_party ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw DEWGONG
	end_party

	next_party ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	end_party

	next_party ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	end_party

	end_party_list

SailorGroup:
	next_party ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 17
	dw POLIWHIRL
	db 17
	dw RATICATE
	db 19
	dw KRABBY
	end_party

	next_party ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 18
	dw POLIWAG
	db 18
	dw POLIWHIRL
	end_party

	next_party ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 20
	dw POLIWHIRL
	end_party

	next_party ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 18
	dw KRABBY
	dw BUBBLE, LEER, VICEGRIP, HARDEN
	db 20
	dw KRABBY
	dw BUBBLEBEAM, LEER, VICEGRIP, HARDEN
	end_party

	next_party ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 18
	dw MACHOP
	db 18
	dw MACHOP
	db 18
	dw POLIWHIRL
	end_party

	next_party ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 32
	dw RATICATE
	db 32
	dw RATICATE
	end_party

	next_party ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	end_party

	next_party ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 28
	dw MACHOP
	db 28
	dw POLIWRATH
	db 28
	dw MACHOP
	end_party

	next_party ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 33
	dw MACHOKE
	db 26
	dw PSYDUCK
	end_party

	next_party ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 19
	dw WOOPER
	end_party

	next_party ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 28
	dw POLIWHIRL
	end_party

	next_party ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 34
	dw POLIWRATH
	end_party

	next_party ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	dw WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	end_party

	end_party_list

SuperNerdGroup:
	next_party ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	end_party

	next_party ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 11
	dw GRIMER
	db 11
	dw GRIMER
	end_party

	next_party ; SUPER_NERD (3)
	db "GREGG@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	end_party

	next_party ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	end_party

	next_party ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	end_party

	next_party ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 34
	dw GRIMER
	db 34
	dw MUK
	end_party

	next_party ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	end_party

	next_party ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON
	end_party

	next_party ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 33
	dw MUK
	db 31
	dw MAGNEMITE
	end_party

	next_party ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL
	db 7
	dw MAGNEMITE
	db 11
	dw VOLTORB
	db 7
	dw MAGNEMITE
	db 9
	dw MAGNEMITE
	end_party

	next_party ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	end_party

	next_party ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	end_party

	next_party ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	end_party

	next_party ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 19
	dw SLOWPOKE
	dw CURSE, WATER_GUN, GROWL, STRENGTH
	end_party

	end_party_list

Rival2Group:
	next_party ; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw MEGANIUM
	dw RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	end_party

	next_party ; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FLAME_WHEEL, SWIFT
	end_party

	next_party ; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	end_party

	next_party ; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw MEGANIUM
	dw GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	end_party

	next_party ; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	end_party

	next_party ; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw FERALIGATR
	dw SURF, RAIN_DANCE, SLASH, SCREECH
	end_party

	end_party_list

GuitaristGroup:
	next_party ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	end_party

	next_party ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 33
	dw VOLTORB
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	end_party

	end_party_list

HikerGroup:
	next_party ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHAMP
	end_party

	next_party ; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_NORMAL
	db 4
	dw GEODUDE
	db 6
	dw GEODUDE
	db 8
	dw GEODUDE
	end_party

	next_party ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 23
	dw GRAVELER
	end_party

	next_party ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 25
	dw MACHOP
	end_party

	next_party ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 11
	dw MACHOP
	end_party

	next_party ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 14
	dw DIGLETT
	db 14
	dw GEODUDE
	db 16
	dw DUGTRIO
	end_party

	next_party ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 24
	dw MACHOP
	db 27
	dw GRAVELER
	db 27
	dw MACHOP
	end_party

	next_party ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 25
	dw GEODUDE
	db 25
	dw GRAVELER
	db 25
	dw GOLEM
	end_party

	next_party ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 35
	dw ONIX
	db 33
	dw SWINUB
	end_party

	next_party ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_MOVES
	db 27
	dw DIGLETT
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db 27
	dw DUGTRIO
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	end_party

	next_party ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	end_party

	next_party ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 25
	dw GRAVELER
	db 27
	dw GRAVELER
	db 29
	dw MACHOKE
	end_party

	next_party ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	end_party

	next_party ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 31
	dw SANDSLASH
	db 33
	dw GOLEM
	end_party

	next_party ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 34
	dw DUGTRIO
	db 32
	dw ONIX
	end_party

	next_party ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 27
	dw SANDSLASH
	db 29
	dw GRAVELER
	db 31
	dw GOLEM
	db 29
	dw GRAVELER
	end_party

	next_party ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 35
	dw MACHAMP
	end_party

	next_party ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 11
	dw ONIX
	end_party

	next_party ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	dw MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	end_party

	next_party ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 29
	dw ONIX
	end_party

	next_party ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 32
	dw MACHOKE
	end_party

	next_party ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	dw KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
	end_party

	end_party_list

BikerGroup:
	next_party ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	end_party

	next_party ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	end_party

	next_party ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 27
	dw KOFFING
	db 28
	dw KOFFING
	db 29
	dw KOFFING
	db 30
	dw KOFFING
	end_party

	next_party ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 34
	dw FLAREON
	end_party

	next_party ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw KOFFING
	end_party

	next_party ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 30
	dw CHARMELEON
	db 30
	dw WEEZING
	end_party

	next_party ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING
	end_party

	next_party ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 32
	dw MAGMAR
	db 32
	dw MAGMAR
	end_party

	next_party ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 30
	dw MAGMAR
	db 32
	dw WEEZING
	end_party

	end_party_list

BlaineGroup:
	next_party ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 45
	dw MAGCARGO
	dw CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45
	dw MAGMAR
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50
	dw RAPIDASH
	dw QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	end_party

	end_party_list

BurglarGroup:
	next_party ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 25
	dw MAGMAR
	db 23
	dw KOFFING
	end_party

	next_party ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 26
	dw GROWLITHE
	dw ROAR, EMBER, LEER, TAKE_DOWN
	db 24
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	end_party

	next_party ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 28
	dw MAGMAR
	db 25
	dw KOFFING
	db 30
	dw KOFFING
	end_party

	end_party_list

FirebreatherGroup:
	next_party ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 29
	dw MAGMAR
	db 32
	dw WEEZING
	db 29
	dw MAGMAR
	end_party

	next_party ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 17
	dw CHARMELEON
	end_party

	next_party ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 16
	dw GROWLITHE
	db 15
	dw KOFFING
	end_party

	next_party ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw SLUGMA
	end_party

	next_party ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 6
	dw KOFFING
	db 6
	dw KOFFING
	end_party

	next_party ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 11
	dw MAGMAR
	db 13
	dw MAGMAR
	end_party

	next_party ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 9
	dw VULPIX
	end_party

	next_party ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 31
	dw FLAREON
	db 28
	dw KOFFING
	end_party

	end_party_list

JugglerGroup:
	next_party ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 2
	dw VOLTORB
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	end_party

	next_party ; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_NORMAL
	db 29
	dw MR__MIME
	db 29
	dw MAGMAR
	db 29
	dw MACHOKE
	end_party

	next_party ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	end_party

	next_party ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db 18
	dw VOLTORB
	end_party

	next_party ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	end_party

	next_party ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	end_party

	end_party_list

BlackbeltGroup:
	next_party ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 27
	dw ONIX
	db 30
	dw HITMONLEE
	db 27
	dw ONIX
	db 32
	dw MACHOKE
	end_party

	next_party ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	dw BIND, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 33
	dw STEELIX
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	dw DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	end_party

	next_party ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOKE
	end_party

	next_party ; BLACKBELT_T (9)
	db "LEE@", TRAINERTYPE_NORMAL
	db 12
	dw GEODUDE
	db 13
	dw MACHOP
	db 13
	dw MANKEY 
	end_party

	next_party ; BLACKBELT_T (9)
	db "HITOSHI@", TRAINERTYPE_NORMAL
	db 12
	dw MACHOP
	db 15
	dw TYROGUE
	end_party

	next_party ; BLACKBELT_T (9)
	db "GENKI@", TRAINERTYPE_NORMAL
	db 9
	dw MACHOP
	db 11
	dw MANKEY
	end_party

	next_party
		string "KAORI"
		db     TRAINERTYPE_NORMAL
		dbw    16, MANKEY
		dbw    16, MANKEY
		dbw    17, PHANPY
	end_party

	next_party
		string "JIRO"
		db     TRAINERTYPE_NORMAL
		dbw    17, MACHOP
		dbw    17, FARFETCH_D
	end_party

	next_party
		string "KIYOSHI"
		db     TRAINERTYPE_NORMAL
		dbw    16, MANKEY
		dbw    18, SNEASEL
	end_party

	next_party
		string "KIYO"
		db     TRAINERTYPE_NORMAL
		dbw    18, SCYTHER
		dbw    20, HITMONTOP
	end_party
	end_party_list

ExecutiveMGroup:
	next_party ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 33
	dw HOUNDOUR
	dw EMBER, ROAR, BITE, FAINT_ATTACK
	db 33
	dw KOFFING
	dw TACKLE, SLUDGE, SMOKESCREEN, HAZE
	db 35
	dw HOUNDOOM
	dw EMBER, SMOG, BITE, FAINT_ATTACK
	end_party

	next_party ; EXECUTIVEM (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	end_party

	next_party ; EXECUTIVEM (3)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	dw TACKLE, EXPLOSION, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	end_party

	next_party ; EXECUTIVEM (4)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw RATICATE
	db 22
	dw KOFFING
	end_party

	end_party_list

PsychicGroup:
	next_party ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 26
	dw GIRAFARIG
	end_party

	next_party ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 37
	dw KADABRA
	end_party

	next_party ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGUTOR
	end_party

	next_party ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 34
	dw XATU
	end_party

	next_party ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 17
	dw DROWZEE
	dw HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE
	end_party

	next_party ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 17
	dw SLOWPOKE
	dw TACKLE, GROWL, WATER_GUN, NO_MOVE
	db 20
	dw SLOWPOKE
	dw CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	end_party

	next_party ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 15
	dw KADABRA
	dw TELEPORT, KINESIS, CONFUSION, NO_MOVE
	end_party

	next_party ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 24
	dw NATU
	dw LEER, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 26
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	end_party

	next_party ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 36
	dw ESPEON
	end_party

	next_party ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 30
	dw STARMIE
	db 30
	dw EXEGGCUTE
	db 34
	dw GIRAFARIG
	end_party

	next_party ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 32
	dw MR__MIME
	db 32
	dw EXEGGCUTE
	db 35
	dw EXEGGCUTE
	end_party

	next_party ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 29
	dw DROWZEE
	db 33
	dw HYPNO
	end_party

	end_party_list

PicnickerGroup:
	next_party ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_F
	end_party

	next_party ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db 9
	dw HOPPIP
	db 9
	dw HOPPIP
	db 12
	dw BULBASAUR
	end_party

	next_party ; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_MOVES
	db 16
	dw PIKACHU
	dw THUNDERSHOCK, GROWL, QUICK_ATTACK, DOUBLE_TEAM
	end_party

	next_party ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 15
	dw VULPIX
	end_party

	next_party ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOQUEEN
	end_party

	next_party ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 34
	dw FLAAFFY
	end_party

	next_party ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 1
	dw FURRET
	db 33
	dw RAPIDASH
	end_party

	next_party ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 33
	dw SEAKING
	end_party

	next_party ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 14
	dw HOPPIP
	db 17
	dw IVYSAUR
	end_party

	next_party ; PICNICKER (10)
	db "NIECHELLE@", TRAINERTYPE_NORMAL
	db 3
	dw PONYTA
	db 3
	dw PONYTA
	end_party

	next_party ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	end_party

	next_party ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 19
	dw WEEPINBELL
	db 19
	dw NIDORINO
	db 21
	dw NIDOQUEEN
	end_party

	next_party ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 32
	dw SKIPLOOM
	end_party

	next_party ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 30
	dw NIDORINA
	db 34
	dw RAICHU
	end_party

	next_party ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 26
	dw SKIPLOOM
	db 29
	dw IVYSAUR
	end_party

	next_party ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 31
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	end_party

	next_party ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	dw ENCORE, DOUBLESLAP, MINIMIZE, METRONOME
	end_party

	next_party ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 32
	dw PONYTA
	end_party

	next_party ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL
	db 37
	dw EXEGGUTOR
	end_party

	next_party ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 20
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	end_party

	next_party ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	dw SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	end_party

	next_party ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 24
	dw WEEPINBELL
	db 26
	dw NIDORINO
	db 26
	dw NIDOQUEEN
	end_party

	next_party ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	dw SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	end_party

	next_party ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 30
	dw SKIPLOOM
	db 32
	dw IVYSAUR
	end_party

	next_party ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	dw STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 33
	dw JUMPLUFF
	dw SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, COTTON_SPORE
	db 38
	dw VENUSAUR
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	end_party

	next_party ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	dw METRONOME, ENCORE, MOONLIGHT, MINIMIZE
	end_party

	end_party_list


ExecutiveFGroup:
	next_party ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 32
	dw ARBOK
	dw WRAP, POISON_STING, BITE, GLARE
	db 32
	dw VILEPLUME
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 32
	dw MURKROW
	dw PECK, PURSUIT, HAZE, NIGHT_SHADE
	end_party

	next_party ; EXECUTIVEF (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 23
	dw ARBOK
	dw WRAP, LEER, POISON_STING, BITE
	db 23
	dw GLOOM
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 25
	dw MURKROW
	dw PECK, PURSUIT, HAZE, NO_MOVE
	end_party

	end_party_list

SageGroup:
	next_party ; SAGE (1)
	db "CHOW@", TRAINERTYPE_MOVES
	db 8
	dw BELLSPROUT
	dw VINE_WHIP, GROWTH, WRAP, NO_MOVE
	db 8
	dw ABRA
	dw THUNDER_WAVE, TELEPORT, FLASH, FORESIGHT
	db 10
	dw VULPIII
	dw EMBER, TAIL_WHIP, QUICK_ATTACK, NO_MOVE
	end_party

	next_party ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw BELLSPROUT
	db 9
	dw GASTLY
	end_party

	next_party ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 11
	dw BELLSPROUT
	db 13
	dw HOOTHOOT
	end_party

	next_party ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw HOOTHOOT
	end_party

	next_party ; SAGE (5)
	db "JEFFREY@", TRAINERTYPE_NORMAL
	db 22
	dw HAUNTER
	end_party

	next_party ; SAGE (6)
	db "PING@", TRAINERTYPE_NORMAL
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	end_party

	next_party ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 10
	dw BELLSPROUT
	db 12
	dw VULPIII
	db 12
	dw MOIBELLE
	end_party

	next_party ; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	end_party

	next_party ; SAGE (9)
	db "LI@", TRAINERTYPE_NORMAL
	dbw 13, BELLSPROUT
	dbw 13, ODDISH
	dbw 14, BIPULLA
	dbw 16, KADABRA
	end_party

	next_party ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw FLAREON
	end_party

	next_party ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw JOLTEON
	end_party

	next_party ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw VAPOREON
	end_party

	end_party_list

MediumGroup:
	next_party ; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 18
	dw GASTLY
	db 20
	dw HAUNTER
	db 20
	dw GASTLY
	end_party

	next_party ; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_NORMAL
	db 20
	dw HAUNTER
	db 20
	dw HAUNTER
	end_party

	next_party ; MEDIUM (3)
	db "BETHANY@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	end_party

	next_party ; MEDIUM (4)
	db "MARGRET@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	end_party

	next_party ; MEDIUM (5)
	db "ETHEL@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	end_party

	next_party ; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_NORMAL
	db 35
	dw DROWZEE
	db 35
	dw HYPNO
	end_party

	next_party ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 34
	dw SLOWPOKE
	db 36
	dw SLOWBRO
	end_party

	end_party_list

BoarderGroup:
	next_party ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	end_party

	next_party ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 26
	dw SWINUB
	db 26
	dw SWINUB
	end_party

	next_party ; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	end_party

	end_party_list

PokefanMGroup:
	next_party ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 14
	dw RAICHU
	db BERRY
	end_party

	next_party ; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	end_party

	next_party ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db BERRY
	end_party

	next_party ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	end_party

	next_party ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db BERRY
	db 29
	dw CHARMANDER
	db BERRY
	db 29
	dw SQUIRTLE
	db BERRY
	end_party

	next_party ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 33
	dw PSYDUCK
	db BERRY
	end_party

	next_party ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 13
	dw SNUBBULL
	db BERRY
	end_party

	next_party ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	end_party

	next_party ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db BERRY
	end_party

	next_party ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db BERRY
	end_party

	next_party ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db BERRY
	end_party

	next_party ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 29
	dw NIDOKING
	db BERRY
	db 29
	dw SLOWKING
	db BERRY
	db 29
	dw SEAKING
	db BERRY
	end_party

	next_party ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 35
	dw PHANPY
	db BERRY
	end_party

	next_party ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
	dw TEDDIURSA
	db BERRY
	end_party

	end_party_list

KimonoGirlGroup:
	next_party ; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 20
	dw SKIPLOOM
	db 20
	dw VULPIX
	db 18
	dw SKIPLOOM
	end_party

	next_party ; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 17
	dw FLAREON
	end_party

	next_party ; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 17
	dw ESPEON
	end_party

	next_party ; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 17
	dw UMBREON
	end_party

	next_party ; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 17
	dw VAPOREON
	end_party

	next_party ; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 17
	dw JOLTEON
	end_party

	end_party_list

TwinsGroup:
	next_party ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw SPINARAK
	db 10
	dw LEDYBA
	end_party

	next_party ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	end_party

	next_party ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	end_party

	next_party ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw LEDYBA
	db 10
	dw SPINARAK
	end_party

	next_party ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VICTREEBEL
	db 35
	dw VILEPLUME
	end_party

	next_party ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 35
	dw VICTREEBEL
	end_party

	next_party ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 31
	dw PHANPY
	end_party

	next_party ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 31
	dw TEDDIURSA
	end_party

	next_party ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	end_party

	next_party ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	end_party

	end_party_list

PokefanFGroup:
	next_party ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 14
	dw SNUBBULL
	db BERRY
	end_party

	next_party ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	end_party

	next_party ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db BERRY
	end_party

	next_party ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db BERRY
	end_party

	next_party ; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_ITEM
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 28
	dw FURRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	end_party

	next_party ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 16
	dw MEOWTH
	db BERRY
	end_party

	end_party_list

RedGroup:
	next_party ; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81
	dw PIKACHU
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73
	dw ESPEON
	dw MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75
	dw SNORLAX
	dw AMNESIA, SNORE, REST, BODY_SLAM
	db 77
	dw VENUSAUR
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 77
	dw BLASTOISE
	dw RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	end_party

	end_party_list

BlueGroup:
	next_party ; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56
	dw PIDGEOT
	dw QUICK_ATTACK, WHIRLWIND, WING_ATTACK, MIRROR_MOVE
	db 54
	dw ALAKAZAM
	dw DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56
	dw RHYDON
	dw FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58
	dw GYARADOS
	dw TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58
	dw EXEGGUTOR
	dw SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 58
	dw ARCANINE
	dw ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	end_party

	end_party_list

OfficerGroup:
	next_party ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 17
	dw GROWLITHE
	end_party

	next_party ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 14
	dw GROWLITHE
	end_party
	
	next_party ; OFFICER (2)
	db "MATT@", TRAINERTYPE_NORMAL
	db 6
	dw HOOTHOOT
	db 7
	dw PUPPERON
	db 9
	dw REMORAID
	end_party
	
	next_party ; OFFICER (2)
	db "SAMSON@", TRAINERTYPE_NORMAL
	db 6
	dw SPINARAK
	db 8
	dw REMORAID
	end_party
	
	next_party ; OFFICER (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 13
	dw EKANS
	db 15
	dw REMORAID
	end_party
	
	end_party_list

GruntFGroup:
	next_party ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	dbw 14, BURGELA
	dbw 18, SMUJJ
	dbw 20, GRIMER
	dbw 21, TANGELA
	end_party

	next_party ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ARBOK
	end_party

	next_party ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GLOOM
	db 25
	dw GLOOM
	end_party

	next_party ; GRUNTF (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw EKANS
	db 23
	dw ODDISH
	db 21
	dw EKANS
	db 24
	dw GLOOM
	end_party

	next_party ; GRUNTF (5)
	db "GRUNT@", TRAINERTYPE_MOVES
	db 18
	dw EKANS
	dw WRAP, LEER, POISON_STING, BITE
	db 18
	dw GLOOM
	dw ABSORB, SWEET_SCENT, STUN_SPORE, SLEEP_POWDER
	end_party

	end_party_list

MysticalmanGroup:
	next_party ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23
	dw DROWZEE
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	dw LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw ELECTRODE
	dw SCREECH, SONICBOOM, THUNDER, ROLLOUT
	end_party
	
	end_party_list
	
SECTION "Enemy Trainer Parties 3", ROMX

InstructorGroup:
	next_party ; INSTRUCTOR (1)
	db "STANLEY@", TRAINERTYPE_NORMAL
	db 3
	dw HOOTHOOT
	end_party
	
	next_party ; INSTRUCTOR (2)
	db "STANLEY@", TRAINERTYPE_NORMAL
	db 15
	dw ABRA
	db 15
	dw HOOTHOOT
	end_party
	
	next_party ; INSTRUCTOR (3)
	db "STANLEY@", TRAINERTYPE_NORMAL
	db 26
	dw KADABRA
	db 27
	dw EXEGGCUTE
	db 28
	dw NOCTOWL
	end_party
	
	next_party ; INSTRUCTOR (4)
	db "STANLEY@", TRAINERTYPE_NORMAL
	db 34
	dw SHUCKLE
	db 36
	dw KADABRA
	db 37
	dw EXEGGUTOR
	db 38 
	dw NOCTOWL
	end_party
	
	next_party ; INSTRUCTOR (5)
	db "STANLEY@", TRAINERTYPE_MOVES
	db 46
	dw SHUQLOUR
	dw TOXIC, EARTHQUAKE, ROLLOUT, REST
	db 48
	dw ALAKAZAM
	dw PSYCHIC_M, DYNAMICPUNCH, SHADOW_BALL, KINESIS
	db 49
	dw EXEGGUTOR
	dw PSYCHIC_M, EGG_BOMB, SOLARBEAM, SUNNY_DAY
	db 50
	dw NOCTOWL
	dw FLY, TAKE_DOWN, HYPNOSIS, DREAM_EATER
	end_party
	
	next_party ; INSTRUCTOR (6)
	db "CURTIS@", TRAINERTYPE_NORMAL
	db 11
	dw RATTATA
	db 12
	dw WOOPER
	db 13
	dw GASTLY
	end_party
	
	end_party_list

ProfessorGroup:
	next_party ; PROFESSOR (1)	
	db "OAK@", TRAINERTYPE_MOVES
	db 3
	dw SPEAROW
	dw FURY_ATTACK, MIRROR_MOVE, NO_MOVE, NO_MOVE
	db 7
	dw BULBASAUR
	dw TACKLE, GROWL, LEECH_SEED, NO_MOVE
	end_party
	
	next_party ; PROFESSOR (2)	
	db "OAK@", TRAINERTYPE_MOVES
	db 3
	dw SPEAROW
	dw FURY_ATTACK, MIRROR_MOVE, NO_MOVE, NO_MOVE
	db 7
	dw CHARMANDER
	dw SCRATCH, GROWL, EMBER, NO_MOVE
	end_party
	
	next_party ; PROFESSOR (3)	
	db "OAK@", TRAINERTYPE_MOVES
	db 3
	dw SPEAROW
	dw FURY_ATTACK, MIRROR_MOVE, NO_MOVE, NO_MOVE 
	db 7
	dw SQUIRTLE
	dw TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE
	end_party

	end_party_list

ProdigyGroup:
	next_party ; PRODIGY (1)
	db "AXEL@", TRAINERTYPE_NORMAL
	db 8
	dw CHIKORITA
	db 8
	dw CYNDAQUIL
	db 8
	dw TOTODILE
	db 9
	dw CUBONE
	end_party
		
	end_party_list
		
SoldierGroup:
	next_party; SOLDIER (1)
	db "DWIGHT@", TRAINERTYPE_NORMAL
	db 3
	dw RATTATA
	db 3
	dw SENTRET
	end_party
	
	end_party_list
	
FledglingGroup:
	next_party; FLEDGLING (1)
		db "BARRY@", TRAINERTYPE_NORMAL
		db 4
		dw HOPPIP
		db 6
		dw PIDGEY
	end_party
	
	next_party; FLEDGLING (2)
		db "TERRY@", TRAINERTYPE_NORMAL
		db 13
		dw IGGLYBUFF
		db 13
		dw CLEFFA
		db 14
		dw PIDGEY
		db 14
		dw SPEAROW
		db 15
		dw DODAERIE
	end_party

	next_party; FLEDGLING (3)
		string "TIMOTHY"
		db     TRAINERTYPE_NORMAL

		dbw    6, CATERPIE
		dbw    6, WEEDLE
		dbw    9, METAPOD
		dbw    9, KAKUNA
		dbw    9, DODAERIE
	end_party

	next_party ; FLEDGLING (4)
		string "WINSTON"
		db     TRAINERTYPE_NORMAL
		dbw    16, MAGBY
		dbw    18, PSYDUCK
		dbw    18, MURKROW
	end_party
	
	end_party_list
	
BallsmithGroup:
	next_party; BALLSMITH (1)
	db "KURT@", TRAINERTYPE_NORMAL
	db 21
	dw VOLTORB
	db 21
	dw SANDSHREW
	db 22
	dw LICKITUNG
	db 24
	dw GLOOM
	db 24
	dw SLOWPOKE
	end_party
		
	end_party_list
		
MysticGroup:
	next_party; MYSTIC (1)
	db "STELLA@", TRAINERTYPE_NORMAL
	db 12
	dw ABRA
	db 13
	dw GASTLY
	db 14
	dw NATU 
	end_party
		
	end_party_list
		
RockClimberGroup:
	next_party; ROCKCLIMBER (1)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 7
	dw MACHOP
	end_party

	next_party; ROCKCLIMBER (2)
	db "LOID@", TRAINERTYPE_NORMAL
	db 12
	dw GEODUDE
	db 12
	dw BELLSPROUT
	db 13
	dw BURGELA 
	end_party 
		
	end_party_list
	
CamperGroup:
	next_party ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_M
	end_party

	next_party ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 14
	dw PSYDUCK
	end_party

	next_party ; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 10
	dw DIGLETT
	db 10
	dw ZUBAT
	db 14
	dw DIGLETT
	end_party

	next_party ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 13
	dw SANDSHREW
	db 15
	dw MARILL
	end_party

	next_party ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOKING
	end_party

	next_party ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 34
	dw NIDOKING
	end_party

	next_party ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 31
	dw SANDSLASH
	end_party

	next_party ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 29
	dw PRIMEAPE
	db 29
	dw POLIWRATH
	end_party

	next_party ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	end_party

	next_party ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	end_party

	next_party ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	end_party

	next_party ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 17
	dw GEODUDE
	db 17
	dw GEODUDE
	db 23
	dw PSYDUCK
	end_party

	next_party ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 26
	dw PSYDUCK
	end_party

	next_party ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	end_party

	next_party ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	end_party

	next_party ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	end_party

	next_party ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	end_party

	next_party ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 37
	dw SANDSLASH
	end_party

	next_party ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 17
	dw SANDSHREW
	db 17
	dw SANDSLASH
	db 19
	dw ZUBAT
	end_party

	next_party ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 30
	dw SLUGMA
	db 32
	dw PSYDUCK
	end_party

	next_party ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 36
	dw MAGCARGO
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 34
	dw GOLDUCK
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	end_party

	next_party ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 30
	dw PRIMEAPE
	db 30
	dw TAUROS
	end_party
	
	next_party ; CAMPER (23)
	db "CRAIG@", TRAINERTYPE_NORMAL
	db 3
	dw MAREEP
	db 3
	dw SPEAROW
	db 3
	dw VULPIII
	db 4
	dw MARILL
	end_party
	
	end_party_list
	
	
SportsmanGroup:
	next_party; SPORTSMAN (1)
	db "JAYDEN@", TRAINERTYPE_NORMAL
	db 4
	dw COALTA
	end_party
	
	end_party_list
	
ManchildGroup:
	next_party ; MANCHILD (1)
	db "MIGUEL@", TRAINERTYPE_NORMAL
	db 10
	dw ELEKID
	db 11
	dw MAGNEMITE
	db 12
	dw COALTA
	end_party

	end_party_list
