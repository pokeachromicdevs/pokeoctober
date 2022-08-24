	db 0 ; species ID placeholder

	db  55,  70,  55,  50, 60,  25
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 63 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 10 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kotora/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROLLOUT, MUD_SLAP, TOXIC, ZAP_CANNON, HIDDEN_POWER, HYPER_BEAM, PROTECT, ENDURE, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, STRONG_ARM, THUNDERBOLT ; TODO tweak tmhm learnset
	; end
