	db 0 ; species ID placeholder

	db  70, 100, 130,  35,  70,  75
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 25 ; catch rate
	db 168 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 25 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magstacean/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLIGHTLY_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, THUNDERPUNCH, REST, FRUSTRATION, RETURN, ATTRACT, THIEF, UPROOT, WATER_SPORT, STRONG_ARM, WHIRLPOOL
	; end
