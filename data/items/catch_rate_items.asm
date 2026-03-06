; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	dbw $5A, BERRY
	dbw $78, BERRY
	dbw $87, BERRY
	dbw -1,  BERRY
	db 0 ; end
