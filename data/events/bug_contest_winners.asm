BugContestantPointers:
; there are NUM_BUG_CONTESTANTS + 1 entries
	dw BugContestant_YoungsterMax ; this reverts back to the player
	dw BugContestant_YoungsterMax
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
;	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel

; contestant format:
;   db class, id
;   dw 1st-place mon, score
;   dw 2nd-place mon, score
;   dw 3rd-place mon, score

BugContestant_YoungsterMax:
	db YOUNGSTER,  MAX
	dw KAKUNA,     300
	dw METAPOD,    285
	dw CATERPIE,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dw BUTTERFREE, 286
	dw BUTTERFREE, 251
	dw CATERPIE,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dw SCYTHER,    357
	dw BUTTERFREE, 349
	dw PINSIR,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dw PINSIR,     332
	dw BUTTERFREE, 324
	dw VENONAT,    321

; BugContestant_BugCatcherBenny:
; 	db BUG_CATCHER, BUG_CATCHER_BENNY
; 	dw BUTTERFREE, 318
; 	dw WEEDLE,     295
; 	dw CATERPIE,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dw PINSIR,     366
	dw VENONAT,    329
	dw KAKUNA,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dw BUTTERFREE, 341
	dw METAPOD,    301
	dw CATERPIE,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dw SCYTHER,    326
	dw BUTTERFREE, 292
	dw METAPOD,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dw WEEDLE,     270
	dw PINSIR,     282
	dw CATERPIE,   251
