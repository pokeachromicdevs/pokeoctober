BattleAnimOAMData:
; entries correspond to BATTLE_ANIM_OAMSET_* constants
	; vtile offset, data length, data pointer
	dbbw $00, 16, .OAMData_00 ; BATTLE_ANIM_OAMSET_00
	dbbw $04,  9, .OAMData_01 ; BATTLE_ANIM_OAMSET_01
	dbbw $08,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_02
	dbbw $09,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_03
	dbbw $0d,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_04
	dbbw $0f,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_05
	dbbw $13,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_06
	dbbw $04, 16, .OAMData_00 ; BATTLE_ANIM_OAMSET_07
	dbbw $08, 16, .OAMData_00 ; BATTLE_ANIM_OAMSET_08
	dbbw $08, 16, .OAMData_09 ; BATTLE_ANIM_OAMSET_09
	dbbw $00,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_0A
	dbbw $02,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_0B
	dbbw $06,  2, .OAMData_0c ; BATTLE_ANIM_OAMSET_0C
	dbbw $07,  2, .OAMData_0c ; BATTLE_ANIM_OAMSET_0D
	dbbw $02,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_0E
	dbbw $04,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_0F
	dbbw $05,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_10
	dbbw $00,  2, .OAMData_11 ; BATTLE_ANIM_OAMSET_11
	dbbw $02,  2, .OAMData_11 ; BATTLE_ANIM_OAMSET_12
	dbbw $00,  4, .OAMData_13 ; BATTLE_ANIM_OAMSET_13
	dbbw $00,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_14
	dbbw $01,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_15
	dbbw $02,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_16
	dbbw $03,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_17
	dbbw $00,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_18
	dbbw $01, 16, .OAMData_00 ; BATTLE_ANIM_OAMSET_19
	dbbw $05, 16, .OAMData_00 ; BATTLE_ANIM_OAMSET_1A
	dbbw $00,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_1B
	dbbw $05, 12, .OAMData_1c ; BATTLE_ANIM_OAMSET_1C
	dbbw $02,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_1D
	dbbw $06,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_1E
	dbbw $07,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_1F
	dbbw $08,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_20
	dbbw $04,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_21
	dbbw $09, 22, .OAMData_22 ; BATTLE_ANIM_OAMSET_22
	dbbw $04,  2, .OAMData_11 ; BATTLE_ANIM_OAMSET_23
	dbbw $06,  2, .OAMData_11 ; BATTLE_ANIM_OAMSET_24
	dbbw $0c,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_25
	dbbw $0a,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_26
	dbbw $0b,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_27
	dbbw $08,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_28
	dbbw $06,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_29
	dbbw $00,  5, .OAMData_2a ; BATTLE_ANIM_OAMSET_2A
	dbbw $03,  6, .OAMData_2b ; BATTLE_ANIM_OAMSET_2B
	dbbw $00,  7, .OAMData_2c ; BATTLE_ANIM_OAMSET_2C
	dbbw $03,  8, .OAMData_2d ; BATTLE_ANIM_OAMSET_2D
	dbbw $00,  9, .OAMData_2e ; BATTLE_ANIM_OAMSET_2E
	dbbw $00,  4, .OAMData_2f ; BATTLE_ANIM_OAMSET_2F
	dbbw $02,  4, .OAMData_30 ; BATTLE_ANIM_OAMSET_30
	dbbw $04,  6, .OAMData_31 ; BATTLE_ANIM_OAMSET_31
	dbbw $00,  2, .OAMData_32 ; BATTLE_ANIM_OAMSET_32
	dbbw $00,  7, .OAMData_33 ; BATTLE_ANIM_OAMSET_33
	dbbw $00, 14, .OAMData_32 ; BATTLE_ANIM_OAMSET_34
	dbbw $00, 21, .OAMData_33 ; BATTLE_ANIM_OAMSET_35
	dbbw $00,  2, .OAMData_36 ; BATTLE_ANIM_OAMSET_36
	dbbw $00,  6, .OAMData_36 ; BATTLE_ANIM_OAMSET_37
	dbbw $00, 10, .OAMData_36 ; BATTLE_ANIM_OAMSET_38
	dbbw $00, 14, .OAMData_36 ; BATTLE_ANIM_OAMSET_39
	dbbw $00,  2, .OAMData_3a ; BATTLE_ANIM_OAMSET_3A
	dbbw $00,  6, .OAMData_3a ; BATTLE_ANIM_OAMSET_3B
	dbbw $00, 10, .OAMData_3a ; BATTLE_ANIM_OAMSET_3C
	dbbw $00, 14, .OAMData_3a ; BATTLE_ANIM_OAMSET_3D
	dbbw $00,  4, .OAMData_3e ; BATTLE_ANIM_OAMSET_3E
	dbbw $00, 16, .OAMData_3e ; BATTLE_ANIM_OAMSET_3F
	dbbw $00, 26, .OAMData_3e ; BATTLE_ANIM_OAMSET_40
	dbbw $00, 26, .OAMData_41 ; BATTLE_ANIM_OAMSET_41
	dbbw $0e,  4, .OAMData_42 ; BATTLE_ANIM_OAMSET_42
	dbbw $0e,  8, .OAMData_42 ; BATTLE_ANIM_OAMSET_43
	dbbw $0e,  4, .OAMData_44 ; BATTLE_ANIM_OAMSET_44
	dbbw $0e,  8, .OAMData_44 ; BATTLE_ANIM_OAMSET_45
	dbbw $0e,  4, .OAMData_46 ; BATTLE_ANIM_OAMSET_46
	dbbw $0e,  4, .OAMData_47 ; BATTLE_ANIM_OAMSET_47
	dbbw $00,  6, .OAMData_48 ; BATTLE_ANIM_OAMSET_48
	dbbw $03,  4, .OAMData_49 ; BATTLE_ANIM_OAMSET_49
	dbbw $03,  2, .OAMData_4a ; BATTLE_ANIM_OAMSET_4A
	dbbw $01,  5, .OAMData_0f ; BATTLE_ANIM_OAMSET_4B
	dbbw $01,  6, .OAMData_4c ; BATTLE_ANIM_OAMSET_4C
	dbbw $01,  7, .OAMData_4d ; BATTLE_ANIM_OAMSET_4D
	dbbw $01,  3, .OAMData_4d ; BATTLE_ANIM_OAMSET_4E
	dbbw $01,  8, .OAMData_4f ; BATTLE_ANIM_OAMSET_4F
	dbbw $01,  9, .OAMData_50 ; BATTLE_ANIM_OAMSET_50
	dbbw $01, 10, .OAMData_51 ; BATTLE_ANIM_OAMSET_51
	dbbw $01,  6, .OAMData_51 ; BATTLE_ANIM_OAMSET_52
	dbbw $00,  9, .OAMData_01 ; BATTLE_ANIM_OAMSET_53
	dbbw $04,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_54
	dbbw $05,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_55
	dbbw $00,  2, .OAMData_56 ; BATTLE_ANIM_OAMSET_56
	dbbw $02,  2, .OAMData_56 ; BATTLE_ANIM_OAMSET_57
	dbbw $04,  2, .OAMData_56 ; BATTLE_ANIM_OAMSET_58
	dbbw $02,  4, .OAMData_59 ; BATTLE_ANIM_OAMSET_59
	dbbw $02,  4, .OAMData_5a ; BATTLE_ANIM_OAMSET_5A
	dbbw $02,  2, .OAMData_0c ; BATTLE_ANIM_OAMSET_5B
	dbbw $04,  2, .OAMData_0c ; BATTLE_ANIM_OAMSET_5C
	dbbw $06,  4, .OAMData_5d ; BATTLE_ANIM_OAMSET_5D
	dbbw $08,  2, .OAMData_0c ; BATTLE_ANIM_OAMSET_5E
	dbbw $09,  2, .OAMData_0c ; BATTLE_ANIM_OAMSET_5F
	dbbw $05,  2, .OAMData_60 ; BATTLE_ANIM_OAMSET_60
	dbbw $00,  2, .OAMData_61 ; BATTLE_ANIM_OAMSET_61
	dbbw $00,  5, .OAMData_61 ; BATTLE_ANIM_OAMSET_62
	dbbw $00,  9, .OAMData_61 ; BATTLE_ANIM_OAMSET_63
	dbbw $09,  9, .OAMData_61 ; BATTLE_ANIM_OAMSET_64
	dbbw $00,  4, .OAMData_65 ; BATTLE_ANIM_OAMSET_65
	dbbw $00,  7, .OAMData_65 ; BATTLE_ANIM_OAMSET_66
	dbbw $00,  9, .OAMData_65 ; BATTLE_ANIM_OAMSET_67
	dbbw $09,  9, .OAMData_65 ; BATTLE_ANIM_OAMSET_68
	dbbw $04,  1, .OAMData_69 ; BATTLE_ANIM_OAMSET_69
	dbbw $05,  2, .OAMData_6a ; BATTLE_ANIM_OAMSET_6A
	dbbw $06,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_6B
	dbbw $0a,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_6C
	dbbw $0e,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_6D
	dbbw $08,  5, .OAMData_6e ; BATTLE_ANIM_OAMSET_6E
	dbbw $0d,  3, .OAMData_6f ; BATTLE_ANIM_OAMSET_6F
	dbbw $01,  8, .OAMData_70 ; BATTLE_ANIM_OAMSET_70
	dbbw $03,  8, .OAMData_70 ; BATTLE_ANIM_OAMSET_71
	dbbw $05,  8, .OAMData_70 ; BATTLE_ANIM_OAMSET_72
	dbbw $07,  8, .OAMData_70 ; BATTLE_ANIM_OAMSET_73
	dbbw $06,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_74
	dbbw $07,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_75
	dbbw $0a,  2, .OAMData_76 ; BATTLE_ANIM_OAMSET_76
	dbbw $00,  1, .OAMData_77 ; BATTLE_ANIM_OAMSET_77
	dbbw $00,  3, .OAMData_78 ; BATTLE_ANIM_OAMSET_78
	dbbw $00,  6, .OAMData_79 ; BATTLE_ANIM_OAMSET_79
	dbbw $00,  9, .OAMData_7a ; BATTLE_ANIM_OAMSET_7A
	dbbw $00, 12, .OAMData_7b ; BATTLE_ANIM_OAMSET_7B
	dbbw $00, 14, .OAMData_7c ; BATTLE_ANIM_OAMSET_7C
	dbbw $00, 15, .OAMData_7d ; BATTLE_ANIM_OAMSET_7D
	dbbw $04,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_7E
	dbbw $08,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_7F
	dbbw $0d,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_80
	dbbw $0e,  4, .OAMData_81 ; BATTLE_ANIM_OAMSET_81
	dbbw $10,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_82
	dbbw $11,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_83
	dbbw $04,  2, .OAMData_6a ; BATTLE_ANIM_OAMSET_84
	dbbw $05,  2, .OAMData_6a ; BATTLE_ANIM_OAMSET_85
	dbbw $0a,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_86
	dbbw $00,  8, .OAMData_87 ; BATTLE_ANIM_OAMSET_87
	dbbw $00, 12, .OAMData_88 ; BATTLE_ANIM_OAMSET_88
	dbbw $00, 16, .OAMData_87 ; BATTLE_ANIM_OAMSET_89
	dbbw $09,  2, .OAMData_8a ; BATTLE_ANIM_OAMSET_8A
	dbbw $09,  4, .OAMData_8a ; BATTLE_ANIM_OAMSET_8B
	dbbw $09,  6, .OAMData_8a ; BATTLE_ANIM_OAMSET_8C
	dbbw $09,  8, .OAMData_8a ; BATTLE_ANIM_OAMSET_8D
	dbbw $12,  5, .OAMData_8e ; BATTLE_ANIM_OAMSET_8E
	dbbw $00,  4, .OAMData_8f ; BATTLE_ANIM_OAMSET_8F
	dbbw $04,  4, .OAMData_8f ; BATTLE_ANIM_OAMSET_90
	dbbw $08,  4, .OAMData_8f ; BATTLE_ANIM_OAMSET_91
	dbbw $0c,  4, .OAMData_8f ; BATTLE_ANIM_OAMSET_92
	dbbw $00,  6, .OAMData_93 ; BATTLE_ANIM_OAMSET_93
	dbbw $04,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_94
	dbbw $0a,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_95
	dbbw $15,  4, .OAMData_30 ; BATTLE_ANIM_OAMSET_96
	dbbw $04,  4, .OAMData_30 ; BATTLE_ANIM_OAMSET_97
	dbbw $0c,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_98
	dbbw $0a,  4, .OAMData_99 ; BATTLE_ANIM_OAMSET_99
	dbbw $0c,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_9A
	dbbw $00, 36, .OAMData_9b ; BATTLE_ANIM_OAMSET_9B
	dbbw $0d,  2, .OAMData_9c ; BATTLE_ANIM_OAMSET_9C
	dbbw $0d,  4, .OAMData_9c ; BATTLE_ANIM_OAMSET_9D
	dbbw $0d,  6, .OAMData_9c ; BATTLE_ANIM_OAMSET_9E
	dbbw $02,  8, .OAMData_9f ; BATTLE_ANIM_OAMSET_9F
	dbbw $08,  7, .OAMData_a0 ; BATTLE_ANIM_OAMSET_A0
	dbbw $08,  5, .OAMData_a0 ; BATTLE_ANIM_OAMSET_A1
	dbbw $08,  3, .OAMData_a0 ; BATTLE_ANIM_OAMSET_A2
	dbbw $00, 16, .OAMData_1c ; BATTLE_ANIM_OAMSET_A3
	dbbw $00,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_A4
	dbbw $06,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_A5
	dbbw $0c,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_A6
	dbbw $12,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_A7
	dbbw $18,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_A8
	dbbw $1e,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_A9
	dbbw $24,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_AA
	dbbw $2a,  9, .OAMData_a4 ; BATTLE_ANIM_OAMSET_AB
	dbbw $03,  4, .OAMData_ac ; BATTLE_ANIM_OAMSET_AC
	dbbw $12,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_AD
	dbbw $10,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_AE
	dbbw $16,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_AF
	dbbw $17,  4, .OAMData_02 ; BATTLE_ANIM_OAMSET_B0
	dbbw $18,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_B1
	dbbw $1c,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_B2
	dbbw $20,  3, .OAMData_03 ; BATTLE_ANIM_OAMSET_B3
	dbbw $23,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_B4
	dbbw $25,  3, .OAMData_03 ; BATTLE_ANIM_OAMSET_B5
	dbbw $17,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_B6
	dbbw $0a, 16, .OAMData_00 ; BATTLE_ANIM_OAMSET_B7
	dbbw $10, 16, .OAMData_1c ; BATTLE_ANIM_OAMSET_B8
	dbbw $00, 16, .OAMData_1c ; BATTLE_ANIM_OAMSET_B9
	dbbw $04,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_BA
	dbbw $08,  2, .OAMData_11 ; BATTLE_ANIM_OAMSET_BB
	dbbw $20,  6, .OAMData_bc ; BATTLE_ANIM_OAMSET_BC
	dbbw $08,  1, .OAMData_0f ; BATTLE_ANIM_OAMSET_BD
	dbbw $04,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_BE
	dbbw $1a,  4, .OAMData_30 ; BATTLE_ANIM_OAMSET_BF
	dbbw $16,  9, .OAMData_01 ; BATTLE_ANIM_OAMSET_C0
	dbbw $10, 16, .OAMData_c1 ; BATTLE_ANIM_OAMSET_C1
	dbbw $09,  6, .OAMData_c2 ; BATTLE_ANIM_OAMSET_C2
	dbbw $11,  9, .OAMData_c3 ; BATTLE_ANIM_OAMSET_C3
	dbbw $0e,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_C4
	dbbw $0b,  4, .OAMData_30 ; BATTLE_ANIM_OAMSET_C5
	dbbw $1c,  6, .OAMData_02 ; BATTLE_ANIM_OAMSET_C6
	dbbw $20, 16, .OAMData_c1 ; BATTLE_ANIM_OAMSET_C7
	dbbw $05,  6, .OAMData_c8 ; BATTLE_ANIM_OAMSET_C8
	dbbw $0b,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_C9
	dbbw $09,  4, .OAMData_ca ; BATTLE_ANIM_OAMSET_CA
	dbbw $0b,  4, .OAMData_04 ; BATTLE_ANIM_OAMSET_CB
	dbbw $11, 13, .OAMData_cc ; BATTLE_ANIM_OAMSET_CC
	dbbw $00,  9, .OAMData_c3 ; BATTLE_ANIM_OAMSET_CD
	dbbw $09,  9, .OAMData_c3 ; BATTLE_ANIM_OAMSET_CE
	dbbw $00, 12, .OAMData_cf ; BATTLE_ANIM_OAMSET_CF
	dbbw $06, 12, .OAMData_cf ; BATTLE_ANIM_OAMSET_D0
	dbbw $0c, 12, .OAMData_cf ; BATTLE_ANIM_OAMSET_D1
	dbbw $12, 12, .OAMData_cf ; BATTLE_ANIM_OAMSET_D2
	dbbw $00, 13, .OAMData_cc ; BATTLE_ANIM_OAMSET_D3
	dbbw $00,  7, .OAMData_d4 ; BATTLE_ANIM_OAMSET_D4
	dbbw $00,  6, .OAMData_d5 ; BATTLE_ANIM_OAMSET_D5
	dbbw $00, 14, .OAMData_d6 ; BATTLE_ANIM_OAMSET_D6
	dbbw $00, 12, .OAMData_d7 ; BATTLE_ANIM_OAMSET_D7
	dbbw $07,  4, .OAMData_03 ; BATTLE_ANIM_OAMSET_D8
	dbbw $0a,  1, .OAMData_d9 ; BATTLE_ANIM_OAMSET_D9
	dbbw $0a,  1, .OAMData_60 ; BATTLE_ANIM_OAMSET_DA

.OAMData_11:
	dsprite  -1, 0,  -1, 4, $00, $0
	dsprite   0, 0,  -1, 4, $01, $0

.OAMData_56:
	dsprite  -1, 4,  -1, 0, $00, $0
	dsprite  -1, 4,   0, 0, $01, $0

.OAMData_03:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $02, $0
	dsprite   0, 0,   0, 0, $03, $0

.OAMData_02:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, X_FLIP
	dsprite   0, 0,  -1, 0, $00, Y_FLIP
	dsprite   0, 0,   0, 0, $00, X_FLIP | Y_FLIP

.OAMData_c3:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite  -1, 4,  -1, 4, $04, $0
	dsprite  -1, 4,   0, 4, $05, $0
	dsprite   0, 4,  -2, 4, $06, $0
	dsprite   0, 4,  -1, 4, $07, $0
	dsprite   0, 4,   0, 4, $08, $0

.OAMData_01:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $00, X_FLIP
	dsprite  -1, 4,  -2, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $03, $0
	dsprite  -1, 4,   0, 4, $02, X_FLIP | Y_FLIP
	dsprite   0, 4,  -2, 4, $00, Y_FLIP
	dsprite   0, 4,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite   0, 4,   0, 4, $00, X_FLIP | Y_FLIP

.OAMData_cf:
	dsprite  -2, 0,  -2, 4, $00, $0
	dsprite  -2, 0,  -1, 4, $01, $0
	dsprite  -2, 0,   0, 4, $02, $0
	dsprite  -1, 0,  -2, 4, $03, $0
	dsprite  -1, 0,  -1, 4, $04, $0
	dsprite  -1, 0,   0, 4, $05, $0
	dsprite   0, 0,  -2, 4, $05, X_FLIP | Y_FLIP
	dsprite   0, 0,  -1, 4, $04, X_FLIP | Y_FLIP
	dsprite   0, 0,   0, 4, $03, X_FLIP | Y_FLIP
	dsprite   1, 0,  -2, 4, $02, X_FLIP | Y_FLIP
	dsprite   1, 0,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite   1, 0,   0, 4, $00, X_FLIP | Y_FLIP

.OAMData_1c:
	dsprite  -2, 0,  -2, 0, $00, $0
	dsprite  -2, 0,  -1, 0, $01, $0
	dsprite  -2, 0,   0, 0, $02, $0
	dsprite  -2, 0,   1, 0, $03, $0
	dsprite  -1, 0,  -2, 0, $04, $0
	dsprite  -1, 0,  -1, 0, $05, $0
	dsprite  -1, 0,   0, 0, $06, $0
	dsprite  -1, 0,   1, 0, $07, $0
	dsprite   0, 0,  -2, 0, $08, $0
	dsprite   0, 0,  -1, 0, $09, $0
	dsprite   0, 0,   0, 0, $0a, $0
	dsprite   0, 0,   1, 0, $0b, $0
	dsprite   1, 0,  -2, 0, $0c, $0
	dsprite   1, 0,  -1, 0, $0d, $0
	dsprite   1, 0,   0, 0, $0e, $0
	dsprite   1, 0,   1, 0, $0f, $0

.OAMData_00:
	dsprite  -2, 0,  -2, 0, $00, $0
	dsprite  -2, 0,  -1, 0, $01, $0
	dsprite  -1, 0,  -2, 0, $02, $0
	dsprite  -1, 0,  -1, 0, $03, $0
	dsprite  -2, 0,   0, 0, $01, X_FLIP
	dsprite  -2, 0,   1, 0, $00, X_FLIP
	dsprite  -1, 0,   0, 0, $03, X_FLIP
	dsprite  -1, 0,   1, 0, $02, X_FLIP
	dsprite   0, 0,  -2, 0, $02, Y_FLIP
	dsprite   0, 0,  -1, 0, $03, Y_FLIP
	dsprite   1, 0,  -2, 0, $00, Y_FLIP
	dsprite   1, 0,  -1, 0, $01, Y_FLIP
	dsprite   0, 0,   0, 0, $03, X_FLIP | Y_FLIP
	dsprite   0, 0,   1, 0, $02, X_FLIP | Y_FLIP
	dsprite   1, 0,   0, 0, $01, X_FLIP | Y_FLIP
	dsprite   1, 0,   1, 0, $00, X_FLIP | Y_FLIP

.OAMData_09:
	dsprite  -3, 4,  -3, 4, $00, $0
	dsprite  -3, 4,  -2, 4, $01, $0
	dsprite  -2, 4,  -3, 4, $02, $0
	dsprite  -2, 4,  -2, 4, $03, $0
	dsprite  -3, 4,   0, 4, $01, X_FLIP
	dsprite  -3, 4,   1, 4, $00, X_FLIP
	dsprite  -2, 4,   0, 4, $03, X_FLIP
	dsprite  -2, 4,   1, 4, $02, X_FLIP
	dsprite   0, 4,  -3, 4, $02, Y_FLIP
	dsprite   0, 4,  -2, 4, $03, Y_FLIP
	dsprite   1, 4,  -3, 4, $00, Y_FLIP
	dsprite   1, 4,  -2, 4, $01, Y_FLIP
	dsprite   0, 4,   0, 4, $03, X_FLIP | Y_FLIP
	dsprite   0, 4,   1, 4, $02, X_FLIP | Y_FLIP
	dsprite   1, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite   1, 4,   1, 4, $00, X_FLIP | Y_FLIP

.OAMData_0c:
	dsprite  -1, 4,  -1, 0, $00, $0
	dsprite  -1, 4,   0, 0, $00, X_FLIP

.OAMData_6a:
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   0, 0,   0, 0, $00, X_FLIP

.OAMData_04:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, X_FLIP
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $01, X_FLIP

.OAMData_5d:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $00, Y_FLIP
	dsprite   0, 0,   0, 0, $01, Y_FLIP

.OAMData_13:
	dsprite  -1, 2,  -1, 0, $02, $0
	dsprite   0, 2,  -1, 0, $03, $0
	dsprite  -2, 6,   0, 0, $02, $0
	dsprite  -1, 6,   0, 0, $03, $0

.OAMData_22:
	dsprite   1, 0, -11, 0, $01, $0
	dsprite   0, 0, -10, 0, $02, $0
	dsprite   0, 0,  -9, 0, $03, $0
	dsprite   0, 0,  -8, 0, $00, $0
	dsprite   0, 0,  -7, 0, $03, $0
	dsprite   0, 0,  -6, 0, $00, $0
	dsprite   0, 0,  -5, 0, $03, $0
	dsprite   0, 0,  -4, 0, $00, $0
	dsprite   0, 0,  -3, 0, $03, $0
	dsprite   0, 0,  -2, 0, $00, $0
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite  -1, 0,   0, 0, $02, $0
	dsprite  -1, 0,   1, 0, $03, $0
	dsprite  -1, 0,   2, 0, $00, $0
	dsprite  -1, 0,   3, 0, $03, $0
	dsprite  -1, 0,   4, 0, $00, $0
	dsprite  -1, 0,   5, 0, $03, $0
	dsprite  -1, 0,   6, 0, $00, $0
	dsprite  -1, 0,   7, 0, $03, $0
	dsprite  -1, 0,   8, 0, $00, $0
	dsprite  -1, 0,   9, 0, $01, $0
	dsprite  -2, 0,  10, 0, $02, $0

.OAMData_2a:
	dsprite  -3, 4,  -1, 0, $00, $0
	dsprite  -3, 4,   0, 0, $00, X_FLIP
	dsprite  -2, 4,  -1, 0, $01, $0
	dsprite  -2, 4,   0, 0, $01, X_FLIP
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2b:
	dsprite  -4, 4,  -1, 0, $00, $0
	dsprite  -4, 4,   0, 0, $00, X_FLIP
	dsprite  -3, 4,  -1, 0, $01, $0
	dsprite  -3, 4,   0, 0, $01, X_FLIP
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2c:
	dsprite  -5, 4,  -1, 0, $00, $0
	dsprite  -5, 4,   0, 0, $00, X_FLIP
	dsprite  -4, 4,  -1, 0, $01, $0
	dsprite  -4, 4,   0, 0, $01, X_FLIP
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2d:
	dsprite  -6, 4,  -1, 0, $00, $0
	dsprite  -6, 4,   0, 0, $00, X_FLIP
	dsprite  -5, 4,  -1, 0, $01, $0
	dsprite  -5, 4,   0, 0, $01, X_FLIP
	dsprite  -4, 4,  -1, 4, $02, $0
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2e:
	dsprite  -7, 4,  -1, 0, $00, $0
	dsprite  -7, 4,   0, 0, $00, X_FLIP
	dsprite  -6, 4,  -1, 0, $01, $0
	dsprite  -6, 4,   0, 0, $01, X_FLIP
	dsprite  -5, 4,  -1, 4, $02, $0
	dsprite  -4, 4,  -1, 4, $02, $0
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite  -2, 4,  -1, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $02, $0

.OAMData_2f:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $00, X_FLIP
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $00, X_FLIP | Y_FLIP

.OAMData_30:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $01, X_FLIP | Y_FLIP
	dsprite   0, 0,   0, 0, $00, X_FLIP | Y_FLIP

.OAMData_31:
	dsprite  -2, 4,  -1, 0, $00, $0
	dsprite  -2, 4,   0, 0, $01, $0
	dsprite  -1, 4,  -1, 0, $02, $0
	dsprite  -1, 4,   0, 0, $03, $0
	dsprite   0, 4,  -1, 0, $04, $0
	dsprite   0, 4,   0, 0, $05, $0

.OAMData_76:
	dsprite  -1, 5,  -1, 0, $00, $0
	dsprite  -1, 1,   0, 0, $00, $0

.OAMData_32:
	dsprite  -1, 0,  -2, 4, $00, $0
	dsprite  -1, 0,   0, 4, $00, $0
	dsprite  -3, 0,  -2, 4, $00, $0
	dsprite  -3, 0,   0, 4, $00, $0
	dsprite  -2, 0,  -3, 4, $00, $0
	dsprite  -2, 0,  -2, 4, $01, $0
	dsprite  -2, 0,  -1, 4, $00, $0
	dsprite  -2, 0,   0, 4, $01, $0
	dsprite  -2, 0,   1, 4, $00, $0
	dsprite  -1, 0,  -4, 4, $00, $0
	dsprite  -1, 0,  -3, 4, $01, $0
	dsprite  -1, 0,  -1, 4, $01, $0
	dsprite  -1, 0,   1, 4, $01, $0
	dsprite  -1, 0,   2, 4, $00, $0

.OAMData_33:
	dsprite  -2, 0,  -2, 4, $00, $0
	dsprite  -2, 0,   0, 4, $00, $0
	dsprite  -1, 0,  -3, 4, $00, $0
	dsprite  -1, 0,  -2, 4, $01, $0
	dsprite  -1, 0,  -1, 4, $00, $0
	dsprite  -1, 0,   0, 4, $01, $0
	dsprite  -1, 0,   1, 4, $00, $0
	dsprite  -4, 0,  -2, 4, $00, $0
	dsprite  -4, 0,   0, 4, $00, $0
	dsprite  -3, 0,  -3, 4, $00, $0
	dsprite  -3, 0,  -2, 4, $01, $0
	dsprite  -3, 0,  -1, 4, $00, $0
	dsprite  -3, 0,   0, 4, $01, $0
	dsprite  -3, 0,   1, 4, $00, $0
	dsprite  -2, 0,  -4, 4, $00, $0
	dsprite  -2, 0,  -3, 4, $01, $0
	dsprite  -2, 0,  -1, 4, $01, $0
	dsprite  -2, 0,   1, 4, $01, $0
	dsprite  -2, 0,   2, 4, $00, $0
	dsprite  -1, 0,  -4, 4, $01, $0
	dsprite  -1, 0,   2, 4, $01, $0

.OAMData_36:
	dsprite  -7, 4,  -1, 0, $00, $0
	dsprite  -7, 4,   0, 0, $01, $0
	dsprite  -6, 4,  -1, 0, $02, $0
	dsprite  -6, 4,   0, 0, $03, $0
	dsprite  -5, 4,  -1, 0, $04, $0
	dsprite  -5, 4,   0, 0, $05, $0
	dsprite  -4, 4,  -1, 0, $06, $0
	dsprite  -4, 4,   0, 0, $07, $0
	dsprite  -3, 4,  -1, 0, $08, $0
	dsprite  -3, 4,   0, 0, $09, $0
	dsprite  -2, 4,  -1, 0, $0a, $0
	dsprite  -2, 4,   0, 0, $0b, $0
	dsprite  -1, 4,  -1, 0, $0c, $0
	dsprite  -1, 4,   0, 0, $0d, $0

.OAMData_3a:
	dsprite  -7, 4,  -1, 0, $0c, $0
	dsprite  -7, 4,   0, 0, $0d, $0
	dsprite  -6, 4,  -1, 0, $08, $0
	dsprite  -6, 4,   0, 0, $09, $0
	dsprite  -5, 4,  -1, 0, $04, $0
	dsprite  -5, 4,   0, 0, $05, $0
	dsprite  -4, 4,  -1, 0, $00, $0
	dsprite  -4, 4,   0, 0, $01, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $03, $0
	dsprite  -2, 4,   0, 0, $02, $0
	dsprite  -2, 4,   1, 0, $03, $0
	dsprite  -1, 4,   0, 0, $0a, $0
	dsprite  -1, 4,   1, 0, $0b, $0

.OAMData_3e:
	dsprite   1, 4,  -2, 0, $00, Y_FLIP
	dsprite   1, 4,  -1, 0, $02, Y_FLIP
	dsprite   1, 4,   0, 0, $02, X_FLIP | Y_FLIP
	dsprite   1, 4,   1, 0, $00, X_FLIP | Y_FLIP
	dsprite  -1, 4,  -3, 0, $09, X_FLIP
	dsprite  -1, 4,  -2, 0, $08, X_FLIP
	dsprite  -1, 4,  -1, 0, $06, $0
	dsprite  -1, 4,   0, 0, $07, $0
	dsprite  -1, 4,   1, 0, $08, $0
	dsprite  -1, 4,   2, 0, $09, $0
	dsprite   0, 4,  -3, 0, $01, X_FLIP
	dsprite   0, 4,  -2, 0, $00, X_FLIP
	dsprite   0, 4,  -1, 0, $0c, $0
	dsprite   0, 4,   0, 0, $0d, $0
	dsprite   0, 4,   1, 0, $00, $0
	dsprite   0, 4,   2, 0, $01, $0
	dsprite  -3, 4,  -2, 0, $00, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $02, X_FLIP
	dsprite  -3, 4,   1, 0, $00, X_FLIP
	dsprite  -2, 4,  -3, 0, $03, X_FLIP
	dsprite  -2, 4,  -2, 0, $02, X_FLIP
	dsprite  -2, 4,  -1, 0, $04, $0
	dsprite  -2, 4,   0, 0, $05, $0
	dsprite  -2, 4,   1, 0, $02, $0
	dsprite  -2, 4,   2, 0, $03, $0

.OAMData_41:
	dsprite  -3, 4,  -2, 0, $00, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $02, X_FLIP
	dsprite  -3, 4,   1, 0, $00, X_FLIP
	dsprite  -2, 4,  -3, 4, $00, $0
	dsprite  -2, 4,  -2, 4, $01, $0
	dsprite  -2, 4,  -1, 0, $05, X_FLIP
	dsprite  -2, 4,   0, 0, $04, X_FLIP
	dsprite  -2, 4,   0, 4, $01, X_FLIP
	dsprite  -2, 4,   1, 4, $00, X_FLIP
	dsprite  -1, 4,  -3, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite  -1, 4,  -1, 0, $07, X_FLIP
	dsprite  -1, 4,   0, 0, $06, X_FLIP
	dsprite  -1, 4,   0, 4, $03, X_FLIP
	dsprite  -1, 4,   1, 4, $02, X_FLIP
	dsprite   0, 4,  -3, 4, $04, $0
	dsprite   0, 4,  -2, 4, $05, $0
	dsprite   0, 4,  -1, 0, $0d, X_FLIP
	dsprite   0, 4,   0, 0, $0c, X_FLIP
	dsprite   0, 4,   0, 4, $05, X_FLIP
	dsprite   0, 4,   1, 4, $04, X_FLIP
	dsprite   1, 4,  -2, 0, $00, Y_FLIP
	dsprite   1, 4,  -1, 0, $02, Y_FLIP
	dsprite   1, 4,   0, 0, $02, X_FLIP | Y_FLIP
	dsprite   1, 4,   1, 0, $00, X_FLIP | Y_FLIP

.OAMData_42:
	dsprite  -3, 0,  -1, 4, $02, $0
	dsprite   2, 0,  -1, 4, $02, X_FLIP | Y_FLIP
	dsprite  -1, 4,  -3, 0, $01, $0
	dsprite  -1, 4,   2, 0, $01, X_FLIP | Y_FLIP
	dsprite  -4, 0,  -1, 4, $02, $0
	dsprite   3, 0,  -1, 4, $02, X_FLIP | Y_FLIP
	dsprite  -1, 4,  -4, 0, $01, $0
	dsprite  -1, 4,   3, 0, $01, X_FLIP | Y_FLIP

.OAMData_44:
	dsprite  -3, 5,  -3, 5, $00, X_FLIP
	dsprite  -3, 5,   1, 3, $00, $0
	dsprite   1, 3,  -3, 5, $00, X_FLIP | Y_FLIP
	dsprite   1, 3,   1, 3, $00, Y_FLIP
	dsprite  -4, 5,  -4, 5, $00, X_FLIP
	dsprite  -4, 5,   2, 3, $00, $0
	dsprite   2, 3,  -4, 5, $00, X_FLIP | Y_FLIP
	dsprite   2, 3,   2, 3, $00, Y_FLIP

.OAMData_46:
	dsprite  -3, 4,  -1, 4, $02, $0
	dsprite   1, 4,  -1, 4, $02, X_FLIP | Y_FLIP
	dsprite  -1, 4,  -3, 4, $01, $0
	dsprite  -1, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_47:
	dsprite  -2, 0,  -2, 0, $00, X_FLIP
	dsprite  -2, 0,   1, 0, $00, $0
	dsprite   1, 0,  -2, 0, $00, X_FLIP | Y_FLIP
	dsprite   1, 0,   1, 0, $00, Y_FLIP

.OAMData_48:
	dsprite  -3, 0,  -1, 4, $00, $0
	dsprite  -2, 0,  -1, 2, $00, $0
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   1, 0,  -1, 2, $00, $0
	dsprite   2, 0,  -1, 4, $00, $0

.OAMData_49:
	dsprite  -1, 4,  -2, 0, $00, X_FLIP
	dsprite  -1, 2,  -1, 0, $00, X_FLIP
	dsprite  -1, 2,   0, 0, $00, $0
	dsprite  -1, 4,   1, 0, $00, $0

.OAMData_4a:
	dsprite  -1, 4,  -1, 0, $00, X_FLIP | Y_FLIP
	dsprite  -1, 4,   0, 0, $00, Y_FLIP

.OAMData_0f:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite  -1, 4,  -2, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $01, X_FLIP
	dsprite   0, 4,  -2, 4, $01, Y_FLIP
	dsprite   0, 4,  -1, 4, $01, X_FLIP | Y_FLIP

.OAMData_4c:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   0, 2,  -3, 6, $01, $0
	dsprite   0, 2,  -2, 6, $01, X_FLIP
	dsprite   1, 2,  -3, 6, $01, Y_FLIP
	dsprite   1, 2,  -2, 6, $01, X_FLIP | Y_FLIP

.OAMData_4d:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 0,  -3, 0, $01, $0
	dsprite   1, 0,  -2, 0, $01, X_FLIP
	dsprite   2, 0,  -3, 0, $01, Y_FLIP
	dsprite   2, 0,  -2, 0, $01, X_FLIP | Y_FLIP

.OAMData_4f:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 6,  -3, 2, $00, $0
	dsprite   1, 6,  -4, 2, $01, $0
	dsprite   1, 6,  -3, 2, $01, X_FLIP
	dsprite   2, 6,  -4, 2, $01, Y_FLIP
	dsprite   2, 6,  -3, 2, $01, X_FLIP | Y_FLIP

.OAMData_50:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 6,  -3, 2, $00, $0
	dsprite   2, 4,  -4, 4, $00, $0
	dsprite   2, 4,  -5, 4, $01, $0
	dsprite   2, 4,  -4, 4, $01, X_FLIP
	dsprite   3, 4,  -5, 4, $01, Y_FLIP
	dsprite   3, 4,  -4, 4, $01, X_FLIP | Y_FLIP

.OAMData_51:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 2,  -2, 6, $00, $0
	dsprite   1, 0,  -2, 0, $00, $0
	dsprite   1, 6,  -3, 2, $00, $0
	dsprite   2, 4,  -4, 4, $00, $0
	dsprite   3, 2,  -5, 6, $00, $0
	dsprite   3, 2,  -6, 6, $01, $0
	dsprite   3, 2,  -5, 6, $01, X_FLIP
	dsprite   4, 2,  -6, 6, $01, Y_FLIP
	dsprite   4, 2,  -5, 6, $01, X_FLIP | Y_FLIP

.OAMData_59:
	dsprite  -1, 4,  -2, 0, $00, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, X_FLIP
	dsprite  -1, 4,   1, 0, $00, X_FLIP

.OAMData_5a:
	dsprite  -1, 4,  -2, 0, $02, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, X_FLIP
	dsprite  -1, 4,   1, 0, $02, X_FLIP

.OAMData_60:
	dsprite  -1, 0,  -1, 4, $00, $0

.OAMData_69:
	dsprite   0, 0,  -1, 4, $00, $0

.OAMData_61:
	dsprite  -1, 4,  -4, 4, $00, $0
	dsprite  -1, 4,  -3, 4, $01, $0
	dsprite  -1, 4,  -2, 4, $02, $0
	dsprite  -1, 4,  -1, 4, $03, $0
	dsprite  -1, 4,   0, 4, $04, $0
	dsprite  -1, 4,   1, 4, $05, $0
	dsprite  -1, 4,   2, 4, $06, $0
	dsprite  -2, 4,   1, 4, $07, $0
	dsprite  -2, 4,   2, 4, $08, $0

.OAMData_65:
	dsprite  -2, 4,  -4, 4, $08, X_FLIP
	dsprite  -2, 4,  -3, 4, $07, X_FLIP
	dsprite  -1, 4,  -4, 4, $06, X_FLIP
	dsprite  -1, 4,  -3, 4, $05, X_FLIP
	dsprite  -1, 4,  -2, 4, $04, X_FLIP
	dsprite  -1, 4,  -1, 4, $03, X_FLIP
	dsprite  -1, 4,   0, 4, $02, X_FLIP
	dsprite  -1, 4,   1, 4, $01, X_FLIP
	dsprite  -1, 4,   2, 4, $00, X_FLIP

.OAMData_d4:
	dsprite   0, 0,  -4, 4, $00, OBP_NUM
	dsprite   0, 0,  -3, 4, $01, OBP_NUM
	dsprite   0, 0,  -2, 4, $02, OBP_NUM
	dsprite   0, 0,  -1, 4, $03, OBP_NUM
	dsprite   0, 0,   0, 4, $04, OBP_NUM
	dsprite   0, 0,   1, 4, $05, OBP_NUM
	dsprite   0, 0,   2, 4, $06, OBP_NUM

.OAMData_d6:
	dsprite  -1, 0,  -4, 4, $00, OBP_NUM
	dsprite   0, 0,  -4, 4, $01, OBP_NUM
	dsprite  -1, 0,  -3, 4, $02, OBP_NUM
	dsprite   0, 0,  -3, 4, $03, OBP_NUM
	dsprite  -1, 0,  -2, 4, $04, OBP_NUM
	dsprite   0, 0,  -2, 4, $05, OBP_NUM
	dsprite  -1, 0,  -1, 4, $06, OBP_NUM
	dsprite   0, 0,  -1, 4, $07, OBP_NUM
	dsprite  -1, 0,   0, 4, $08, OBP_NUM
	dsprite   0, 0,   0, 4, $09, OBP_NUM
	dsprite  -1, 0,   1, 4, $0a, OBP_NUM
	dsprite   0, 0,   1, 4, $0b, OBP_NUM
	dsprite  -1, 0,   2, 4, $0c, OBP_NUM
	dsprite   0, 0,   2, 4, $0d, OBP_NUM

.OAMData_d5:
	dsprite   0, 0,  -3, 0, $00, $1 | OBP_NUM
	dsprite   0, 0,  -2, 0, $01, $1 | OBP_NUM
	dsprite   0, 0,  -1, 0, $02, $1 | OBP_NUM
	dsprite   0, 0,   0, 0, $03, $1 | OBP_NUM
	dsprite   0, 0,   1, 0, $04, $1 | OBP_NUM
	dsprite   0, 0,   2, 0, $05, $1 | OBP_NUM

.OAMData_d7:
	dsprite   0, 0,  -3, 0, $00, $1 | OBP_NUM
	dsprite   1, 0,  -3, 0, $01, $1 | OBP_NUM
	dsprite   0, 0,  -2, 0, $02, $1 | OBP_NUM
	dsprite   1, 0,  -2, 0, $03, $1 | OBP_NUM
	dsprite   0, 0,  -1, 0, $04, $1 | OBP_NUM
	dsprite   1, 0,  -1, 0, $05, $1 | OBP_NUM
	dsprite   0, 0,   0, 0, $06, $1 | OBP_NUM
	dsprite   1, 0,   0, 0, $07, $1 | OBP_NUM
	dsprite   0, 0,   1, 0, $08, $1 | OBP_NUM
	dsprite   1, 0,   1, 0, $09, $1 | OBP_NUM
	dsprite   0, 0,   2, 0, $0a, $1 | OBP_NUM
	dsprite   1, 0,   2, 0, $0b, $1 | OBP_NUM

.OAMData_6e:
	dsprite  -2, 4,   0, 4, $00, $0
	dsprite  -1, 4,  -2, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $02, $0
	dsprite  -1, 4,   0, 4, $03, $0
	dsprite   0, 4,  -2, 4, $04, $0

.OAMData_6f:
	dsprite  -1, 4,  -2, 4, $00, $0
	dsprite  -1, 4,  -1, 4, $01, $0
	dsprite  -1, 4,   0, 4, $02, $0

.OAMData_77:
	dsprite  -4, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_78:
	dsprite  -4, 4,   1, 4, $00, $0
	dsprite  -4, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite  -3, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_79:
	dsprite  -4, 4,   1, 4, $01, $0
	dsprite  -4, 4,   0, 4, $00, $0
	dsprite  -4, 4,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite  -3, 4,   1, 4, $00, $0
	dsprite  -3, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite  -2, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_7a:
	dsprite  -4, 4,  -2, 4, $01, X_FLIP | Y_FLIP
	dsprite  -4, 4,  -1, 4, $00, $0
	dsprite  -4, 4,   0, 4, $01, $0
	dsprite  -3, 4,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite  -3, 4,   0, 4, $00, $0
	dsprite  -3, 4,   1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite  -2, 4,   1, 4, $00, $0
	dsprite  -1, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_7b:
	dsprite  -4, 4,  -3, 4, $01, X_FLIP | Y_FLIP
	dsprite  -4, 4,  -2, 4, $00, $0
	dsprite  -4, 4,  -1, 4, $01, $0
	dsprite  -3, 4,  -2, 4, $01, X_FLIP | Y_FLIP
	dsprite  -3, 4,  -1, 4, $00, $0
	dsprite  -3, 4,   0, 4, $01, $0
	dsprite  -2, 4,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite  -2, 4,   0, 4, $00, $0
	dsprite  -2, 4,   1, 4, $01, $0
	dsprite  -1, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite  -1, 4,   1, 4, $00, $0
	dsprite   0, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_7c:
	dsprite  -4, 4,  -3, 4, $00, $0
	dsprite  -4, 4,  -2, 4, $01, $0
	dsprite  -3, 4,  -3, 4, $01, X_FLIP | Y_FLIP
	dsprite  -3, 4,  -2, 4, $00, $0
	dsprite  -3, 4,  -1, 4, $01, $0
	dsprite  -2, 4,  -2, 4, $01, X_FLIP | Y_FLIP
	dsprite  -2, 4,  -1, 4, $00, $0
	dsprite  -2, 4,   0, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite  -1, 4,   0, 4, $00, $0
	dsprite  -1, 4,   1, 4, $01, $0
	dsprite   0, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite   0, 4,   1, 4, $00, $0
	dsprite   1, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_7d:
	dsprite  -4, 4,  -3, 4, $01, $0
	dsprite  -3, 4,  -3, 4, $00, $0
	dsprite  -3, 4,  -2, 4, $01, $0
	dsprite  -2, 4,  -3, 4, $01, X_FLIP | Y_FLIP
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -1, 4,  -2, 4, $01, X_FLIP | Y_FLIP
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite  -1, 4,   0, 4, $01, $0
	dsprite   0, 4,  -1, 4, $01, X_FLIP | Y_FLIP
	dsprite   0, 4,   0, 4, $00, $0
	dsprite   0, 4,   1, 4, $01, $0
	dsprite   1, 4,   0, 4, $01, X_FLIP | Y_FLIP
	dsprite   1, 4,   1, 4, $00, $0
	dsprite   2, 4,   1, 4, $01, X_FLIP | Y_FLIP

.OAMData_70:
	dsprite  -2, 0,  -1, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $01, $0
	dsprite  -2, 0,   0, 0, $00, X_FLIP
	dsprite  -1, 0,   0, 0, $01, X_FLIP
	dsprite   0, 0,  -1, 0, $01, Y_FLIP
	dsprite   1, 0,  -1, 0, $00, Y_FLIP
	dsprite   0, 0,   0, 0, $01, X_FLIP | Y_FLIP
	dsprite   1, 0,   0, 0, $00, X_FLIP | Y_FLIP

.OAMData_81:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $01, X_FLIP | Y_FLIP
	dsprite   0, 0,   0, 0, $00, X_FLIP | Y_FLIP

.OAMData_87:
	dsprite  -2, 4,  -1, 0, $00, $0
	dsprite  -2, 4,   0, 0, $01, $0
	dsprite  -1, 4,  -1, 0, $02, $0
	dsprite  -1, 4,   0, 0, $03, $0
	dsprite  -1, 4,  -1, 0, $00, $0
	dsprite  -1, 4,   0, 0, $01, $0
	dsprite   0, 4,  -1, 0, $02, $0
	dsprite   0, 4,   0, 0, $03, $0
	dsprite  -3, 4,  -1, 0, $00, $0
	dsprite  -3, 4,   0, 0, $01, $0
	dsprite  -2, 4,  -1, 0, $02, $0
	dsprite  -2, 4,   0, 0, $03, $0
	dsprite   0, 4,  -1, 0, $00, $0
	dsprite   0, 4,   0, 0, $01, $0
	dsprite   1, 4,  -1, 0, $02, $0
	dsprite   1, 4,   0, 0, $03, $0

.OAMData_88:
	dsprite  -2, 0,  -1, 0, $00, $0
	dsprite  -2, 0,   0, 0, $01, $0
	dsprite  -1, 0,  -1, 0, $02, $0
	dsprite  -1, 0,   0, 0, $03, $0
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, $0
	dsprite   0, 0,  -1, 0, $02, $0
	dsprite   0, 0,   0, 0, $03, $0
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   0, 0,   0, 0, $01, $0
	dsprite   1, 0,  -1, 0, $02, $0
	dsprite   1, 0,   0, 0, $03, $0

.OAMData_8a:
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite  -1, 0,   0, 4, $00, $0
	dsprite  -2, 4,   1, 4, $00, $0
	dsprite  -2, 0,   2, 4, $00, $0
	dsprite  -3, 4,   3, 4, $00, $0
	dsprite  -3, 0,   4, 4, $00, $0
	dsprite  -4, 0,   5, 4, $00, $0
	dsprite  -5, 4,   6, 4, $00, $0

.OAMData_8e:
	dsprite  -3, 4,  -1, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $02, $0
	dsprite   0, 4,  -1, 4, $01, Y_FLIP
	dsprite   1, 4,  -1, 4, $00, Y_FLIP

.OAMData_8f:
	dsprite  -1, 4,  -2, 0, $00, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $02, $0
	dsprite  -1, 4,   1, 0, $03, $0

.OAMData_93:
	dsprite  -1, 0,  -2, 4, $00, $0
	dsprite  -1, 0,  -1, 4, $01, $0
	dsprite  -1, 0,   0, 4, $02, $0
	dsprite   0, 0,  -2, 4, $03, $0
	dsprite   0, 0,  -1, 4, $04, $0
	dsprite   0, 0,   0, 4, $05, $0

.OAMData_99:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $05, $0
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $05, $0

.OAMData_9b:
	dsprite  -4, 4,   1, 0, $00, $0
	dsprite  -4, 4,   2, 0, $01, $0
	dsprite  -3, 4,  -1, 0, $02, $0
	dsprite  -3, 4,   0, 0, $03, $0
	dsprite  -3, 4,   1, 0, $04, $0
	dsprite  -3, 4,   2, 0, $05, $0
	dsprite  -3, 4,   3, 0, $06, $0
	dsprite  -2, 4,  -2, 0, $07, $0
	dsprite  -2, 4,  -1, 0, $08, $0
	dsprite  -2, 4,   0, 0, $09, $0
	dsprite  -2, 4,   1, 0, $0a, $0
	dsprite  -2, 4,   2, 0, $0b, $0
	dsprite  -2, 4,   3, 0, $0c, $0
	dsprite  -2, 4,   4, 0, $0d, $0
	dsprite  -1, 4,  -3, 0, $0e, $0
	dsprite  -1, 4,  -2, 0, $0f, $0
	dsprite  -1, 4,  -1, 0, $10, $0
	dsprite  -1, 4,   0, 0, $11, $0
	dsprite  -1, 4,   1, 0, $12, $0
	dsprite  -1, 4,   2, 0, $13, $0
	dsprite   0, 4,  -5, 0, $14, $0
	dsprite   0, 4,  -4, 0, $15, $0
	dsprite   0, 4,  -3, 0, $16, $0
	dsprite   0, 4,  -2, 0, $17, $0
	dsprite   0, 4,  -1, 0, $18, $0
	dsprite   0, 4,   0, 0, $19, $0
	dsprite   0, 4,   1, 0, $1a, $0
	dsprite   0, 4,   2, 0, $1b, $0
	dsprite   0, 4,   3, 0, $1c, $0
	dsprite   1, 4,  -5, 0, $1d, $0
	dsprite   1, 4,  -4, 0, $1e, $0
	dsprite   1, 4,  -2, 0, $1f, $0
	dsprite   1, 4,  -1, 0, $20, $0
	dsprite   1, 4,   0, 0, $21, $0
	dsprite   1, 4,   1, 0, $22, $0
	dsprite   2, 4,   0, 0, $23, $0

.OAMData_9c:
	dsprite   0, 4,  -1, 0, $02, $0
	dsprite   0, 4,   0, 0, $03, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, X_FLIP
	dsprite  -2, 4,  -1, 0, $00, $0
	dsprite  -2, 4,   0, 0, $00, X_FLIP

.OAMData_9f:
	dsprite  -1, 0,  -2, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $01, $0
	dsprite  -1, 0,   0, 0, $02, $0
	dsprite  -1, 0,   1, 0, $03, $0
	dsprite   0, 0,  -2, 0, $04, $0
	dsprite   0, 0,  -1, 0, $05, $0
	dsprite   0, 0,   0, 0, $06, $0
	dsprite   0, 0,   1, 0, $07, $0

.OAMData_a0:
	dsprite  -2, 4,  -1, 4, $00, $0
	dsprite  -1, 4,  -1, 4, $00, $0
	dsprite   0, 4,  -1, 4, $00, $0
	dsprite  -3, 4,  -1, 4, $00, $0
	dsprite   1, 4,  -1, 4, $00, $0
	dsprite  -4, 4,  -1, 4, $00, $0
	dsprite   2, 4,  -1, 4, $00, $0

.OAMData_a4:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $01, $0
	dsprite  -2, 4,   0, 4, $02, $0
	dsprite  -1, 4,  -2, 4, $03, $0
	dsprite  -1, 4,  -1, 4, $04, $0
	dsprite  -1, 4,   0, 4, $05, $0
	dsprite   0, 4,  -2, 4, $00, Y_FLIP
	dsprite   0, 4,  -1, 4, $01, Y_FLIP
	dsprite   0, 4,   0, 4, $02, Y_FLIP

.OAMData_ac:
	dsprite  -1, 4,  -2, 0, $00, $0
	dsprite  -1, 4,  -1, 0, $01, $0
	dsprite  -1, 4,   0, 0, $01, X_FLIP
	dsprite  -1, 4,   1, 0, $00, X_FLIP

.OAMData_bc:
	dsprite  -1, 4,  -3, 0, $00, $0
	dsprite  -1, 4,  -2, 0, $01, $0
	dsprite  -1, 4,  -1, 0, $02, $0
	dsprite  -1, 4,   0, 0, $02, X_FLIP
	dsprite  -1, 4,   1, 0, $01, X_FLIP
	dsprite  -1, 4,   2, 0, $00, X_FLIP

.OAMData_c1:
	dsprite  -2, 0,  -2, 0, $00, $0
	dsprite  -2, 0,  -1, 0, $01, $0
	dsprite  -2, 0,   0, 0, $02, $0
	dsprite  -2, 0,   1, 0, $00, X_FLIP
	dsprite  -1, 0,  -2, 0, $03, $0
	dsprite  -1, 0,  -1, 0, $04, $0
	dsprite  -1, 0,   0, 0, $04, X_FLIP
	dsprite  -1, 0,   1, 0, $05, $0
	dsprite   0, 0,  -2, 0, $05, X_FLIP | Y_FLIP
	dsprite   0, 0,  -1, 0, $04, Y_FLIP
	dsprite   0, 0,   0, 0, $04, X_FLIP | Y_FLIP
	dsprite   0, 0,   1, 0, $03, X_FLIP | Y_FLIP
	dsprite   1, 0,  -2, 0, $00, Y_FLIP
	dsprite   1, 0,  -1, 0, $02, X_FLIP | Y_FLIP
	dsprite   1, 0,   0, 0, $01, X_FLIP | Y_FLIP
	dsprite   1, 0,   1, 0, $00, X_FLIP | Y_FLIP

.OAMData_c2:
	dsprite  -1, 0,  -2, 0, $00, $0
	dsprite  -1, 0,  -1, 0, $01, $0
	dsprite  -1, 0,   0, 0, $00, X_FLIP | Y_FLIP
	dsprite   0, 0,  -1, 0, $00, $0
	dsprite   0, 0,   0, 0, $01, $0
	dsprite   0, 0,   1, 0, $00, X_FLIP | Y_FLIP

.OAMData_c8:
	dsprite  -1, 0,   1, 4, $00, $0
	dsprite  -1, 0,   2, 4, $01, $0
	dsprite   0, 0,  -1, 4, $02, $0
	dsprite   0, 0,   0, 4, $03, $0
	dsprite   0, 0,   1, 4, $04, $0
	dsprite   0, 0,   2, 4, $05, $0

.OAMData_ca:
	dsprite  -1, 0,  -1, 0, $00, $0
	dsprite  -1, 0,   0, 0, $01, X_FLIP | Y_FLIP
	dsprite   0, 0,  -1, 0, $01, $0
	dsprite   0, 0,   0, 0, $01, X_FLIP

.OAMData_cc:
	dsprite  -2, 0, -13, 4, $00, $0
	dsprite  -4, 0, -11, 4, $00, $0
	dsprite  -1, 0,  -9, 4, $00, $0
	dsprite  -5, 0,  -7, 4, $00, $0
	dsprite  -3, 0,  -5, 4, $00, $0
	dsprite  -5, 0,  -3, 4, $00, $0
	dsprite  -3, 0,  -1, 4, $00, $0
	dsprite  -3, 0,   0, 4, $00, $0
	dsprite  -5, 0,   2, 4, $00, $0
	dsprite   0, 0,   4, 4, $00, $0
	dsprite  -2, 0,   6, 4, $00, $0
	dsprite  -4, 0,   8, 4, $00, $0
	dsprite  -2, 0,  10, 4, $00, $0

.OAMData_d9:
	dsprite  -1, 0,  -1, 4, $00, Y_FLIP
