	object_const_def ; object_event constants
	const VIOLETGYM_WHITNEY
	const VIOLETGYM_LASS1
	const VIOLETGYM_LASS2
	const VIOLETGYM_BUENA1
	const VIOLETGYM_BUENA2
	const VIOLETGYM_GYM_GUY

VioletGym_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_VIOLETGYM_NOTHING
	scene_script .DummyScene1 ; SCENE_VIOLETGYM_WHITNEY_STOPS_CRYING

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

VioletGymWhitneyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setscene SCENE_VIOLETGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	opentext
	writetext WhitneyYouMeanieText 
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	buttonsound
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	buttonsound
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	writetext WhitneyAttractText
	waitbutton
	closetext
	end

.GotAttract:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoomForAttract:
	closetext
	end

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	closetext
	end

WhitneyCriesScript:
	showemote EMOTE_SHOCK, VIOLETGYM_LASS2, 15
	applymovement VIOLETGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement VIOLETGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_VIOLETGYM_NOTHING
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	closetext
	end

TrainerLassHelen:
	trainer LASS, HELEN, EVENT_BEAT_BEAUTY_VICTORIA, LassHelenSeenText, LassHelenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassHelenAfterBattleText
	waitbutton
	closetext
	end

TrainerFledglingTerry:
	trainer FLEDGLING, TERRY, EVENT_BEAT_BEAUTY_SAMANTHA, FledglingTerrySeenText, FledglingTerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FledglingTerryAfterBattleText
	waitbutton
	closetext
	end

VioletGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .VioletGymGuyWinScript
	opentext
	writetext VioletGymGuyText
	waitbutton
	closetext
	end

.VioletGymGuyWinScript:
	opentext
	writetext VioletGymGuyWinText
	waitbutton
	closetext
	end

VioletGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd gymstatue2

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

WhitneyBeforeText:
	text "Yo! Name's" 
	line "WHITNEY, the"
	cont "VIOLET CITY GYM"
	
	para "LEADER! I'm the"
	line "roughest, tough-"
	cont "girl on this side"
	
	para "of JOHTO! I've"
	line "even gone toe-to-"
	cont "toe with wild"
	
	para "RATICATE before"
	line "and won! But, I"
	cont "do have a weak"
	
	para "spot, and that"
	line "weak spot is cute"
	cont "#MON!"
	
	para "But hey, enough"
	line "about me! Let's"
	cont "rumble!"
	done

WhitneyShouldntBeSoSeriousText:
	text "Sob…"

	para "…Waaaaaaah!"
	line "You're mean!"

	para "You shouldn't be"
	line "so serious! You…"
	cont "you child, you!"
	done

WhitneyYouMeanieText:
	text "Waaaaah!"

	para "Waaaaah!"

	para "…Snivel, hic…"
	line "…You meanie!"
	done

WhitneyWhatDoYouWantText:
	text "…Sniff…"

	para "What? What do you"
	line "want? A BADGE?"

	para "Oh, right."
	line "I forgot. Here's"
	cont "PLAINBADGE."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> received"
	line "PLAINBADGE."
	done

WhitneyPlainBadgeText:
	text "PLAINBADGE lets"
	line "your #MON use"

	para "STRENGTH outside"
	line "of battle."

	para "It also boosts"
	line "your #MON's"
	cont "SPEED."

	para "Oh, you can have"
	line "this too!"
	done

WhitneyAttractText:
	text "It's ATTRACT!"
	line "It makes full use"

	para "of a #MON's"
	line "charm."

	para "Isn't it just per-"
	line "fect for a cutie"
	cont "like me?"
	done

WhitneyGoodCryText:
	text "Ah, that was a"
	line "good cry!"

	para "Come for a visit"
	line "again! Bye-bye!"
	done

LassCarrieSeenText:
	text "Don't let my"
	line "#MON's cute"

	para "looks fool you."
	line "They can whip you!"
	done

LassCarrieBeatenText:
	text "Darn… I thought"
	line "you were weak…"
	done

LassCarrieAfterBattleText:
	text "Do my #MON"
	line "think I'm cute?"
	done

LassBridgetSeenText:
	text "I like cute #-"
	line "MON better than"
	cont "strong #MON."

	para "But I have strong"
	line "and cute #MON!"
	done

LassBridgetBeatenText:
	text "Oh, no, no, no!"
	done

LassBridgetAfterBattleText:
	text "I'm trying to beat"
	line "WHITNEY, but…"
	cont "It's depressing."

	para "I'm okay! If I"
	line "lose, I'll just"

	para "try harder next"
	line "time!"
	done

BridgetWhitneyCriesText:
	text "Oh, no. You made"
	line "WHITNEY cry."

	para "It's OK. She'll"
	line "stop soon. She"

	para "always cries when"
	line "she loses."
	done

LassHelenSeenText:
	text "Woah! You're cute!"
	line "We should go out!"
	done

LassHelenBeatenText:
	text "Cute AND strong!"
	done

LassHelenAfterBattleText:
	text "C'mon, let's hang"
	line "out! What?! Am I"
	cont "not cute enough"
	
	para "for you?!"
	done

FledglingTerrySeenText:
	text "I just think"
	line "normal-types are"
	cont "neat."
	done

FledglingTerryBeatenText:
	text "You're not neat…"
	done

FledglingTerryAfterBattleText:
	text "Go away…"
	done

VioletGymGuyText:
	text "Yo! CHAMP in"
	line "making!"

	para "This GYM is home"
	line "to normal-type"
	cont "#MON trainers."

	para "I recommend you"
	line "use fighting-type"
	cont "#MON."
	done

VioletGymGuyWinText:
	text "You won? Great! I"
	line "was busy admiring"
	cont "the ladies here."
	done

VioletGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 17, VIOLET_CITY, 2
	warp_event  3, 17, VIOLET_CITY, 2

	db 1 ; coord events
	coord_event  8,  5, SCENE_VIOLETGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	db 2 ; bg events
	bg_event  1, 15, BGEVENT_READ, VioletGymStatue
	bg_event  4, 15, BGEVENT_READ, VioletGymStatue

	db 6 ; object events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymWhitneyScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassHelen, -1
	object_event 19,  5, SPRITE_FLEDGLING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFledglingTerry, -1
	object_event  5, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymGuyScript, -1
