ItemDescriptions:
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemDescriptions1
	indirect_entries FIRST_KEY_ITEM - 1 ; sparse table
	indirect_entries NUM_KEY_ITEM_POCKET + (FIRST_KEY_ITEM - 1), ItemKeyDescriptions
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse table
	indirect_entries NUM_BALL_ITEM_POCKET + (FIRST_BALL_ITEM - 1), ItemBallDescriptions
	indirect_table_end

InvalidItemDesc:
	db "?@"

INCLUDE "sheets/generated/item/description_pointers.gen.asm"

IceBikiniDesc:
	db "Weakens ice-type"
	next "moves. (HOLD)@"

MomsLoveDesc:
	db   "Heals 1HP for each"
	next "step taken. (HOLD)@"

DirectBallDesc:
	db   "Catches <PKMN> regard-"
	next "less of status.@"

FireManeDesc:
	db   "Resists fire"
	next "attacks. (HOLD)@"

MirageMailDesc:
BlackFeatherDesc:
ToxicNeedleDesc:
BigMushroomDesc:
IceFangDesc:
NightBallDesc:
GuardThreadDesc:
TagDesc:
ChampionbeltDesc:
GrossGarbageDesc:
FossilShardDesc:
TwistedSpoonDesc:
ElectricPouchDesc:
WhiteFeatherDesc:
MysticPetalDesc:
CountercuffDesc:
CranidosFossilDesc:
MysticWaterDesc:
ConfuseClawDesc:
FiveYenCoinDesc:
LifeTagDesc:
StrangePowderDesc:
BugFlyingFossilDesc:
SkelebroFossilDesc:
InvisibleWallDesc:
SkateboardDesc:
MysticThreadDesc:
MysticNeedleDesc:
SafariBallDesc:
FujisLetterDesc:
	db "Coming soon!@"

MasterBallDesc:
	db   "The best BALL. It"
	next "never misses.@"

UltraBallDesc:
	db   "A BALL with a high"
	next "rate of success.@"

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

MoonStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

AntidoteDesc:
	db   "Cures poisoned"
	next "#MON.@"

BurnHealDesc:
	db   "Heals burned"
	next "#MON.@"

IceHealDesc:
	db   "Defrosts frozen"
	next "#MON.@"

AwakeningDesc:
	db   "Awakens sleeping"
	next "#MON.@"

ParlyzHealDesc:
	db   "Heals paralyzed"
	next "#MON.@"

FullRestoreDesc:
	db   "Fully restores HP"
	next "& status.@"

MaxPotionDesc:
	db   "Fully restores"
	next "#MON HP.@"

HyperPotionDesc:
	db   "Restores #MON"
	next "HP by 200.@"

SuperPotionDesc:
	db   "Restores #MON"
	next "HP by 50.@"

PotionDesc:
	db   "Restores #MON"
	next "HP by 20.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

MaxElixerDesc:
	db   "Fully restores the"
	next "PP of one #MON.@"

FireStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ThunderStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

WaterStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

HPUpDesc:
	db   "Raises the HP of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

LuckyPunchDesc:
	db   "Ups critical hit"
	next "ratio of CHANSEY.@"

CalciumDesc:
	db   "Ups SPECIAL stats"
	next "of one #MON.@"

RareCandyDesc:
	db   "Raises level of a"
	next "#MON by one.@"

XAccuracyDesc:
	db   "Raises accuracy."
	next "(1 BTL)@"

LeafStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

MetalPowderDesc:
	db   "Raises DEFENSE of"
	next "DITTO. (HOLD)@"

NuggetDesc:
	db   "Made of pure gold."
	next "Sell high.@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

GuardSpecDesc:
	db   "Raises SPECIAL"
	next "DEFENSE. (1 BTL)@"

SuperRepelDesc:
	db   "Repels weak #-"
	next "MON for 200 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

DireHitDesc:
	db   "Ups critical hit"
	next "ratio. (1 BTL)@"

FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XSpecialDesc:
	db   "Raises SPECIAL"
	next "ATTACK. (1 BTL)@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "Points. (HOLD)@"

OldRodDesc:
	db   "Use by water to"
	next "fish for #MON.@"

GoodRodDesc:
	db   "A good ROD for"
	next "catching #MON.@"

SilverLeafDesc:
	db   "A strange, silver-"
	next "colored leaf.@"

SuperRodDesc:
	db   "The best ROD for"
	next "catching #MON.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

EtherDesc:
	db   "Restores PP of one"
	next "move by 10.@"

MaxEtherDesc:
	db   "Fully restores PP"
	next "of one move.@"

ElixerDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

RedScaleDesc:
	db   "A scale from the"
	next "red GYARADOS.@"

SecretPotionDesc:
	db   "Fully heals any"
	next "#MON.@"

SSTicketDesc:
	db   "A ticket for the"
	next "S.S.AQUA.@"

ElmsEggDesc:
	db   "An EGG belonging"
	next "to PROF. ELM.@"

ClearBellDesc:
	db   "Makes a gentle"
	next "ringing.@"

SilverWingDesc:
	db   "A strange, silver-"
	next "colored feather.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

PsnCureBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

GoldLeafDesc:
	db   "A strange, gold-"
	next "colored leaf.@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

PrzCureBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

BurntBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

IceBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

KingsRockDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

BitterBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

MintBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

RedApricornDesc:
	db   "A deep red"
	next "APRICORN.@"

CordycepsDesc:
	db   "An excellent mush-"
	next "room. Sell high.@"

TeruSamaDesc:
	db   "A rare mushroom."
	next "Sell high.@"

SilverPowderDesc:
	db   "Weakens bug-type"
	next "moves. (HOLD)@"

BluApricornDesc:
	db   "A blue APRICORN.@"

AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings. (HOLD)@"

YlwApricornDesc:
	db   "A yellow APRICORN.@"

GrnApricornDesc:
	db   "A green APRICORN.@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

AquaHornDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

MigraineSeedDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

WhtApricornDesc:
	db   "A white APRICORN.@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

BlkApricornDesc:
	db   "A black APRICORN."
	next "@"

PnkApricornDesc:
	db   "A pink APRICORN."
	next "@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

SlowpokeTailDesc:
	db   "Very tasty. Sell"
	next "high.@"

PinkBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

StickDesc:
	db   "An ordinary stick."
	next "Sell low.@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

ThunderFangDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

MiracleBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

CakeofRageDesc:
	db   "Restores #MON"
	next "HP by 20.@"

GSBallDesc:
	db   "The mysterious"
	next "BALL.@"

BlueCardDesc:
	db   "Card to save"
	next "points.@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

ThickClubDesc:
	db   "A bone of some"
	next "sort. Sell low.@"

FocusOrbDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

EnergyPowderDesc:
	db   "Restores #MON"
	next "HP by 50. Bitter.@"

EnergyRootDesc:
	db   "Restores #MON"
	next "HP by 200. Bitter.@"

HealPowderDesc:
	db   "Cures all status"
	next "problems. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

HardStoneDesc:
	db   "Weakens rock-"
	next "type moves. (HOLD)@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

CardKeyDesc:
	db   "Opens shutters in"
	next "the RADIO TOWER.@"

MachinePartDesc:
	db   "A machine part for"
	next "the POWER PLANT.@"

EggTicketDesc:
	db   "May use at Golden-"
	next "rod trade corner.@"

LostItemDesc:
	db   "The # DOLL lost"
	next "by the COPYCAT.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

BasementKeyDesc:
	db   "Opens doors.@"

PassDesc:
	db   "A ticket for the"
	next "MAGNET TRAIN.@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves. (HOLD)@"

BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 40.@"

SharpScytheDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves. (HOLD)@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

MysteryBerryDesc:
	db   "A self-restore"
	next "for PP. (HOLD)@"

DragonScaleDesc:
	db   "A rare dragon-type"
	next "item.@"

BerserkGeneDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted #MON.@"

HeavyBallDesc:
	db   "A BALL for catch-"
	next "ing heavy #MON.@"

FlowerMailDesc:
	db   "Flower-print MAIL."
	next "(HOLD)@"

LevelBallDesc:
	db   "A BALL for lower-"
	next "level #MON.@"

LureBallDesc:
	db   "A BALL for #MON"
	next "hooked by a ROD.@"

FastBallDesc:
	db   "A BALL for catch-"
	next "ing fast #MON.@"

LightBallDesc:
	db   "An odd, electrical"
	next "orb. (HOLD)@"

FriendBallDesc:
	db   "A BALL that makes"
	next "#MON friendly.@"

MoonBallDesc:
	db   "A BALL for MOON"
	next "STONE evolvers.@"

LoveBallDesc:
	db   "Works best on"
	next "KURT's favorites.@"

NormalBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

GorgeousBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

SunStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

PolkadotBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

UpGradeDesc:
	db   "A mysterious box"
	next "made by SILPH CO.@"

BerryDesc:
	db   "A self-restore"
	next "item. (20HP, HOLD)@"

AppleDesc:
	db   "A self-restore"
	next "item. (50HP, HOLD)@"

SquirtBottleDesc:
	db   "A bottle used for"
	next "watering plants.@"

ParkBallDesc:
	db   "The Bug-Catching"
	next "Contest BALL.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

BrickPieceDesc:
	db   "A rare chunk of"
	next "tile.@"

SurfMailDesc:
	db   "LAPRAS-print MAIL."
	next "(HOLD)@"

LiteBlueMailDesc:
	db   "DRATINI-print"
	next "MAIL. (HOLD)@"

PortraitMailDesc:
	db   "MAIL featuring the"
	next "holder's likeness.@"

LovelyMailDesc:
	db   "Heart-print MAIL."
	next "(HOLD)@"

EonMailDesc:
	db   "EEVEE-print MAIL."
	next "(HOLD)@"

MorphMailDesc:
	db   "DITTO-print MAIL."
	next "(HOLD)@"

BlueSkyMailDesc:
	db   "Sky-print MAIL."
	next "(HOLD)@"

MusicMailDesc:
	db   "NATU-print MAIL."
	next "(HOLD)@"

MewMailDesc:
	db   "MEW-print MAIL."
	next "(HOLD)@"

HoneyPotDesc:
	db   "A pot for storing"
	next "SWEET HONEY.@"

TownMapDesc:
	db "Use to view the"
	next "map.@"

OaksParcelDesc:
	db "Package from PROF."
	next "OAK to PROF. ELM.@"

SnakeskinDesc:
	db "Prevents poison."
	next "(HOLD)@"

ThunderTailDesc:
EarthenClayDesc:
	db "Prevents paralysis."
	next "(HOLD)@"

DiggingClawDesc:
	db "Use DIG outside of"
	next "battle.(HOLD)@"

PokeFluteDesc:
	db "Awakens sleeping"
	next "#MON.@"

IceWingDesc:
WisdomOrbDesc:
	db "Sharply raises"
	next "SPCL.DEF. (HOLD)@"

DetectOrbDesc:
OddThreadDesc:
	db "Raises EVASION of"
	next "foe's moves.@"

WaterTailDesc:
	db "Prevents burns."
	next "(HOLD)@"

VoucherDesc:
	db "RADIO CARD"
	next "voucher.@"

TickleStickDesc:
	db "Tickle SS AQUA"
	next "CAPTAIN's back.@"

PrettyTailDesc:
	db "Prevents poison-"
	next "ing.(HOLD)@"

BurstOrbDesc:
	db "Prevents sleep."
	next "(HOLD)@"

HiddenNeedleDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

SharpHornDesc:
	db  "Raises ATTACK by"
	next "2. (HOLD)@"

HeartStoneDesc:
	db  "Evolves certain"
	next "kinds of #MON.@"

PoisonStoneDesc:
	db  "Evolves certain"
	next "kinds of #MON.@"

LongTongueDesc:
LongVineDesc:
	db  "Raises #MON"
	next "catch rate. (HOLD)@"

ThunderWingDesc:
	db "Raises SPEED by"
	next "2. (HOLD)@"

FireWingDesc:
	db "Sharply raises"
	next "SPCL.ATTACK.(HOLD)@"

FireTailDesc:
	db "Prevents freezing."
	next "(HOLD)@"

CalmSeedDesc:
	db "Prevents confu-"
	next "sion.(HOLD)@"

SpoonDesc:
	db "A shining spoon."
	next "Sell low.@"

PebbleDesc:
	db "A normal pebble."
	next "Sell low.@"

BigStoneDesc:
	db "A big stone."
	next "Sell high.@"

TornCollarDesc:
	db "A torn collar."
	next "Sell low.@"

CrushedTireDesc:
	db "A crushed tire."
	next "Sell high.@"

TinyScalesDesc:
	db "Some rocky scales."
	next "Sell low.@"

SteelScalesDesc:
	db "Some steel scales."
	next "Sell high.@"

MysticTagDesc:
	db "Helps attract wild"
	next "#MON. (HOLD)@"

HeavyAmberDesc:
ToxicAmberDesc:
OldAmberDesc:
DomeFossilDesc:
HelixFossilDesc:
	db "Can be revived"
	next "into a #MON.@"

WobblyBloonDesc:
	db "Weaken a foe's"
	next "NORMAL moves.@"

FleeFeatherDesc:
	db "Switch without a"
	next "turn wasted.(HOLD)@"

SteelShellDesc:
	db "Sharply raises"
	next "DEFENSE. (HOLD)@"

