; List macros.
begin_walksprites: MACRO
__num_walking__ = 0
ENDM

walksprite: MACRO
	db \1
__num_walking__ = __num_walking__ + 1
ENDM

end_walksprites: MACRO
	assert __num_walking__ <= 9, "\n\t\tThere can only be a maximum of 9 walking sprites ({d:__num_walking__} defined)"
ENDM

begin_staticsprites: MACRO
ENDM

staticsprite: MACRO
	db \1
ENDM

end_staticsprites: MACRO
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
	begin_walksprites
		walksprite SPRITE_TEACHER
		walksprite SPRITE_FISHER
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_BLUE
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_BUG_CATCHER
		walksprite SPRITE_COOLTRAINER_F
		walksprite SPRITE_SWIMMER_GIRL
		walksprite SPRITE_SWIMMER_GUY
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

CeruleanGroupSprites:
SaffronGroupSprites:
	begin_walksprites
		walksprite SPRITE_COOLTRAINER_M
		walksprite SPRITE_SUPER_NERD
		walksprite SPRITE_COOLTRAINER_F
		walksprite SPRITE_FISHER
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_LASS
		walksprite SPRITE_POKEFAN_M
		walksprite SPRITE_ROCKET
		walksprite SPRITE_MISTY
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_SLOWPOKE
	end_staticsprites

CeladonGroupSprites:
	begin_walksprites
		walksprite SPRITE_FISHER
		walksprite SPRITE_TEACHER
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_LASS
		walksprite SPRITE_BIKER
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POLIWAG
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

LavenderGroupSprites:
FuchsiaGroupSprites:
	begin_walksprites
		walksprite SPRITE_POKEFAN_M
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_FISHER
		walksprite SPRITE_TEACHER
		walksprite SPRITE_SUPER_NERD
		walksprite SPRITE_BIKER
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

VermilionGroupSprites:
	begin_walksprites
		walksprite SPRITE_POKEFAN_M
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_TEACHER
		walksprite SPRITE_SUPER_NERD
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_BIG_SNORLAX
		staticsprite SPRITE_MACHOP
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

IndigoGroupSprites:
	end_staticsprites

SilentGroupSprites:
	begin_walksprites
		walksprite SPRITE_SILENTTOWN_RIVAL_DUDE
		walksprite SPRITE_TEACHER
		walksprite SPRITE_FAT_GUY
		walksprite SPRITE_ELM
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_TEACHER
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_BUG_CATCHER
		walksprite SPRITE_COOLTRAINER_F
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

CherrygroveGroupSprites:
	begin_walksprites
		walksprite SPRITE_SOLDIER
		walksprite SPRITE_TEACHER
		walksprite SPRITE_FISHER
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_BIRD_KEEPER
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_SUPER_NERD
		walksprite SPRITE_LASS
		walksprite SPRITE_BUG_CATCHER
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
		staticsprite SPRITE_OFFICER
	end_staticsprites

SilverGroupSprites:
	end_staticsprites

VioletGroupSprites:
EcruteakGroupSprites:
	begin_walksprites
		walksprite SPRITE_FISHER
		walksprite SPRITE_LASS
		walksprite SPRITE_OFFICER
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_COOLTRAINER_M
		walksprite SPRITE_SAGE
		walksprite SPRITE_SUPER_NERD
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

AzaleaGroupSprites:
	begin_walksprites
		walksprite SPRITE_KURT
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_OFFICER
		walksprite SPRITE_AZALEA_ROCKET
		walksprite SPRITE_ROCKET_GIRL
		walksprite SPRITE_BUGSY
		walksprite SPRITE_KAREN
		walksprite SPRITE_LASS
		walksprite SPRITE_SILVER
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_POKE_BALL
		staticsprite SPRITE_FRUIT_TREE
	end_staticsprites

GoldenrodGroupSprites:
	end_staticsprites

OlivineGroupSprites:
CianwoodGroupSprites:
	begin_walksprites
		walksprite SPRITE_OLIVINE_RIVAL
		walksprite SPRITE_POKEFAN_M
		walksprite SPRITE_LASS
		walksprite SPRITE_BUENA
		walksprite SPRITE_SWIMMER_GIRL
		walksprite SPRITE_SAILOR
		walksprite SPRITE_POKEFAN_F
		walksprite SPRITE_SUPER_NERD
		walksprite SPRITE_YOUNGSTER
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_TAUROS
		staticsprite SPRITE_FRUIT_TREE
		staticsprite SPRITE_ROCK
		staticsprite SPRITE_SUICUNE
	end_staticsprites

LakeOfRageGroupSprites:
	end_staticsprites

MahoganyGroupSprites:
	end_staticsprites

SnowGroupSprites:
BlackthornGroupSprites:
CitrineGroupSprites:
	begin_walksprites
		walksprite SPRITE_GRAMPS
		walksprite SPRITE_YOUNGSTER
		walksprite SPRITE_LASS
		walksprite SPRITE_SUPER_NERD
		walksprite SPRITE_COOLTRAINER_M
		walksprite SPRITE_SPORTSMAN
		walksprite SPRITE_POKEFAN_M
		walksprite SPRITE_CAMPER
		walksprite SPRITE_FISHER
	end_walksprites

	begin_staticsprites
		staticsprite SPRITE_FRUIT_TREE
		staticsprite SPRITE_POKE_BALL
	end_staticsprites

DungeonsGroupSprites:
	end_staticsprites

FastShipGroupSprites:
	end_staticsprites

CableClubGroupSprites:
	end_staticsprites

