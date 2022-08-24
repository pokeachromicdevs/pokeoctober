		db WORFURS ; 246

	db 70,  60,  50,  55,  70,  60
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 170 ; catch rate
	db 75 ; base exp
	dw ICE_BERRY, ICE_FANG ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/worfurs/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm ROAR, DYNAMICPUNCH, TOXIC, HEADBUTT, HIDDEN_POWER, PROTECT, ENDURE, RETURN, SWAGGER, SWIFT, BLIZZARD, ICY_WIND, ICE_PUNCH, EARTHQUAKE, MUD_SLAP, THIEF, THUNDERPUNCH, ROCK_SMASH, STRONG_ARM, REST
	; end