FinalMonTexts::
; format:
; TRAINER_CLASS_ID, TEXT_POINTER

; gym leaders
	dbw FALKNER, .FalknerText
	dbw WHITNEY, .WhitneyText
	dbw BUGSY,   .BugsyText
	dbw MORTY,   .MortyText
	dbw PRYCE,   .PryceText
	dbw JASMINE, .JasmineText
	dbw CHUCK,   .ChuckText ; formerly .SneedText
	dbw CLAIR,   .ClairText

; execs
	dbw KAREN, .KarenText
	;dbw GIOVANNI, .GiovanniText

; e4
	;dbw LORELEI,  .LoreleiText
	dbw BRUNO,    .BrunoText
	;dbw AGATHA,   .AgathaText
	dbw KOGA,     .KogaText
	dbw CHAMPION, .LanceText

	db -1 ; end of list

.FalknerText:
.WhitneyText:
.BugsyText:
.MortyText:
.PryceText:
.JasmineText:
.ChuckText:
.ClairText:
.KarenText:
.GiovanniText:
.LoreleiText:
.BrunoText:
.AgathaText:
.KogaText:
.LanceText:
	text "Last one?"
	para "Already?"
	para "Gimme a break!"
	prompt
