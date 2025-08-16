BattleAnimations::
; entries correspond to constants/move_constants.asm
	indirect_table 2, 0
	indirect_entries OLD_MOVES, BattleAnimationsOld
	indirect_entries NUM_ATTACKS, BattleAnimationsNew
	indirect_entries $ffff - NUM_SPECIAL_ANIMS
	indirect_entries $ffff, BattleAnimationsNegatives
	indirect_table_end


INCLUDE "data/moves/animations_old.asm"
INCLUDE "data/moves/animations_new.asm"
INCLUDE "data/moves/animations_negative.asm"