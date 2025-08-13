BattleAnimationsNew::
	dw BattleAnim_Uproot
	dw BattleAnim_WindRide
	dw BattleAnim_RockHead
	dw BattleAnim_WaterSport
	dw BattleAnim_BrightMoss
	dw BattleAnim_StrongArm
	dw BattleAnim_CrossCutter
	dw BattleAnim_Tempt
	dw BattleAnim_CoinHurl
	dw BattleAnim_Bounce
	dw BattleAnim_RockSlash
	dw BattleAnim_InkSpray
	dw BattleAnim_Megaphone
	dw BattleAnim_Blindside
	dw BattleAnim_WillOWisp
	dw BattleAnim_EvilEye
	dw BattleAnim_Uppercut
	dw BattleAnim_Terrorize
	dw BattleAnim_Lunge
	dw BattleAnim_DragonClaw
	dw BattleAnim_ShellBomb
	dw BattleAnim_Magnetism
	dw BattleAnim_MagnetBomb
	dw BattleAnim_LavaBurst
	dw BattleAnim_Echo
	dw BattleAnim_TailSlap
	dw BattleAnim_ShadowPunch
	dw BattleAnim_SignalBeam
	dw BattleAnim_DustDevil
	dw BattleAnim_StormFront
	dw BattleAnim_LavaPool
	dw BattleAnim_HeldItemTrigger
.End:

BattleAnim_Echo:
BattleAnim_Magnetism:
BattleAnim_Uppercut:
BattleAnim_BrightMoss:
BattleAnim_InkSpray:
BattleAnim_Lunge:
BattleAnim_Uproot:
BattleAnim_Terrorize:
BattleAnim_Blindside:
BattleAnim_EvilEye:
BattleAnim_TailSlap:
BattleAnim_ShadowPunch:
BattleAnim_SignalBeam:
	anim_ret

BattleAnim_Bounce:
	anim_if_param_equal $1, BattleAnim_Bounce_branch_1
	anim_if_param_equal $2, BattleAnim_Bounce_branch_2
	anim_2gfx BATTLE_ANIM_GFX_BLUR, BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_KINESIS
	anim_obj BATTLE_ANIM_OBJ_BLUR_VERTICAL_DOWN, 136, 230, $10
	anim_wait 16
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $10, $4, $0
	anim_sound 0, 1, SFX_STOMP
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 16

BattleAnim_Bounce_branch_2:
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, $1, $0
	anim_wait 16
	anim_ret

BattleAnim_Bounce_branch_1:
	anim_1gfx BATTLE_ANIM_GFX_BLUR
	anim_sound 0, 0, SFX_POTION
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, $1, $0
	anim_obj BATTLE_ANIM_OBJ_BLUR_VERTICAL_UP, 48, 88, $30
	anim_wait 32
	anim_clearobjs
	anim_ret

BattleAnim_RockHead:
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $1b, $2, $0
	anim_sound 0, 0, SFX_OUTRAGE
	anim_wait 32
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, $1, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HEADBUTT
	anim_wait 8
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $2
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 56, $0
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $28
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_jump BattleAnim_ShowMon_0

BattleAnim_WaterSport:
	anim_1gfx BATTLE_ANIM_GFX_WATER
	anim_setobjpal PAL_BATTLE_OB_BLUE, PAL_BTLCUSTOM_WATER
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_BOUNCE_DOWN, $0, $1, $0
	anim_wait 22
	anim_call BattleAnim_WaterSport_branch
	anim_incbgeffect BATTLE_BG_EFFECT_BOUNCE_DOWN
	anim_call BattleAnim_ShowMon_0
	anim_clearobjs
.loop
	anim_sound 6, 2, SFX_SQUEAK
	anim_obj BATTLE_ANIM_OBJ_WATER_SPORT, 40, 20, $10
	anim_wait 8
	anim_sound 6, 2, SFX_SQUEAK
	anim_obj BATTLE_ANIM_OBJ_WATER_SPORT, 90, 20, $10
	anim_wait 8
	anim_sound 6, 2, SFX_SQUEAK
	anim_obj BATTLE_ANIM_OBJ_WATER_SPORT, 140, 20, $10
	anim_wait 8
	anim_sound 6, 2, SFX_SQUEAK
	anim_obj BATTLE_ANIM_OBJ_WATER_SPORT, 65, 20, $10
	anim_wait 8
	anim_sound 6, 2, SFX_SQUEAK
	anim_obj BATTLE_ANIM_OBJ_WATER_SPORT, 115, 20, $10
	anim_wait 8
	anim_sound 6, 2, SFX_SQUEAK
	anim_loop 2, .loop
	anim_wait 32
	anim_ret

BattleAnim_WaterSport_branch:
.loop
	anim_sound 0, 1, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_WATER_SPOUT_RISING, 48, 80, $32
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_WATER_SPOUT_RISING, 48, 80, $2e
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_WATER_SPOUT_RISING, 48, 80, $31
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_WATER_SPOUT_RISING, 48, 80, $2f
	anim_wait 28
	anim_loop 2, .loop
	anim_ret

BattleAnim_CrossCutter:
	anim_1gfx BATTLE_ANIM_GFX_CUT
	anim_sound 0, 1, SFX_VICEGRIP
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $08, $2, $0
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 150, 40, $0
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_RIGHT, 118, 40, $0
	anim_wait 32
	anim_ret

BattleAnim_Tempt:
	anim_2gfx BATTLE_ANIM_GFX_STATUS, BATTLE_ANIM_GFX_OBJECTS
	anim_sound 0, 1, SFX_PRESENT
	anim_obj BATTLE_ANIM_OBJ_CAKE, 64, 88, $6c
	anim_wait 56
	anim_obj BATTLE_ANIM_OBJ_HEART, 104, 48, $0
	anim_wait 48  
	anim_ret

BattleAnim_CoinHurl:
	anim_3gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_STATUS, BATTLE_ANIM_GFX_SPEED
	anim_sound 0, 0, SFX_METRONOME
.loop
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 88, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 80, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 96, $4
	anim_wait 8
	anim_sound 0, 1, SFX_POUND
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 56, $0
.loop2
	anim_sound 0, 1, SFX_PAY_DAY
	anim_obj BATTLE_ANIM_OBJ_PAY_DAY, 120, 76, $1
	anim_wait 12
	anim_loop 3, .loop2
	anim_wait 8
	anim_ret

BattleAnim_RockSlash:
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_CUT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $56, $2, $0
	anim_sound 0, 1, SFX_CUT
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 148, 36, $0
	anim_wait 8
	anim_bgp $1b
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 56, $5c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 56, $e8
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
	anim_wait 8
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 132, 60, $5c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 132, 60, $e8
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 144, 32, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 123, 52, $5c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 123, 52, $e8
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_wait 32
	anim_ret

BattleAnim_WindRide:
	anim_2gfx BATTLE_ANIM_GFX_SPEED, BATTLE_ANIM_GFX_SKY_ATTACK
	anim_sound 0, 0, SFX_MENU
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, $1, $0
	anim_1gfx BATTLE_ANIM_GFX_SKY_ATTACK
	anim_call BattleAnimSub_QuickAttack
	anim_wait 12
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_wait 24
	anim_sound 0, 1, SFX_CUT
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $2
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, $1, $0
	anim_ret

BattleAnim_Megaphone:
	anim_2gfx BATTLE_ANIM_GFX_MISC, BATTLE_ANIM_GFX_NOISE
	anim_obj BATTLE_ANIM_OBJ_MEGAPHONE, 64, 88, $0
	anim_wait 16
.loop
	anim_sound 0, 1, SFX_BOAT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $14, $2, $0
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 100, $2
	anim_wait 16
	anim_loop 2, .loop
	anim_wait 8
	anim_ret

BattleAnim_WillOWisp:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_WILL_O_WISP
	anim_1gfx BATTLE_ANIM_GFX_FIRE
	anim_bgp $1b
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_obj BATTLE_ANIM_OBJ_DRAGON_RAGE, 64, 92, $0
	anim_wait 40
	anim_sound 0, 0, SFX_CURSE
.loop
	anim_obj BATTLE_ANIM_OBJ_SACRED_FIRE, 132, 68, $0
	anim_wait 8
	anim_loop 4, .loop
	anim_wait 48
	anim_ret
	
BattleAnim_ShellBomb:
	anim_1gfx BATTLE_ANIM_GFX_EXPLOSION
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $60, $4, $10
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $24
	anim_call BattleAnimSub_Explosion2
	anim_wait 16
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPIKES, 48, 88, $20
	anim_wait 8
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPIKES, 48, 88, $30
	anim_wait 8
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPIKES, 48, 88, $28
	anim_wait 64
	anim_ret
	
BattleAnim_MagnetBomb:
	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_ICE
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_SMALL_EXPLOSION
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 36, $0
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 62, $18
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 54, $30
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 48, $8
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 64, $20
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 36, $10
	anim_wait 8
	anim_sound 0, 0, SFX_RAGE
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 38, $8
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $38
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $60, $1, $0
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 124, 62, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_SPINNING, 132, 64, $28
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $16
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 140, 62, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $39
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 124, 42, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $10
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 132, 52, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 124, 62, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $38
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 140, 42, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $0
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 124, 42, $0
	anim_obj BATTLE_ANIM_OBJ_MAGNET_BOMB_IMPACT, 136, 56, $1d
	anim_wait 8
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_SMALL_EXPLOSION, 132, 52, $0
	anim_wait 32
	anim_ret
	
BattleAnim_LavaBurst:
;	anim_setobjpal PAL_BATTLE_OB_RED, PAL_BTLCUSTOM_FIRE
;	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_LAVA_BURST
;	anim_2gfx BATTLE_ANIM_GFX_FIRE, BATTLE_ANIM_GFX_SMOKE_PUFF_BIG
;	anim_sound 6, 2, SFX_EMBER
;	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, $1, $40
;.loop
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $38
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $10
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME, 58, 88, $5c
;	anim_obj BATTLE_ANIM_OBJ_LAVA_BURST_SMOKE, 52, 96, $2
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $2a
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $4
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $e8
;	anim_obj BATTLE_ANIM_OBJ_LAVA_BURST_SMOKE, 40, 100, $28
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $18
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $3b
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $d0
;	anim_obj BATTLE_ANIM_OBJ_LAVA_BURST_SMOKE, 48, 84, $38
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $1a
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $0a
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME, 58, 88, $50
;	anim_obj BATTLE_ANIM_OBJ_LAVA_BURST_SMOKE, 56, 100, $8
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $1e
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $30
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $e8
;	anim_obj BATTLE_ANIM_OBJ_LAVA_BURST_SMOKE, 44, 88, $30
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $0
;	anim_obj BATTLE_ANIM_OBJ_RADIAL_FLAME, 48, 96, $24
;	anim_wait 2
;	anim_obj BATTLE_ANIM_OBJ_ERUPTION_SMALL_FLAME, 38, 88, $d0
;	anim_obj BATTLE_ANIM_OBJ_LAVA_BURST_SMOKE, 48, 108, $18
;	anim_wait 2
;	anim_loop 2, .loop
;	anim_wait 20
	anim_ret
	
BattleAnim_DragonClaw:
	anim_ret

BattleAnim_DustDevil:
	anim_2gfx BATTLE_ANIM_GFX_WIND, BATTLE_ANIM_GFX_ROCKS
.loop
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_GUST, -16, 4, 9, 0, 0
	anim_call .rocks1
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_GUST, -16, 4, 9, 0, 0
	anim_call .rocks2
	anim_wait 2
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_GUST, -16, 4, 9, 0, 0
	anim_loop 6, .loop
	anim_ret

.rocks1
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $28
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $5c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $10
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $e8
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $9c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $d0
	anim_ret

.rocks2
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $1c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $50
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $dc
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 16, 0, 8, 0, $90
	anim_ret

BattleAnim_StormFront:
	anim_if_param_equal $1, BattleAnim_RainDance
	anim_3gfx BATTLE_ANIM_GFX_WATER, BATTLE_ANIM_GFX_WIND, BATTLE_ANIM_GFX_HIT
	anim_bgp $f8
	anim_obp0 $7c
.loop1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_GUST, 64, 112, $0
	anim_wait 6
	anim_loop 9, .loop1
	anim_sound 0, 1, SFX_RAIN_DANCE
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $1
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_jump BattleAnim_Twister.loop2

BattleAnim_LavaPool:
	anim_setobjpal PAL_BATTLE_OB_GRAY, PAL_BTLCUSTOM_FIRE
	anim_2gfx BATTLE_ANIM_GFX_ANGELS, BATTLE_ANIM_GFX_POISON
	anim_obp0 $94
	anim_if_param_equal $1, BattleAnimSub_Sludge
	anim_sound 16, 2, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_DESTINY_BOND, 5, 4, 15, 0, 2
	anim_wait 56
	anim_jump BattleAnimSub_Sludge
