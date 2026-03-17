NUM_PHONE_CONTACTS = 0
phone: MACRO
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
NUM_PHONE_CONTACTS = NUM_PHONE_CONTACTS + 1
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	phone TRAINER_NONE, PHONE_00, N_A, 0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM, PLAYERS_HOUSE_1F, ANYTIME, MomPhoneCalleeScript, 0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, OAKS_LAB, 0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL, N_A, ANYTIME, BillPhoneCalleeScript, 0, BillPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_ELM, ELMS_LAB, ANYTIME, ElmPhoneCalleeScript, 0, ElmPhoneCallerScript
	phone TRAINER_NONE, PHONE_00, N_A, 0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00, N_A, 0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TRAINER_NONE, PHONE_00, N_A, 0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TC_YOUNGSTER, YOUNGSTER_JOEY_1, ROUTE_29, ANYTIME, JoeyPhoneCalleeScript, ANYTIME, JoeyPhoneCallerScript
	phone TC_JUGGLER, JUGGLER_IRWIN_1, ROUTE_35, ANYTIME, IrwinPhoneCalleeScript, ANYTIME, IrwinPhoneCallerScript
	phone TRAINER_NONE, PHONE_00, N_A, 0, UnusedPhoneScript, 0, UnusedPhoneScript
	phone TC_LASSNIENIE, LASSNIENIE_NIECHELLE_1, ROUTE_46, ANYTIME, NiechellePhoneCalleeScript, ANYTIME, NiechellePhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_BUENA, GOLDENROD_DEPT_STORE_ROOF, ANYTIME, BuenaPhoneCalleeScript, ANYTIME, BuenaPhoneCallerScript
