; The following was generated from 
; trainers_items_wild.xlsx, do not edit directly!

SECTION "Trainer Class Rival1", ROMX
Rival1Group:
	next_party ; Rival (Chikorita1)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 5, CHIKORITA
	end_party
	next_party ; Rival (Cyndaquil1)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 5, CYNDAQUIL
	end_party
	next_party ; Rival (Totodile1)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 5, TOTODILE
	end_party
	next_party ; Rival (Chikorita2)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 12, SENTRET
		dbw 12, EEVEE
		dbw 13, PHANPY
		dbw 13, CHIKORITA
	end_party
	next_party ; Rival (Cyndaquil2)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 12, SENTRET
		dbw 12, EEVEE
		dbw 13, PHANPY
		dbw 13, CYNDAQUIL
	end_party
	next_party ; Rival (Totodile2)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 12, SENTRET
		dbw 12, EEVEE
		dbw 13, PHANPY
		dbw 13, TOTODILE
	end_party
	next_party ; Rival (Chikorita3)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 21, PHANPY
		dbw 21, VULPIX
		dbw 22, EEVEE
		dbw 22, PETAMOLE
	end_party
	next_party ; Rival (Cyndaquil3)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 21, PHANPY
		dbw 21, POLIWAG
		dbw 22, EEVEE
		dbw 22, QUILAVA
	end_party
	next_party ; Rival (Totodile3)
		db "RIVAL@", TRAINERTYPE_NORMAL
		dbw 21, PHANPY
		dbw 21, TANGELA
		dbw 22, EEVEE
		dbw 22, CROCONAW
	end_party
	end_party_list

SECTION "Trainer Class Youngster", ROMX
YoungsterGroup:
	next_party ; Joey (1)
		db "JOEY@", TRAINERTYPE_NORMAL
		dbw 4, RATTATA
	end_party
	next_party ; Joey (Rematch2)
		db "JOEY@", TRAINERTYPE_NORMAL
		dbw 15, RATTATA
	end_party
	next_party ; Joey (Rematch3)
		db "JOEY@", TRAINERTYPE_MOVES
		dbw 21, RATTATA
		dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	end_party
	next_party ; Joey (Rematch4)
		db "JOEY@", TRAINERTYPE_MOVES
		dbw 30, RATTATA
		dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	end_party
	next_party ; Joey (Rematch5)
		db "JOEY@", TRAINERTYPE_MOVES
		dbw 37, RATTATA
		dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	end_party
	next_party ; Mikey (1)
		db "MIKEY@", TRAINERTYPE_NORMAL
		dbw 2, PIDGEY
		dbw 4, RATTATA
	end_party
	next_party ; Max (1)
		db "MAX@", TRAINERTYPE_NORMAL
		dbw 2, YANMA
		dbw 2, SANDSHREW
	end_party
	next_party ; Benny (1)
		db "BENNY@", TRAINERTYPE_NORMAL
		dbw 2, CLEFLING
		dbw 5, LEDYBA
	end_party
	next_party ; Dan (1)
		db "DAN@", TRAINERTYPE_NORMAL
		dbw 10, RATTATA
		dbw 11, HOOTHOOT
		dbw 12, MAREEP
		dbw 12, RATTATA
	end_party
	end_party_list

SECTION "Trainer Class Bug Catcher", ROMX
BugCatcherGroup:
	next_party ; Lenny (1)
		db "LENNY@", TRAINERTYPE_NORMAL
		dbw 2, CATERPIE
		dbw 2, WEEDLE
	end_party
	next_party ; Timmy (1)
		db "TIMMY@", TRAINERTYPE_NORMAL
		dbw 6, CATERPIE
		dbw 6, WEEDLE
		dbw 9, METAPOD
		dbw 9, KAKUNA
		dbw 9, DODAERIE
	end_party
	next_party ; Hikaru (1)
		db "HIKARU@", TRAINERTYPE_NORMAL
		dbw 9, METAPOD
		dbw 18, BUTTERFREE
		dbw 9, KAKUNA
		dbw 18, BEEDRILL
		dbw 19, SCYTHER
	end_party
	next_party ; Shelby (1)
		db "SHELBY@", TRAINERTYPE_NORMAL
		dbw 11, PARASPOR
		dbw 23, PARAS
		dbw 25, PARASECT
	end_party
	next_party ; Yukiji (1)
		db "YUKIJI@", TRAINERTYPE_NORMAL
		dbw 20, SCYTHER
		dbw 22, PINSIR
	end_party
	next_party ; Nate (1)
		db "NATE@", TRAINERTYPE_NORMAL
		dbw 18, SILKANE
		dbw 18, BEEDRILL
		dbw 20, TERRACHNID
	end_party
	end_party_list

SECTION "Trainer Class Soldier", ROMX
SoldierGroup:
	next_party ; Dwight (1)
		db "DWIGHT@", TRAINERTYPE_NORMAL
		dbw 3, RATTATA
		dbw 4, SENTRET
	end_party
	next_party ; Grant (1)
		db "GRANT@", TRAINERTYPE_NORMAL
		dbw 22, GASTLY
		dbw 22, MISDREAVUS
		dbw 23, PHANDARIN
	end_party
	end_party_list

SECTION "Trainer Class Instructor", ROMX
InstructorGroup:
	next_party ; Stanley (1)
		db "STANLEY@", TRAINERTYPE_NORMAL
		dbw 3, HOOTHOOT
	end_party
	next_party ; Stanley (Rematch2)
		db "STANLEY@", TRAINERTYPE_NORMAL
		dbw 15, ABRA
		dbw 15, HOOTHOOT
	end_party
	next_party ; Stanley (Rematch3)
		db "STANLEY@", TRAINERTYPE_NORMAL
		dbw 26, KADABRA
		dbw 27, EXEGGCUTE
		dbw 28, NOCTOWL
	end_party
	next_party ; Stanley (Rematch4)
		db "STANLEY@", TRAINERTYPE_NORMAL
		dbw 34, SHUCKLE
		dbw 36, KADABRA
		dbw 37, EXEGGUTOR
		dbw 38, NOCTOWL
	end_party
	next_party ; Stanley (Rematch5)
		db "STANLEY@", TRAINERTYPE_MOVES
		dbw 46, SHUQLOUR
		dw TOXIC, EARTHQUAKE, ROLLOUT, REST
		dbw 48, ALAKAZAM
		dw PSYCHIC, DYNAMICPUNCH, SHADOW_BALL, KINESIS
		dbw 49, EXEGGUTOR
		dw PSYCHIC, EGG_BOMB, SOLARBEAM, SUNNY_DAY
		dbw 50, NOCTOWL
		dw FLY, TAKE_DOWN, HYPNOSIS, DREAM_EATER
	end_party
	next_party ; Curtis (1)
		db "CURTIS@", TRAINERTYPE_NORMAL
		dbw 11, RATTATA
		dbw 12, WOOPER
		dbw 13, GASTLY
	end_party
	next_party ; Frank (1)
		db "FRANK@", TRAINERTYPE_MOVES
		dbw 21, BIPULLA
		dw LICK, PURSUIT, HYPNOSIS, NO_MOVE
		dbw 23, GASTLY
		dw CURSE, SMOG, LICK, NO_MOVE
	end_party
	end_party_list

SECTION "Trainer Class Lass", ROMX
LassGroup:
	next_party ; Sam (1)
		db "SAM@", TRAINERTYPE_NORMAL
		dbw 2, COINPUR
		dbw 4, SENTRET
	end_party
	next_party ; Yuri (1)
		db "YURI@", TRAINERTYPE_NORMAL
		dbw 2, CAMOUFLAKE
		dbw 3, MARILL
		dbw 4, SWINUB
	end_party
	next_party ; Ariel (1)
		db "ARIEL@", TRAINERTYPE_MOVES
		dbw 5, ZUBAT
		dw HAZE, LEECH_LIFE, SUPERSONIC, NO_MOVE
		dbw 7, PIDGEY
		dw TACKLE, SAND_ATTACK, QUICK_ATTACK, NO_MOVE
		dbw 8, HOPPIP
		dw QUICK_ATTACK, SPLASH, TAIL_WHIP, NO_MOVE
	end_party
	next_party ; June (1)
		db "JUNE@", TRAINERTYPE_NORMAL
		dbw 9, IGGLYBUFF
		dbw 11, SENTRET
	end_party
	next_party ; June (2)
		db "JUNE@", TRAINERTYPE_NORMAL
		dbw 11, MOLAMBINO
	end_party
	next_party ; Annie (1)
		db "ANNIE@", TRAINERTYPE_NORMAL
		dbw 9, YANMA
		dbw 12, CLEFFA
		dbw 14, ZUBAT
	end_party
	next_party ; Gloria (1)
		db "GLORIA@", TRAINERTYPE_NORMAL
		dbw 14, IGGLYBUFF
		dbw 15, SPEAROW
		dbw 17, JIGGLYPUFF
	end_party
	next_party ; Helen (1)
		db "HELEN@", TRAINERTYPE_NORMAL
		dbw 14, COINPUR
		dbw 14, SENTRET
		dbw 15, FURRET
	end_party
	next_party ; Tina (1)
		db "TINA@", TRAINERTYPE_MOVES
		dbw 10, BUTTERFREE
		dw TACKLE, STRING_SHOT, CONFUSION, GUST
	end_party
	end_party_list

SECTION "Trainer Class Teacher", ROMX
TeacherGroup:
	next_party ; Ann (1)
		db "ANN@", TRAINERTYPE_NORMAL
		dbw 2, HOOTHOOT
		dbw 4, MOIBELLE
	end_party
	next_party ; Bella (1)
		db "BELLA@", TRAINERTYPE_NORMAL
		dbw 7, PICHU
		dbw 9, HOOTHOOT
		dbw 9, MARILL
		dbw 11, DROWZEE
	end_party
	end_party_list

SECTION "Trainer Class Officer", ROMX
OfficerGroup:
	next_party ; Matt (1)
		db "MATT@", TRAINERTYPE_NORMAL
		dbw 6, HOOTHOOT
		dbw 7, PUPPERON
		dbw 9, REMORAID
	end_party
	next_party ; Samson (1)
		db "SAMSON@", TRAINERTYPE_NORMAL
		dbw 6, SPINARAK
		dbw 8, REMORAID
	end_party
	next_party ; Aaron (1)
		db "AARON@", TRAINERTYPE_NORMAL
		dbw 13, EKANS
		dbw 15, REMORAID
	end_party
	next_party ; Manfred (1)
		db "MANFRED@", TRAINERTYPE_NORMAL
		dbw 15, ABRA
		dbw 15, REMORAID
		dbw 18, BALLERINE
		dbw 19, SNUBBULL
	end_party
	end_party_list

SECTION "Trainer Class Sportsman", ROMX
SportsmanGroup:
	next_party ; Jayden (1)
		db "JAYDEN@", TRAINERTYPE_NORMAL
		dbw 4, COALTA
	end_party
	end_party_list

SECTION "Trainer Class Camper", ROMX
CamperGroup:
	next_party ; Craig (1)
		db "CRAIG@", TRAINERTYPE_NORMAL
		dbw 3, MAREEP
		dbw 3, SPEAROW
		dbw 3, VULPIII
		dbw 4, MARILL
	end_party
	end_party_list

SECTION "Trainer Class Fledgling", ROMX
FledglingGroup:
	next_party ; Barry (1)
		db "BARRY@", TRAINERTYPE_NORMAL
		dbw 4, HOPPIP
		dbw 6, PIDGEY
	end_party
	next_party ; Tommy (1)
		db "TOMMY@", TRAINERTYPE_NORMAL
		dbw 7, PIDGEY
		dbw 8, DODAERIE
	end_party
	next_party ; Timothy (1)
		db "TIMOTHY@", TRAINERTYPE_NORMAL
		dbw 6, CATERPIE
		dbw 6, WEEDLE
		dbw 9, METAPOD
		dbw 9, KAKUNA
		dbw 9, DODAERIE
	end_party
	next_party ; Terry (1)
		db "TERRY@", TRAINERTYPE_NORMAL
		dbw 13, IGGLYBUFF
		dbw 13, CLEFFA
		dbw 14, PIDGEY
		dbw 14, SPEAROW
		dbw 15, DODAERIE
	end_party
	next_party ; Winston (1)
		db "WINSTON@", TRAINERTYPE_NORMAL
		dbw 16, MAGBY
		dbw 18, PSYDUCK
		dbw 18, MURKROW
	end_party
	end_party_list

SECTION "Trainer Class Bird Keeper", ROMX
BirdKeeperGroup:
	next_party ; Rodney (1)
		db "RODNEY@", TRAINERTYPE_NORMAL
		dbw 4, HOOTHOOT
		dbw 7, SPEAROW
	end_party
	next_party ; Clyde (1)
		db "CLYDE@", TRAINERTYPE_NORMAL
		dbw 7, MURKROW
	end_party
	end_party_list

SECTION "Trainer Class Falkner", ROMX
FalknerGroup:
	next_party ; Falkner (1)
		db "FALKNER@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
		dbw 9, PIDGEY
		dw NO_ITEM
		dw MUD_SLAP, QUICK_ATTACK, GUST, NO_MOVE
		dbw 11, NATU
		dw NO_ITEM
		dw PECK, NIGHT_SHADE, NO_MOVE, NO_MOVE
		dbw 14, ADBARSTORK
		dw BERRY
		dw FURY_ATTACK, GROWL, WHIRLWIND, NO_MOVE
	end_party
	end_party_list

SECTION "Trainer Class Fisher", ROMX
FisherGroup:
	next_party ; Manny (1)
		db "MANNY@", TRAINERTYPE_NORMAL
		dbw 9, REMORAID
	end_party
	next_party ; Koi (1)
		db "KOI@", TRAINERTYPE_MOVES
		dbw 15, MAGIKARP
		dw SPLASH, TWISTER, TACKLE, FLAIL
		dbw 15, MAGIKARP
		dw SPLASH, WATER_GUN, TACKLE, FLAIL
		dbw 15, MAGIKARP
		dw SPLASH, MINIMIZE, TACKLE, FLAIL
	end_party
	next_party ; George (1)
		db "GEORGE@", TRAINERTYPE_NORMAL
		dbw 20, GYARADOS
	end_party
	next_party ; Billy (1)
		db "BILLY@", TRAINERTYPE_NORMAL
		dbw 16, WOOPER
		dbw 16, POLIWAG
		dbw 17, BITEEL
	end_party
	end_party_list

SECTION "Trainer Class LassNieNie", ROMX
LassNieNieGroup:
	next_party ; Niechelle (1)
		db "NIECHELLE@", TRAINERTYPE_NORMAL
		dbw 5, CHIKORITA
		dbw 5, CLEFLING
		dbw 6, SNUBBULL
		dbw 6, JIGGLYPUFF
		dbw 7, PIPLUP
	end_party
	next_party ; Niechelle (Rematch1)
		db "NIECHELLE@", TRAINERTYPE_NORMAL
		dbw 10, MAREEP
		dbw 11, CAMOUFLAKE
		dbw 12, JIGGLYPUFF
	end_party
	next_party ; Niechelle (Rematch2)
		db "NIECHELLE@", TRAINERTYPE_NORMAL
		dbw 18, FLAAFFY
		dbw 19, GESTICUTE
		dbw 20, JIGGLYPUFF
		dbw 21, AUDINO
	end_party
	next_party ; Niechelle (4)
		db "NIECHELLE@", TRAINERTYPE_NORMAL
		dbw 30, AMPHAROS
		dbw 32, GESTICUTE
		dbw 32, SNUBBULL
		dbw 34, JIGGLYPUFF
		dbw 36, AUDINO
	end_party
	next_party ; Niechelle (5)
		db "NIECHELLE@", TRAINERTYPE_MOVES
		dbw 52, AMPHAROS
		dw THUNDERBOLT, ICE_PUNCH, FIRE_PUNCH, IRON_TAIL
		dbw 53, GESTICUTE
		dw RAZOR_LEAF, ICE_BEAM, PURSUIT, GIGA_DRAIN
		dbw 54, JIGGLYPUFF
		dw BODY_SLAM, RETURN, SWEET_KISS, PROTECT
		dbw 55, GRANBULL
		dw CRUNCH, HYPER_BEAM, PROTECT, SHADOW_BALL
		dbw 56, PIPLUP
		dw SOLARBEAM, SWEET_KISS, BUBBLEBEAM, PETAL_DANCE
		dbw 56, AUDINO
		dw SOLARBEAM, SWEET_KISS, BUBBLEBEAM, PETAL_DANCE
	end_party
	end_party_list

SECTION "Trainer Class Sage", ROMX
SageGroup:
	next_party ; Chen (1)
		db "CHEN@", TRAINERTYPE_NORMAL
		dbw 6, DROWZEE
		dbw 7, GEODUDE
	end_party
	next_party ; Monty (1)
		db "MONTY@", TRAINERTYPE_NORMAL
		dbw 5, VULPIII
		dbw 5, SANDSHREW
		dbw 7, ONIX
	end_party
	next_party ; Nico (1)
		db "NICO@", TRAINERTYPE_NORMAL
		dbw 7, BELLSPROUT
		dbw 7, BELLSPROUT
		dbw 9, GASTLY
	end_party
	next_party ; Chow (1)
		db "CHOW@", TRAINERTYPE_MOVES
		dbw 8, BELLSPROUT
		dw VINE_WHIP, GROWTH, WRAP, NO_MOVE
		dbw 8, ABRA
		dw THUNDER_WAVE, SWIFT, FLASH, FORESIGHT
		dbw 10, VULPIII
		dw EMBER, TAIL_WHIP, QUICK_ATTACK, NO_MOVE
	end_party
	next_party ; Edmond (1)
		db "EDMOND@", TRAINERTYPE_NORMAL
		dbw 10, BELLSPROUT
		dbw 12, VULPIII
		dbw 12, MOIBELLE
	end_party
	next_party ; Jin (1)
		db "JIN@", TRAINERTYPE_NORMAL
		dbw 11, BELLSPROUT
		dbw 13, HOOTHOOT
	end_party
	next_party ; Neal (1)
		db "NEAL@", TRAINERTYPE_NORMAL
		dbw 9, ABRA
		dbw 11, BELLSPROUT
		dbw 13, NATU
		dbw 15, PUPPERON
	end_party
	next_party ; Li (1)
		db "LI@", TRAINERTYPE_NORMAL
		dbw 13, BELLSPROUT
		dbw 13, ODDISH
		dbw 14, BIPULLA
		dbw 16, KADABRA
	end_party
	next_party ; Takao (1)
		db "TAKAO@", TRAINERTYPE_NORMAL
		dbw 22, GASTLY
		dbw 22, MISDREAVUS
		dbw 23, PHANDARIN
	end_party
	end_party_list

SECTION "Trainer Class Mystic", ROMX
MysticGroup:
	next_party ; Sonia (1)
		db "SONIA@", TRAINERTYPE_NORMAL
		dbw 6, SPINARAK
		dbw 8, NATU
	end_party
	next_party ; Stella (1)
		db "STELLA@", TRAINERTYPE_NORMAL
		dbw 12, ABRA
		dbw 13, GASTLY
		dbw 14, NATU
	end_party
	next_party ; Andrea (1)
		db "ANDREA@", TRAINERTYPE_NORMAL
		dbw 23, STROMEN
		dbw 23, PHANDARIN
		dbw 24, HAUNTER
	end_party
	end_party_list

SECTION "Trainer Class Blackbelt", ROMX
BlackbeltGroup:
	next_party ; Genki (1)
		db "GENKI@", TRAINERTYPE_NORMAL
		dbw 9, MACHOP
		dbw 11, MANKEY
	end_party
	next_party ; Hitoshi (1)
		db "HITOSHI@", TRAINERTYPE_NORMAL
		dbw 12, MACHOP
		dbw 15, TYROGUE
	end_party
	next_party ; Lee (1)
		db "LEE@", TRAINERTYPE_NORMAL
		dbw 12, GEODUDE
		dbw 13, MACHOP
		dbw 13, MANKEY
	end_party
	next_party ; Kaori (1)
		db "KAORI@", TRAINERTYPE_NORMAL
		dbw 16, MANKEY
		dbw 16, MANKEY
		dbw 17, PHANPY
	end_party
	next_party ; Jiro (1)
		db "JIRO@", TRAINERTYPE_NORMAL
		dbw 17, MACHOP
		dbw 17, FARFETCH_D
	end_party
	next_party ; Kiyoshi (1)
		db "KIYOSHI@", TRAINERTYPE_NORMAL
		dbw 16, MANKEY
		dbw 18, SNEASEL
	end_party
	next_party ; Kiyo (1)
		db "KIYO@", TRAINERTYPE_NORMAL
		dbw 18, SCYTHER
		dbw 20, HITMONTOP
	end_party
	end_party_list

SECTION "Trainer Class Schoolboy", ROMX
SchoolboyGroup:
	next_party ; Avery (1)
		db "AVERY@", TRAINERTYPE_NORMAL
		dbw 8, RATTATA
		dbw 8, SPEAROW
		dbw 9, PARASPOR
		dbw 10, SWINUB
	end_party
	next_party ; Andy (1)
		db "ANDY@", TRAINERTYPE_NORMAL
		dbw 7, MAREEP
		dbw 8, BURGELA
		dbw 9, ODDISH
	end_party
	end_party_list

SECTION "Trainer Class Rock Climber", ROMX
RockClimberGroup:
	next_party ; Loid (1)
		db "LOID@", TRAINERTYPE_NORMAL
		dbw 12, GEODUDE
		dbw 12, BELLSPROUT
		dbw 13, BURGELA
	end_party
	end_party_list

SECTION "Trainer Class Beauty", ROMX
BeautyGroup:
	next_party ; Celica (1)
		db "CELICA@", TRAINERTYPE_NORMAL
		dbw 14, COINPUR
		dbw 16, MEOWTH
		dbw 16, AIPOM
	end_party
	next_party ; Sarah (1)
		db "SARAH@", TRAINERTYPE_NORMAL
		dbw 15, PIDGEY
		dbw 17, CLEFAIRY
	end_party
	next_party ; Nina (1)
		db "NINA@", TRAINERTYPE_NORMAL
		dbw 14, MAREEP
		dbw 17, MARILL
		dbw 17, MISDREAVUS
	end_party
	next_party ; Peony (1)
		db "PEONY@", TRAINERTYPE_NORMAL
		dbw 17, MOIBELLE
		dbw 17, OREFRY
		dbw 18, SMOOCHUM
	end_party
	end_party_list

SECTION "Trainer Class Whitney", ROMX
WhitneyGroup:
	next_party ; Whitney (1)
		db "WHITNEY@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
		dbw 17, KOALYPTUS
		dw NO_ITEM
		dw SCRATCH, GROWL, BITE, RAZOR_LEAF
		dbw 19, FARFETCH_D
		dw NO_ITEM
		dw GUST, SAND_ATTACK, FURY_ATTACK, MUD_SLAP
		dbw 20, MILTANK
		dw PRZCUREBERRY
		dw ROLLOUT, ATTRACT, STOMP, MILK_DRINK
	end_party
	end_party_list

SECTION "Trainer Class Prodigy", ROMX
ProdigyGroup:
	next_party ; Axel (1)
		db "AXEL@", TRAINERTYPE_NORMAL
		dbw 7, CHIKORITA
		dbw 7, CYNDAQUIL
		dbw 7, TOTODILE
		dbw 8, CUBONE
	end_party
	end_party_list

SECTION "Trainer Class Manchild", ROMX
ManchildGroup:
	next_party ; Miguel (1)
		db "MIGUEL@", TRAINERTYPE_NORMAL
		dbw 10, ELEKID
		dbw 11, MAGNEMITE
		dbw 12, COALTA
	end_party
	next_party ; Marco (1)
		db "MARCO@", TRAINERTYPE_NORMAL
		dbw 15, COALTA
		dbw 16, SMUJJ
		dbw 18, OREFRY
	end_party
	end_party_list

SECTION "Trainer Class Sailor", ROMX
SailorGroup:
	next_party ; Edward (1)
		db "EDWARD@", TRAINERTYPE_NORMAL
		dbw 14, SPEAROW
		dbw 15, MURKROW
		dbw 17, MACHOP
		dbw 17, KRABBY
	end_party
	end_party_list

SECTION "Trainer Class GruntM", ROMX
GruntMGroup:
	next_party ; Grunt (R33)
		db "GRUNT@", TRAINERTYPE_NORMAL
		dbw 19, RATTATA
		dbw 20, BALLERINE
	end_party
	next_party ; Grunt (HyuckR33)
		db "GRUNT@", TRAINERTYPE_NORMAL
		dbw 20, SMEARGLE
		dbw 20, RATICATE
	end_party
	end_party_list

SECTION "Trainer Class GruntF", ROMX
GruntFGroup:
	next_party ; Grunt (R33)
		db "GRUNT@", TRAINERTYPE_NORMAL
		dbw 14, BURGELA
		dbw 18, SMUJJ
		dbw 20, GRIMER
		dbw 21, TANGELA
	end_party
	end_party_list

SECTION "Trainer Class RocketKaren", ROMX
RocketKarenGroup:
	next_party ; Karen (1)
		db "KAREN@", TRAINERTYPE_NORMAL
		dbw 21, SNEASEL
		dbw 22, GASTLY
		dbw 23, HOUNDOUR
	end_party
	end_party_list

SECTION "Trainer Class Ballsmith", ROMX
BallsmithGroup:
	next_party ; Kurt (1)
		db "KURT@", TRAINERTYPE_NORMAL
		dbw 21, VOLTORB
		dbw 21, SANDSHREW
		dbw 22, LICKITUNG
		dbw 24, GLOOM
		dbw 24, SLOWPOKE
	end_party
	end_party_list

SECTION "Trainer Class Twins", ROMX
TwinsGroup:
	next_party ; Mei & Lei (1)
		db "MEI & LEI@", TRAINERTYPE_NORMAL
		dbw 17, LEDYBA
		dbw 17, SPINARAK
		dbw 21, BUTTERFREE
		dbw 21, BEEDRILL
	end_party
	next_party ; Mei & Lei (2)
		db "MEI & LEI@", TRAINERTYPE_NORMAL
		dbw 21, BUTTERFREE
		dbw 21, BEEDRILL
		dbw 17, LEDYBA
		dbw 17, SPINARAK
	end_party
	end_party_list

SECTION "Trainer Class Picnicker", ROMX
PicnickerGroup:
	next_party ; Jamie (1)
		db "JAMIE@", TRAINERTYPE_NORMAL
		dbw 21, VENONAT
		dbw 22, BEEDRILL
		dbw 22, BUTTERFREE
	end_party
	end_party_list

SECTION "Trainer Class Bugsy", ROMX
BugsyGroup:
	next_party ; Bugsy (1)
		db "BUGSY@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
		dbw 23, LEDIAN
		dw NO_ITEM
		dw TACKLE, SUPERSONIC, COMET_PUNCH, ROLLOUT
		dbw 24, ARIADOS
		dw FIRE_MANE
		dw POISON_STING, BITE, SPIDER_WEB, NIGHT_SHADE
		dbw 26, HERACROSS
		dw SILVERPOWDER
		dw FURY_CUTTER, DETECT, HORN_ATTACK, CROSS_CUTTER
	end_party
	end_party_list

SECTION "Trainer Class Firebreather", ROMX
FirebreatherGroup:
	next_party ; Rob (1)
		db "ROB@", TRAINERTYPE_NORMAL
		dbw 19, SLUGMA
		dbw 20, SLUGMA
	end_party
	next_party ; Matt (1)
		db "MATT@", TRAINERTYPE_NORMAL
		dbw 21, MAGMAR
	end_party
	end_party_list

SECTION "Trainer Class Medium", ROMX
MediumGroup:
	next_party ; Dorothy (1)
		db "DOROTHY@", TRAINERTYPE_NORMAL
		dbw 23, STROMEN
		dbw 24, BIPULLA
	end_party
	end_party_list

SECTION "Trainer Class Morton", ROMX
MortonGroup:
	next_party ; Morton (1)
		db "MORTON@", TRAINERTYPE_ITEM | TRAINERTYPE_MOVES
		dbw 29, RATTLIT
		dw NO_ITEM
		dw CONFUSION, ECHO, SHADOW_BALL, RAPID_SPIN
		dbw 30, GIRAFARIG
		dw SPELL_TAG
		dw LICK, PURSUIT, STOMP, HYPNOSIS
		dbw 32, FENNECURSE
		dw MIRACLEBERRY
		dw SHADOW_BALL, FAINT_ATTACK, FLAME_WHEEL, WILL_O_WISP
	end_party
	end_party_list

SECTION "Trainer Class Rocket Will", ROMX
RocketWillGroup:
	next_party ; Will (1)
		db "WILL@", TRAINERTYPE_NORMAL
		dbw 28, SLOWPOKE
		dbw 29, GASTLY
		dbw 30, NATU
	end_party
	end_party_list

SECTION "Trainer Class Juggler", ROMX
JugglerGroup:
	next_party ; Irwin (1)
		db "IRWIN@", TRAINERTYPE_NORMAL
		dbw 18, VOLTORB
		dbw 19, VOLTORB
		dbw 20, VOLTORB
	end_party
	end_party_list

SECTION "Trainer Class Biker", ROMX
BikerGroup:
	next_party ; Harley (1)
		db "HARLEY@", TRAINERTYPE_NORMAL
		dbw 19, KOFFING
		dbw 20, SMUJJ
	end_party
	end_party_list

SECTION "Trainer Class E4Karen", ROMX
E4KarenGroup:
	next_party ; Karen (1)
		db "KAREN@", TRAINERTYPE_NORMAL
		dbw 100, PIKACHU
	end_party
	end_party_list

SECTION "Trainer Class Elm", ROMX
ElmGroup:
	next_party ; Elm (1)
		db "ELM@", TRAINERTYPE_NORMAL
		dbw 100, PIKACHU
	end_party
	end_party_list
