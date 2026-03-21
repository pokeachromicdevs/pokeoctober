TypeMatchups:
	;  attacker,     defender,     *=
	INCLUDE "sheets/generated/type/matchups.gen.asm"

	db -2 ; end (with Foresight)

; Foresight removes Ghost's immunities.
	db NORMAL,       GHOST,        NO_EFFECT
	db FIGHTING,     GHOST,        NO_EFFECT

	db -1 ; end
