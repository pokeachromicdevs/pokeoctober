BattleCommand_EvilEye:
; Get the opponent's status condition
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
; Return if it's 0 (no condition)
	and a
	ret z
; It's not 0, so double the damage
	jp DoubleDamage