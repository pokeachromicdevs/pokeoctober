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
	text "Nothing makes my"
	line "spirits soar like"
	para "the turbulence of"
	line "battle!"
	para "Bring it!"
	prompt

.WhitneyText:
	text "H-hey, why aren't"
	line "you goin' easy on"
	cont "a cutie like me?"
	para "I'll just have to"
	line "show you how"
	cont "tough we are!"
	prompt

.BugsyText:
	text "My swarm is down"
	line "to one?"
	para "You're not bad,"
	line "but we're better!"
	prompt

.MortyText:
	text "I refuse to let"
	line "this be our limit!"
	para "It's not over yet!"
	prompt

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
; XXX THIS IS PLACEHOLDER TEXT XXX
	text "Last one?"
	para "Already?"
	para "Gimme a break!"
	prompt
