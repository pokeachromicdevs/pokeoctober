; List macros.
def_walk_sprite: MACRO
__num_walking__ = 0
ENDM

walk_sprite: MACRO
	db \1
__num_walking__ = __num_walking__ + 1
ENDM

def_static_sprite: MACRO
	assert __num_walking__ <= 8, "\n\t\tThere can only be a maximum of 8 walking sprites ({d:__num_walking__} defined)"
	; 9 walksprites = 8 sprites + 1 follower + 1 player
ENDM

static_sprite: MACRO
	db \1
ENDM

end_outdoor_sprites: MACRO
	db 0
ENDM

; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw OlivineGroupSprites
	dw MahoganyGroupSprites
	dw DungeonsGroupSprites
	dw EcruteakGroupSprites
	dw BlackthornGroupSprites
	dw CinnabarGroupSprites
	dw CeruleanGroupSprites
	dw AzaleaGroupSprites
	dw LakeOfRageGroupSprites
	dw VioletGroupSprites
	dw GoldenrodGroupSprites
	dw VermilionGroupSprites
	dw PalletGroupSprites
	dw PewterGroupSprites
	dw FastShipGroupSprites
	dw IndigoGroupSprites
	dw FuchsiaGroupSprites
	dw LavenderGroupSprites
	dw SilverGroupSprites
	dw CableClubGroupSprites
	dw CeladonGroupSprites
	dw CianwoodGroupSprites
	dw ViridianGroupSprites
	dw SilentGroupSprites
	dw SaffronGroupSprites
	dw CherrygroveGroupSprites
	dw CitrineGroupSprites

; define WALK SPRITES first, THEN static sprites

PalletGroupSprites:
ViridianGroupSprites:
PewterGroupSprites:
CinnabarGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_TEACHER
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_BLUE
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_BUG_CATCHER
		walk_sprite SPRITE_COOLTRAINER_F
		walk_sprite SPRITE_SWIMMER_GIRL
		walk_sprite SPRITE_SWIMMER_GUY

	def_static_sprite
		static_sprite SPRITE_FISHER
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE

	end_outdoor_sprites

CeruleanGroupSprites:
SaffronGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_COOLTRAINER_M
		walk_sprite SPRITE_SUPER_NERD
		walk_sprite SPRITE_COOLTRAINER_F
		walk_sprite SPRITE_FISHER
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_LASS
		walk_sprite SPRITE_POKEFAN_M
		walk_sprite SPRITE_ROCKET

	def_static_sprite
		static_sprite SPRITE_MISTY
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_SLOWPOKE

	end_outdoor_sprites

CeladonGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_FISHER
		walk_sprite SPRITE_TEACHER
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_LASS
		walk_sprite SPRITE_BIKER

	def_static_sprite
		static_sprite SPRITE_POLIWAG
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE

	end_outdoor_sprites

LavenderGroupSprites:
FuchsiaGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_POKEFAN_M
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_FISHER
		walk_sprite SPRITE_TEACHER
		walk_sprite SPRITE_SUPER_NERD
		walk_sprite SPRITE_BIKER

	def_static_sprite
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE

	end_outdoor_sprites

VermilionGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_POKEFAN_M
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_TEACHER
		walk_sprite SPRITE_SUPER_NERD

	def_static_sprite
		static_sprite SPRITE_BIG_SNORLAX
		static_sprite SPRITE_MACHOP
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE

	end_outdoor_sprites

IndigoGroupSprites:
	end_outdoor_sprites

SilentGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_SILENTTOWN_RIVAL_DUDE
		walk_sprite SPRITE_FAT_GUY
		walk_sprite SPRITE_ELM
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_TEACHER
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_BUG_CATCHER
		walk_sprite SPRITE_COOLTRAINER_F

	def_static_sprite
		static_sprite SPRITE_TEACHER
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE

	end_outdoor_sprites

CherrygroveGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_TEACHER
		walk_sprite SPRITE_FISHER
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_LADY
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_SUPER_NERD
		walk_sprite SPRITE_LASS
		walk_sprite SPRITE_BUG_CATCHER

	def_static_sprite
		static_sprite SPRITE_SOLDIER
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE
		static_sprite SPRITE_OFFICER
		static_sprite SPRITE_BLACK_BELT
		static_sprite SPRITE_BIRD_KEEPER

	end_outdoor_sprites

SilverGroupSprites:
	end_outdoor_sprites

VioletGroupSprites:
EcruteakGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_FISHER
		walk_sprite SPRITE_LASS
		walk_sprite SPRITE_OFFICER
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_COOLTRAINER_F
		walk_sprite SPRITE_SAGE
		walk_sprite SPRITE_FLEDGLING
		walk_sprite SPRITE_SCHOOLBOY

	def_static_sprite
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE
		static_sprite SPRITE_GYM_GUY
		static_sprite SPRITE_GRANNY
		static_sprite SPRITE_BIG_SNORLAX
		static_sprite SPRITE_MYSTIC
		static_sprite SPRITE_BUG_CATCHER
		static_sprite SPRITE_NIENIE
		static_sprite SPRITE_PRODIGY
	end_outdoor_sprites

AzaleaGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_KURT
		walk_sprite SPRITE_BUGSY
		walk_sprite SPRITE_ROUTE33_KAREN_ELM_WILL
		walk_sprite SPRITE_ROCKET
		walk_sprite SPRITE_ROCKET_GIRL
		walk_sprite SPRITE_SILVER
		walk_sprite SPRITE_BUG_CATCHER
		walk_sprite SPRITE_FLEDGLING

	def_static_sprite
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE
		static_sprite SPRITE_SUPER_NERD
		static_sprite SPRITE_YANMEGA
		static_sprite SPRITE_MANCHILD
		static_sprite SPRITE_FIREBREATHER
		static_sprite SPRITE_HIKER
		static_sprite SPRITE_SHUCKLE
		static_sprite SPRITE_SOLDIER
		static_sprite SPRITE_LASS
		static_sprite SPRITE_JUGGLER
		static_sprite SPRITE_BIKER
	end_outdoor_sprites

GoldenrodGroupSprites:
	end_outdoor_sprites

OlivineGroupSprites:
CianwoodGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_SILVER
		walk_sprite SPRITE_POKEFAN_M
		walk_sprite SPRITE_LASS
		walk_sprite SPRITE_BUENA
		walk_sprite SPRITE_SWIMMER_GIRL
		walk_sprite SPRITE_SAILOR
		walk_sprite SPRITE_POKEFAN_F
		walk_sprite SPRITE_SUPER_NERD

	def_static_sprite
		static_sprite SPRITE_YOUNGSTER
		static_sprite SPRITE_TAUROS
		static_sprite SPRITE_FRUIT_TREE
		static_sprite SPRITE_ROCK
		static_sprite SPRITE_SUICUNE

	end_outdoor_sprites

LakeOfRageGroupSprites:
	end_outdoor_sprites

MahoganyGroupSprites:
	end_outdoor_sprites

SnowGroupSprites:
BlackthornGroupSprites:
CitrineGroupSprites:
	def_walk_sprite
		walk_sprite SPRITE_GRAMPS
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_LASS
		walk_sprite SPRITE_HIKER
		walk_sprite SPRITE_COOLTRAINER_M
		walk_sprite SPRITE_SPORTSMAN
		walk_sprite SPRITE_POKEFAN_M
		walk_sprite SPRITE_CAMPER
		
	def_static_sprite
		static_sprite SPRITE_FISHER
		static_sprite SPRITE_FRUIT_TREE
		static_sprite SPRITE_POKE_BALL
		
	end_outdoor_sprites
	
ZenGardenSprites:
	def_walk_sprite
		walk_sprite SPRITE_FISHER
		walk_sprite SPRITE_NIENIE
		walk_sprite SPRITE_OFFICER
		walk_sprite SPRITE_YOUNGSTER
		walk_sprite SPRITE_SAILOR
		walk_sprite SPRITE_COOLTRAINER_F
		walk_sprite SPRITE_SAGE
		walk_sprite SPRITE_FLEDGLING

	def_static_sprite
		static_sprite SPRITE_POKE_BALL
		static_sprite SPRITE_FRUIT_TREE
		static_sprite SPRITE_GYM_GUY
		static_sprite SPRITE_GRANNY
		static_sprite SPRITE_SAGE
		static_sprite SPRITE_MYSTIC
		static_sprite SPRITE_BUG_CATCHER
		
	end_outdoor_sprites

DungeonsGroupSprites:
	end_outdoor_sprites

FastShipGroupSprites:
	end_outdoor_sprites

CableClubGroupSprites:
	end_outdoor_sprites
