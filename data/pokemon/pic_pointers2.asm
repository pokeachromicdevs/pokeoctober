	; Pics are defined in gfx/pics.asm

	dba EggPic ; EGG is now -3, so it must go *above* the label
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
PokemonPicPointers::
; entries correspond to Pokémon species, two apiece (first index is 0)
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dba BellignanFrontpic
	dba BellignanBackpic