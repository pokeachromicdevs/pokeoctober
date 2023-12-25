; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM

	const_def 1 ; reg'o items
	const BRIGHTPOWDER      ; 0003
	const MOON_STONE        ; 0008
	const ANTIDOTE          ; 0009
	const BURN_HEAL         ; 000a
	const ICE_HEAL          ; 000b
	const AWAKENING         ; 000c
	const PARLYZ_HEAL       ; 000d
	const FULL_RESTORE      ; 000e
	const MAX_POTION        ; 000f
	const HYPER_POTION      ; 0010
	const SUPER_POTION      ; 0011
	const POTION            ; 0012
	const ESCAPE_ROPE       ; 0013
	const REPEL             ; 0014
	const MAX_ELIXER        ; 0015
	const FIRE_STONE        ; 0016
	const THUNDERSTONE      ; 0017
	const WATER_STONE       ; 0018
	const HP_UP             ; 001a
	const PROTEIN           ; 001b
	const IRON              ; 001c
	const CARBOS            ; 001d
	const LUCKY_PUNCH       ; 001e
	const CALCIUM           ; 001f
	const RARE_CANDY        ; 0020
	const X_ACCURACY        ; 0021
	const LEAF_STONE        ; 0022
	const METAL_POWDER      ; 0023
	const NUGGET            ; 0024
	const POKE_DOLL         ; 0025
	const FULL_HEAL         ; 0026
	const REVIVE            ; 0027
	const MAX_REVIVE        ; 0028
	const GUARD_SPEC        ; 0029
	const SUPER_REPEL       ; 002a
	const MAX_REPEL         ; 002b
	const DIRE_HIT          ; 002c
	const FRESH_WATER       ; 002e
	const SODA_POP          ; 002f
	const LEMONADE          ; 0030
	const X_ATTACK          ; 0031
	const SNAKESKIN         ; 0032
	const X_DEFEND          ; 0033
	const X_SPEED           ; 0034
	const X_SPECIAL         ; 0035
	const EXP_SHARE         ; 0039
	const SILVER_LEAF       ; 003c
	const PP_UP             ; 003e
	const ETHER             ; 003f
	const MAX_ETHER         ; 0040
	const ELIXER            ; 0041
	const MOOMOO_MILK       ; 0048
	const QUICK_CLAW        ; 0049
	const PSNCUREBERRY      ; 004a
	const GOLD_LEAF         ; 004b
	const SOFT_SAND         ; 004c
	const BLACK_FEATHER     ; 004d
	const PRZCUREBERRY      ; 004e
	const BURNT_BERRY       ; 004f
	const ICE_BERRY         ; 0050
	const TOXIC_NEEDLE      ; 0051
	const KINGS_ROCK        ; 0052
	const BITTER_BERRY      ; 0053
	const MINT_BERRY        ; 0054
	const RED_APRICORN      ; 0055
	const CORDYCEPS         ; 0056
	const BIG_MUSHROOM      ; 0057
	const SILVERPOWDER      ; 0058
	const BLU_APRICORN      ; 0059
	const EARTHEN_CLAY      ; 005a
	const AMULET_COIN       ; 005b
	const YLW_APRICORN      ; 005c
	const GRN_APRICORN      ; 005d
	const CLEANSE_TAG       ; 005e
	const AQUA_HORN         ; 005f
	const MIGRAINE_SEED     ; 0060
	const WHT_APRICORN      ; 0061
	const BLACKBELT         ; 0062
	const BLK_APRICORN      ; 0063
	const DIGGING_CLAW      ; 0064
	const PNK_APRICORN      ; 0065
	const BLACKGLASSES      ; 0066
	const SLOWPOKETAIL      ; 0067
	const PINK_BOW          ; 0068
	const STICK             ; 0069
	const SMOKE_BALL        ; 006a
	const ICE_FANG          ; 006b
	const THUNDER_FANG      ; 006c
	const MIRACLEBERRY      ; 006d
	const PEARL             ; 006e
	const BIG_PEARL         ; 006f
	const EVERSTONE         ; 0070
	const SPELL_TAG         ; 0071
	const RAGECANDYBAR      ; 0072
	const MIRACLE_SEED      ; 0075
	const THICK_CLUB        ; 0076
	const FOCUS_ORB         ; 0077
	const MYSTIC_PETAL      ; 0078
	const ENERGYPOWDER      ; 0079
	const ENERGY_ROOT       ; 007a
	const HEAL_POWDER       ; 007b
	const REVIVAL_HERB      ; 007c
	const HARD_STONE        ; 007d
	const LUCKY_EGG         ; 007e
	const STARDUST          ; 0083
	const STAR_PIECE        ; 0084
	const WHITE_FEATHER     ; 0087
	const ELECTRIC_POUCH    ; 0088
	const CHARCOAL          ; 0089
	const BERRY_JUICE       ; 008a
	const SHARP_SCYTHE      ; 008b
	const FIRE_MANE         ; 008c
	const METAL_COAT        ; 008d
	const DRAGON_FANG       ; 008e
	const TWISTED_SPOON     ; 008f
	const LEFTOVERS         ; 0090
	const FOSSIL_SHARD      ; 0091
	const GROSS_GARBAGE     ; 0092
	const CHAMPIONBELT      ; 0093
	const MYSTERYBERRY      ; 0094
	const DRAGON_SCALE      ; 0095
	const BERSERK_GENE      ; 0096
	const TAG               ; 0097
	const GUARD_THREAD      ; 0098
	const ICE_BIKINI        ; 0099
	const SACRED_ASH        ; 009a
	const FLOWER_MAIL       ; 009c
	const WISDOM_ORB        ; 00a0
	const LIGHT_BALL        ; 00a1
	const NORMAL_BOX        ; 00a5
	const GORGEOUS_BOX      ; 00a6
	const SUN_STONE         ; 00a7
	const POLKADOT_BOW      ; 00a8
	const ODD_THREAD        ; 00a9
	const UP_GRADE          ; 00aa
	const BERRY             ; 00ab
	const APPLE             ; 00ac
	const WATER_TAIL        ; 00ae
	const COUNTERCUFF       ; 00b1
	const BRICK_PIECE       ; 00b2
	const SURF_MAIL         ; 00b3
	const LITEBLUEMAIL      ; 00b4
	const PORTRAITMAIL      ; 00b5
	const LOVELY_MAIL       ; 00b6
	const EON_MAIL          ; 00b7
	const MORPH_MAIL        ; 00b8
	const BLUESKY_MAIL      ; 00b9
	const MUSIC_MAIL        ; 00ba
	const MIRAGE_MAIL       ; 00bb
	const PRETTY_TAIL       ; 00be
	const BURST_ORB         ; 00bf
	const HIDDEN_NEEDLE     ; 00c0
	const SHARP_HORN        ; 00c1
	const HEART_STONE       ; 00c2
	const POISON_STONE      ; 00c3
	const DETECT_ORB        ; 00c4
	const LONG_TONGUE       ; 00c5
	const LONG_VINE         ; 00c6
	const ICE_WING          ; 00c7
	const THUNDER_WING      ; 00c8
	const FIRE_WING         ; 00c9
	const FIRE_TAIL         ; 00ca
	const THUNDER_TAIL      ; 00cb
	const CALM_SEED         ; 00cc
	const SPOON             ; 00cd
	const PEBBLE            ; 00ce
	const BIG_STONE         ; 00cf
	const TORN_COLLAR       ; 00d0
	const CRUSHED_TIRE      ; 00d1
	const TINY_SCALES       ; 00d2
	const STEEL_SCALES      ; 00d3
	const MYSTIC_TAG        ; 00d4
	const FLEE_FEATHER      ; 00da
	const CRANIDOS_FOSSIL   ; 00db
	const MYSTIC_WATER      ; 00dc
	const CONFUSE_CLAW      ; 00dd
	const STEEL_SHELL       ; 00de
	const FIVE_YEN_COIN     ; 00df
	const LIFE_TAG          ; 00e0
	const STRANGE_POWDER    ; 00e1
	const BUG_FLYING_FOSSIL ; 00e2
	const SKELEBRO_FOSSIL   ; 00e3
	const INVISIBLE_WALL    ; 00e4
	const SKATEBOARD        ; 00e5
	const MOMS_LOVE         ; 00e6
	const MYSTIC_THREAD     ; 00e7
	const MYSTIC_NEEDLE     ; 00e8
	const FUJIS_LETTER      ; 00ea
	const WOBBLY_BLOON      ; 00eb
	const ITEM_EE           ; 00ee
	const ITEM_EF           ; 00ef
	const ITEM_F0           ; 00f0
	const ITEM_F1           ; 00f1
	const ITEM_F2           ; 00f2
	const ITEM_F3           ; 00f3
	const ITEM_F4           ; 00f4
	const ITEM_F5           ; 00f5
	const ITEM_F6           ; 00f6
	const ITEM_F7           ; 00f7
	const ITEM_F8           ; 00f8
	const ITEM_F9           ; 00f9
	const ITEM_FA           ; 00fa
	const ITEM_FB           ; 00fb
	const ITEM_FC           ; 00fc
	const ITEM_FD           ; 00fd
	const ITEM_FE           ; 00fe
	const ITEM_FF           ; 00ff
	const ITEM_100          ; 0100
	const ITEM_101          ; 0101
NUM_ITEM_POCKET equ const_value - 1

	const_def $100 ; key items
FIRST_KEY_ITEM equ const_value
	const TOWN_MAP          ; 0100
	const BICYCLE           ; 0101
	const HONEY_POT         ; 0102
	const OAKS_PARCEL       ; 0103
	const COIN_CASE         ; 0104
	const ITEMFINDER        ; 0105
	const POKE_FLUTE        ; 0106
	const OLD_ROD           ; 0107
	const GOOD_ROD          ; 0108
	const SUPER_ROD         ; 0109
	const RED_SCALE         ; 010a
	const SECRETPOTION      ; 010b
	const S_S_TICKET        ; 010c
	const ELMS_EGG          ; 010d
	const CLEAR_BELL        ; 010e
	const SILVER_WING       ; 010f
	const GS_BALL           ; 0110
	const BLUE_CARD         ; 0111
	const CARD_KEY          ; 0112
	const MACHINE_PART      ; 0113
	const EGG_TICKET        ; 0114
	const LOST_ITEM         ; 0115
	const BASEMENT_KEY      ; 0116
	const PASS              ; 0117
	const SQUIRTBOTTLE      ; 0118
	const RAINBOW_WING      ; 0119
	const VOUCHER           ; 011a
	const TICKLE_STICK      ; 011b
	const HEAVY_AMBER       ; 011c
	const TOXIC_AMBER       ; 011d
	const OLD_AMBER         ; 011e
	const DOME_FOSSIL       ; 011f
	const HELIX_FOSSIL      ; 0120
NUM_KEY_ITEM_POCKET equ const_value - FIRST_KEY_ITEM


	const_def $200 ; key items
FIRST_BALL_ITEM equ const_value
	const MASTER_BALL       ; 0200
	const ULTRA_BALL        ; 0201
	const GREAT_BALL        ; 0202
	const POKE_BALL         ; 0203
	const HEAVY_BALL        ; 0204
	const LEVEL_BALL        ; 0205
	const LURE_BALL         ; 0206
	const FAST_BALL         ; 0207
	const FRIEND_BALL       ; 0208
	const MOON_BALL         ; 0209
	const LOVE_BALL         ; 020a
	const PARK_BALL         ; 020b
	const SAFARI_BALL       ; 020c
	const DIRECT_BALL       ; 020d
	const NIGHT_BALL        ; 020e
NUM_BALL_ITEM_POCKET equ const_value - FIRST_BALL_ITEM

NUM_ITEMS equ const_value - 1 ; ?

USE_SCRIPT_VAR EQU $00
ITEM_FROM_MEM  EQU $ffff

; leftovers from red
MOON_STONE_RED EQU $0a ; BURN_HEAL
FULL_HEAL_RED  EQU $34 ; X_SPEED

MAX_ITEM_STACK EQU 99
