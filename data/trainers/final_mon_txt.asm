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
	dbw CHUCK,   .ChuckText
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
	text "The storm isn't"
	line "quite over yet,"
	cont "young one."
	prompt

.JasmineText:
	text "With an iron will,"
	line "we can seize"
	para "victory at any"
	line "cost."
	para "Um<...>"
	para "What gives you"
	line "your strength?"
	prompt

.ChuckText:
	text "Alright!"
	para "Looks like I'm"
	line "going to have to"
	para "bust out the big"
	line "guns!"
	prompt

.ClairText:
	text "A valiant effort,"
	line "but I'm afraid this"
	cont "ends here."
	prompt

.KarenText:
	; karen should maybe have per-roster txt's
	; so this probably isn't needed...

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
