	db 0 ; species ID placeholder

	db  90,  75,  85,  25,  90,  55
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; XXX catch rate
	db 141 ; XXX base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; XXX step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/koalyptus/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, HIDDEN_POWER, UPROOT
	; end
