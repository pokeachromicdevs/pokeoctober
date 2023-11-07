_NUM_FOLLOW_SPRITES = 0
follow_sprite: MACRO
	dba \1 ; sprite location
	db  \2 ; which palette to use (see data/pokemon/follow_sprite_pointers.asm#FollowSpritePalettes)
_NUM_FOLLOW_SPRITES = _NUM_FOLLOW_SPRITES + 1
ENDM

FollowSpritePalettes::
; standard palettes
	const_def
	const PAL_FOLLOWER_RED
	dw    .Red
	const PAL_FOLLOWER_BLUE
	dw    .Blue
	const PAL_FOLLOWER_GREEN
	dw    .Green
	const PAL_FOLLOWER_BROWN
	dw    .Brown
	const PAL_FOLLOWER_PURPLE	
	dw    .Purple
	const PAL_FOLLOWER_SILVER
	dw    .Silver
; custom palettes
	const PAL_FOLLOWER_KOTORA
	dw    .Kotora
	const PAL_FOLLOWER_BULBASAUR
	dw    .Bulba
	const PAL_FOLLOWER_SNOUWRBUN
	dw    .Snouwrbun
	const PAL_FOLLOWER_JIGGLYPUFF ; used for other pinkmons like Clefairy too
	dw    .Jigglypuff
	const PAL_FOLLOWER_CATERPIE
	dw    .Caterpie
	const PAL_FOLLOWER_METAPOD
	dw    .Metapod
	const PAL_FOLLOWER_BUTTERFREE
	dw    .Butterfree
	const PAL_FOLLOWER_BEEDRILL ; used for other yellowmons like Pikachu too 
	dw    .Beedrill
	const PAL_FOLLOWER_WIGGLYTUFF ; to include white belly
	dw    .Wigglytuff
	const PAL_FOLLOWER_IVYSAUR
	dw    .Ivysaur
	const PAL_FOLLOWER_VENUSAUR
	dw    .Ivysaur
	const PAL_FOLLOWER_SQUIRTLE
	dw    .Squirtle
	const PAL_FOLLOWER_WARTORTLE
	dw    .Wartortle
	const PAL_FOLLOWER_BLASTOISE
	dw    .Blastoise
	const PAL_FOLLOWER_SPEAROW
	dw    .Spearow
	const PAL_FOLLOWER_FEAROW
	dw    .Fearow
	const PAL_FOLLOWER_EKANS
	dw    .Ekans
	const PAL_FOLLOWER_ARBOK
	dw    .Arbok
	const PAL_FOLLOWER_SANDSHREW
	dw    .Sandshrew
	const PAL_FOLLOWER_SANDSLASH
	dw    .Sandslash
	const PAL_FOLLOWER_ZUBAT ; also used for Golbat
	dw    .Zubat
	const PAL_FOLLOWER_TONBOSS
	dw    .Tonboss
	const PAL_FOLLOWER_GLOOM
	dw    .Gloom
	const PAL_FOLLOWER_VILEPLUME
	dw    .Vileplume
	const PAL_FOLLOWER_PARAS
	dw    .Paras
	const PAL_FOLLOWER_PARASECT
	dw    .Parasect
	const PAL_FOLLOWER_OREFRY
	dw    .Orefry
	const PAL_FOLLOWER_VENONAT
	dw    .Venonat
	const PAL_FOLLOWER_DIGLETT ; also used for Dugtrio
	dw    .Diglett
	const PAL_FOLLOWER_MEOWTH ; also used for Coinpur, Persian, Mankey line
	dw    .Meowth
	const PAL_FOLLOWER_PSYDUCK
	dw    .Psyduck
	
.Red:      RGB 31,31,31, 31,19,10, 31,07,01, 00,00,00
.Blue:     RGB 31,31,31, 31,19,10, 10,09,31, 00,00,00
.Green:    RGB 31,31,31, 31,19,10, 07,23,03, 00,00,00
.Brown:    RGB 31,31,31, 31,19,10, 15,10,03, 00,00,00
.Purple:   RGB 31,31,31, 31,19,10, 21,15,23, 00,00,00
.Silver:   RGB 31,31,31, 31,31,31, 13,13,13, 00,00,00
.Kotora:   RGB 31,31,31, 31,30,19, 27,21,00, 00,00,00
.Bulba:    RGB 31,31,31, 01,16,00, 07,23,03, 00,00,00
.Snouwrbun: RGB 31,31,31, 31,19,10, 08,22,02, 00,00,00
.Jigglypuff: RGB 31,31,31, 31,14,21, 06,16,31, 00,00,00
.Caterpie: RGB 31,31,31, 12,22,06, 31,09,15, 00,00,00
.Metapod: RGB 31,31,31, 09,14,01, 15,31,00, 00,00,00 
.Butterfree: RGB 31,31,31, 18,25,31, 26,05,13, 00,00,00
.Beedrill: RGB 31,31,31, 31,19,04, 30,04,01, 00,00,00 ; different from Kotora
.Wigglytuff: RGB 31,31,31, 31,31,31, 31,14,21, 00,00,00
.Ivysaur:  RGB 31,31,31, 31,10,16, 12,31,11, 00,00,00 
.Venusaur: RGB 31,31,31, 29,07,14, 08,25,11, 00,00,00
.Squirtle: RGB 31,31,31, 22,18,08, 10,15,31, 00,00,00
.Wartortle: RGB 31,31,31, 22,18,08, 10,14,31, 00,00,00
.Blastoise: RGB 31,31,31, 24,20,03, 08,11,31, 00,00,00
.Spearow: RGB 31,31,31, 30,10,12, 19,10,01, 00,00,00
.Fearow: RGB 31,31,31, 30,06,16, 22,11,04, 00,00,00 
.Ekans: RGB 31,31,31, 31,19,04, 20,08,21, 00,00,00 
.Arbok: RGB 31,31,31, 22,04,09, 18,08,19, 00,00,00 
.Sandshrew: RGB 31,31,31, 31,31,31, 22,18,06, 00,00,00 
.Sandslash: RGB 31,31,31, 23,18,00, 13,07,00, 00,00,00 
.Zubat: RGB 31,31,31, 12,15,19, 05,08,17, 00,00,00 
.Tonboss: RGB 31,31,31, 26,07,03, 14,27,05, 00,00,00
.Gloom: RGB 31,31,31, 31,12,00, 08,09,13, 00,00,00 
.Vileplume: RGB 31,31,31, 31,31,31, 30,04,01, 00,00,00
.Paras: RGB 31,31,31, 27,19,03, 31,12,03, 00,00,00
.Parasect: RGB 31,31,31, 31,31,31, 18,03,07, 00,00,00
.Orefry: RGB 31,31,31, 31,31,31, 31,12,03, 00,00,00
.Venonat: RGB 31,31,31, 30,04,01, 21,15,23, 00,00,00
.Diglett: RGB 31,31,31, 15,10,03, 31,07,01, 00,00,00
.Meowth: RGB 31,31,31, 31,28,10, 12,09,04, 00,00,00
.Psyduck: RGB 31,31,31, 31,31,31, 31,28,10, 00,00,00

FollowSpritePointers::
	follow_sprite BulbasaurSpriteGFX, PAL_FOLLOWER_BULBASAUR ;BULBASAUR
	follow_sprite IvysaurSpriteGFX, PAL_FOLLOWER_IVYSAUR ;IVYSAUR
	follow_sprite VenusaurSpriteGFX, PAL_FOLLOWER_VENUSAUR ;VENUSAUR
	follow_sprite CharmanderSpriteGFX, PAL_FOLLOWER_RED ;CHARMANDER
	follow_sprite CharmeleonSpriteGFX, PAL_FOLLOWER_RED ;CHARMELEON
	follow_sprite CharizardSpriteGFX, PAL_FOLLOWER_RED ;CHARIZARD
	follow_sprite SquirtleSpriteGFX, PAL_FOLLOWER_SQUIRTLE ;SQUIRTLE
	follow_sprite WartortleSpriteGFX, PAL_FOLLOWER_WARTORTLE ;WARTORTLE
	follow_sprite BlastoiseSpriteGFX, PAL_FOLLOWER_BLASTOISE ;BLASTOISE
	follow_sprite CaterpieSpriteGFX, PAL_FOLLOWER_CATERPIE ;CATERPIE
	follow_sprite MetapodSpriteGFX, PAL_FOLLOWER_METAPOD ;METAPOD
	follow_sprite ButterfreeSpriteGFX, PAL_FOLLOWER_BUTTERFREE ;BUTTERFREE
	follow_sprite WeedleSpriteGFX, PAL_FOLLOWER_RED ;WEEDLE
	follow_sprite KakunaSpriteGFX, PAL_FOLLOWER_BROWN ;KAKUNA
	follow_sprite BeedrillSpriteGFX, PAL_FOLLOWER_BEEDRILL ;BEEDRILL
	follow_sprite PidgeySpriteGFX, PAL_FOLLOWER_BROWN ;PIDGEY
	follow_sprite PidgeottoSpriteGFX, PAL_FOLLOWER_BROWN ;PIDGEOTTO
	follow_sprite PidgeotSpriteGFX, PAL_FOLLOWER_BROWN ;PIDGEOT
	follow_sprite RattataSpriteGFX, PAL_FOLLOWER_PURPLE ;RATTATA
	follow_sprite RaticateSpriteGFX, PAL_FOLLOWER_BROWN ;RATICATE
	follow_sprite SpearowSpriteGFX, PAL_FOLLOWER_SPEAROW ;SPEAROW
	follow_sprite FearowSpriteGFX, PAL_FOLLOWER_FEAROW ;FEAROW
	follow_sprite EkansSpriteGFX, PAL_FOLLOWER_EKANS ;EKANS
	follow_sprite ArbokSpriteGFX, PAL_FOLLOWER_ARBOK ;ARBOK
	follow_sprite PikachuSpriteGFX, PAL_FOLLOWER_BEEDRILL ;PIKACHU
	follow_sprite RaichuSpriteGFX, PAL_FOLLOWER_RED ;RAICHU
	follow_sprite SandshrewSpriteGFX, PAL_FOLLOWER_SANDSHREW ;SANDSHREW
	follow_sprite SandslashSpriteGFX, PAL_FOLLOWER_SANDSLASH ;SANDSLASH
	follow_sprite NidoranFSpriteGFX, PAL_FOLLOWER_BLUE ;NIDORAN_F
	follow_sprite NidorinaSpriteGFX, PAL_FOLLOWER_BLUE ;NIDORINA
	follow_sprite NidoqueenSpriteGFX, PAL_FOLLOWER_BLUE ;NIDOQUEEN
	follow_sprite NidoranMSpriteGFX, PAL_FOLLOWER_PURPLE ;NIDORAN_M
	follow_sprite NidorinoSpriteGFX, PAL_FOLLOWER_PURPLE ;NIDORINO
	follow_sprite NidokingSpriteGFX, PAL_FOLLOWER_PURPLE ;NIDOKING
	follow_sprite ClefairySpriteGFX, PAL_FOLLOWER_JIGGLYPUFF ;CLEFAIRY
	follow_sprite ClefableSpriteGFX, PAL_FOLLOWER_JIGGLYPUFF ;CLEFABLE
	follow_sprite VulpixSpriteGFX, PAL_FOLLOWER_RED ;VULPIX
	follow_sprite NinetalesSpriteGFX, PAL_FOLLOWER_BEEDRILL ;NINETALES
	follow_sprite JigglypuffSpriteGFX, PAL_FOLLOWER_JIGGLYPUFF ;JIGGLYPUFF
	follow_sprite WigglytuffSpriteGFX, PAL_FOLLOWER_WIGGLYTUFF ;WIGGLYTUFF
	follow_sprite ZubatSpriteGFX, PAL_FOLLOWER_ZUBAT ;ZUBAT
	follow_sprite GolbatSpriteGFX, PAL_FOLLOWER_ZUBAT ;GOLBAT
	follow_sprite OddishSpriteGFX, PAL_FOLLOWER_GREEN ;ODDISH
	follow_sprite GloomSpriteGFX, PAL_FOLLOWER_GLOOM ;GLOOM
	follow_sprite VileplumeSpriteGFX, PAL_FOLLOWER_VILEPLUME ;VILEPLUME
	follow_sprite ParasSpriteGFX, PAL_FOLLOWER_PARAS ;PARAS
	follow_sprite ParasectSpriteGFX, PAL_FOLLOWER_PARASECT ;PARASECT
	follow_sprite VenonatSpriteGFX, PAL_FOLLOWER_VENONAT ;VENONAT
	follow_sprite VenomothSpriteGFX, PAL_FOLLOWER_PURPLE ;VENOMOTH
	follow_sprite DiglettSpriteGFX, PAL_FOLLOWER_DIGLETT ;DIGLETT
	follow_sprite DugtrioSpriteGFX, PAL_FOLLOWER_DIGLETT ;DUGTRIO
	follow_sprite MeowthSpriteGFX, PAL_FOLLOWER_MEOWTH ;MEOWTH
	follow_sprite PersianSpriteGFX, PAL_FOLLOWER_MEOWTH ;PERSIAN
	follow_sprite PsyduckSpriteGFX, PAL_FOLLOWER_PSYDUCK ;PSYDUCK
	follow_sprite GolduckSpriteGFX, PAL_FOLLOWER_BLUE ;GOLDUCK
	follow_sprite MankeySpriteGFX, PAL_FOLLOWER_MEOWTH ;MANKEY
	follow_sprite PrimeapeSpriteGFX, PAL_FOLLOWER_MEOWTH ;PRIMEAPE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GROWLITHE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ARCANINE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;POLIWAG
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;POLIWHIRL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;POLIWRATH
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ABRA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KADABRA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ALAKAZAM
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MACHOP
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MACHOKE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MACHAMP
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;BELLSPROUT
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;WEEPINBELL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;VICTREEBEL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TENTACOOL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TENTACRUEL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GEODUDE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GRAVELER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GOLEM
	follow_sprite PonytaSpriteGFX, PAL_FOLLOWER_RED ;PONYTA
	follow_sprite RapidashSpriteGFX, PAL_FOLLOWER_RED ;RAPIDASH
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SLOWPOKE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SLOWBRO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAGNEMITE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAGNETON
	follow_sprite FarfetchdSpriteGFX, PAL_FOLLOWER_BROWN ;FARFETCH_D
	follow_sprite DoduoSpriteGFX, PAL_FOLLOWER_BROWN ;DODUO
	follow_sprite DodrioSpriteGFX, PAL_FOLLOWER_BROWN ;DODRIO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SEEL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DEWGONG
	follow_sprite GrimerSpriteGFX, PAL_FOLLOWER_BLUE ;GRIMER
	follow_sprite MukSpriteGFX, PAL_FOLLOWER_BLUE ;MUK
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SHELLDER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CLOYSTER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GASTLY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HAUNTER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GENGAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ONIX
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DROWZEE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HYPNO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KRABBY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KINGLER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;VOLTORB
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ELECTRODE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;EXEGGCUTE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;EXEGGUTOR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CUBONE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAROWAK
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HITMONLEE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HITMONCHAN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;LICKITUNG
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KOFFING
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;WEEZING
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;RHYHORN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;RHYDON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_JIGGLYPUFF ;CHANSEY
	follow_sprite TangelaSpriteGFX, PAL_FOLLOWER_BLUE ;TANGELA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KANGASKHAN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HORSEA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SEADRA
	follow_sprite GoldeenSpriteGFX, PAL_FOLLOWER_OREFRY ;GOLDEEN
	follow_sprite SeakingSpriteGFX, PAL_FOLLOWER_OREFRY ;SEAKING
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;STARYU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;STARMIE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MR__MIME
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SCYTHER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;JYNX
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ELECTABUZZ
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAGMAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PINSIR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TAUROS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAGIKARP
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GYARADOS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;LAPRAS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DITTO
	follow_sprite EeveeSpriteGFX,  PAL_FOLLOWER_BROWN;EEVEE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;VAPOREON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;JOLTEON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;FLAREON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_JIGGLYPUFF ;PORYGON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;OMANYTE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;OMASTAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KABUTO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KABUTOPS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;AERODACTYL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SNORLAX
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ARTICUNO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ZAPDOS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MOLTRES
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DRATINI
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DRAGONAIR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;DRAGONITE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_PURPLE ;MEWTWO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_JIGGLYPUFF ;MEW
;Johto Icons
	follow_sprite ChikoritaSpriteGFX, PAL_FOLLOWER_GREEN ;CHIKORITA
	follow_sprite BlossomoleSpriteGFX, PAL_FOLLOWER_GREEN ;BLOSSOMOLE
	follow_sprite MeganiumSpriteGFX, PAL_FOLLOWER_GREEN ;MEGANIUM
	follow_sprite CyndaquilSpriteGFX, PAL_FOLLOWER_RED ;CYNDAQUIL
	follow_sprite QuilavaSpriteGFX, PAL_FOLLOWER_RED ;QUILAVA
	follow_sprite TyphlosionSpriteGFX, PAL_FOLLOWER_RED ;TYPHLOSION
	follow_sprite TotodileSpriteGFX, PAL_FOLLOWER_BLUE ;TOTODILE
	follow_sprite CroconawSpriteGFX, PAL_FOLLOWER_BLUE ;CROCONAW
	follow_sprite FeraligatrSpriteGFX, PAL_FOLLOWER_BLUE ;FERALIGATR
	follow_sprite BayleefSpriteGFX, PAL_FOLLOWER_GREEN ;BAYLEEF
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;SENTRET
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;FURRET
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;HOOTHOOT
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;NOCTOWL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;LEDYBA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;LEDIAN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_PURPLE ;SPINARAK
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ARIADOS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CROBAT
	follow_sprite YanmaSpriteGFX,  PAL_FOLLOWER_GREEN ;YANMA
	follow_sprite YanmegaSpriteGFX, PAL_FOLLOWER_TONBOSS ;TONBOSS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_GREEN ;BELLIGNAN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CHINCHOU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;LANTURN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;PICHU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CLEFFA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;IGGLYBUFF
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TOGEPI
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TOGETIC
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_GREEN ;NATU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_GREEN ;KATU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_GREEN ;XATU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAREEP
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;FLAAFFY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;AMPHAROS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;BELLOSSOM
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MARILL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;AZUMARILL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PHANDARIN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SUDOWOODO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;POLITOED
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HOPPIP
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SKIPLOOM
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;JUMPLUFF
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;AIPOM
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SUNKERN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SUNFLORA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;LUXSWAN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;WOOPER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;QUAGSIRE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ESPEON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;UMBREON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MURKROW
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SLOWKING
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MISDREAVUS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;UNOWN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;WOBBUFFET
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;BIPULLA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GIRAFARIG
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TOPSYSPOT
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PINECO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;FORRETRESS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SHUCKLE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SHUQLOUR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DUNSPARCE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GLIGAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;STEELIX
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SNUBBULL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;GRANBULL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;QWILFISH
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SCIZOR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TRICULES
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HERACROSS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SNEASEL
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TEDDIURSA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;URSARING
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SLUGMA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAGCARGO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SWINUB
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PILOSWINE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CHOMOSWINE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;CORSOLA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;REMORAID
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;OCTILLERY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DELIBIRD
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MANTINE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SKARMORY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HOUNDOUR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HOUNDOOM
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KINGDRA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PHANPY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;DONPHAN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PORYGON2
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;STANTLER
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SMEARGLE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TYROGUE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HITMONTOP
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SMOOCHUM
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ELEKID
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MAGBY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MILTANK
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;BLISSEY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;RAIKOU
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ENTEI
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SUICUNE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;LARVITAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;PUPITAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;TYRANITAR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;LUGIA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;HO_OH
	follow_sprite CelebiSpriteGFX, PAL_FOLLOWER_BROWN;CELEBI
	follow_sprite CoinpurSpriteGFX, PAL_FOLLOWER_MEOWTH ;COINPUR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;ADBARSTORK
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;PUPPERON
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MOIBELLE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;BELLEDAM
	follow_sprite CleflingSpriteGFX, PAL_FOLLOWER_RED ;CLEFLING
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MALLODY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_SILVER  ;CAMOUFLAKE
	follow_sprite CoaltaSpriteGFX, PAL_FOLLOWER_RED ;COALTA
	follow_sprite BurgelaSpriteGFX, PAL_FOLLOWER_BLUE ;BURGELA
	follow_sprite VulpiiiSpriteGFX, PAL_FOLLOWER_RED ;VULPIII
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;WORFURS
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;WEARLYCAN
	follow_sprite DodaerieSpriteGFX, PAL_FOLLOWER_BROWN ;DODAERIE
	follow_sprite ParasporSpriteGFX, PAL_FOLLOWER_RED ;PARASPOR
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MOLAMBINO
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;KIWACKI
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;SILKANE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BLUE ;MORPHOBIA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_PURPLE ;TERRACHNID
	follow_sprite SmujjSpriteGFX, PAL_FOLLOWER_PURPLE ;SMUJJ
	follow_sprite KotoraSpriteGFX, PAL_FOLLOWER_KOTORA ;KOTORA
	follow_sprite KotoraSpriteGFX, PAL_FOLLOWER_KOTORA ;RAITORA
	follow_sprite KotoraSpriteGFX, PAL_FOLLOWER_KOTORA ;GOROTORA
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_SILVER ;KOALYPTUS
	follow_sprite OrefrySpriteGFX, PAL_FOLLOWER_OREFRY ;OREFRY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;BALLERINE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_RED ;FENNECURSE
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;ORIJOEY
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;AGGROSWINE
	follow_sprite GermifrostSpriteGFX, PAL_FOLLOWER_SNOUWRBUN ;GERMIFROST
	follow_sprite VegelancheSpriteGFX, PAL_FOLLOWER_SNOUWRBUN ;VEGELANCHE
	follow_sprite SnouwrbunSpriteGFX, PAL_FOLLOWER_SNOUWRBUN ;SNOUWRBUN
	follow_sprite WooperSpriteGFX, PAL_FOLLOWER_BROWN ;NECROREX
