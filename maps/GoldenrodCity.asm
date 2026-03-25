	object_const_def ; object_event constants
  const MARIGOLDCITY_GENTLEMAN
  const MARIGOLDCITY_HARRY
  const MARIGOLDCITY_MARV

GoldenrodCity_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Marigold_Gentleman:
  jumptextfaceplayer .Txt
.Txt:
       ;xxxxxxxxxxxxxxxxxx
  text "I saw a man walk"
  line "nearby with a"
  para "mysterious black"
  line "coat..."
  para "But wait, he"
  line "couldn't be"
  cont "GIOVANNI, right?"
  done

Marigold_Harry:
  scall Marigold_HarryMarv_CommonIntro
  scall Marigold_HarryMarv_HeyKid
  scall Marigold_HarryMarv_CouldBeTrouble

  applymovement MARIGOLDCITY_MARV, .MarvToPlayer
	turnobject MARIGOLDCITY_MARV, LEFT
  turnobject MARIGOLDCITY_HARRY, DOWN
	turnobject PLAYER, RIGHT
  scall Marigold_HarryMarv_StartMarvBattle

	turnobject PLAYER, UP
  scall Marigold_HarryMarv_StartHarryBattle

  scall Marigold_HarryMarv_Defeated
  turnobject PLAYER, RIGHT
  scall Marigold_HarryMarv_Defeated_Marv
  turnobject PLAYER, UP
  scall Marigold_HarryMarv_Defeated_3
  applymovement MARIGOLDCITY_MARV, .MarvAway
  applymovement MARIGOLDCITY_HARRY, .HarryAway
  disappear MARIGOLDCITY_MARV
  disappear MARIGOLDCITY_HARRY
  setevent EVENT_BEAT_HARRY_AND_MARV
  end

.HarryAway:
  step RIGHT
  step DOWN
.MarvAway:
  step DOWN
  step DOWN
  step DOWN
  step DOWN
  step DOWN
  step DOWN
  step_end

.MarvToPlayer:
  step DOWN
  step_end

Marigold_Marv:
  scall Marigold_HarryMarv_CommonIntro
  scall Marigold_HarryMarv_HeyKid
  scall Marigold_HarryMarv_CouldBeTrouble
	turnobject MARIGOLDCITY_MARV, DOWN
  turnobject MARIGOLDCITY_HARRY, DOWN
  scall Marigold_HarryMarv_StartMarvBattle

  applymovement MARIGOLDCITY_HARRY, .HarryToPlayer
	turnobject MARIGOLDCITY_MARV, DOWN
  turnobject MARIGOLDCITY_HARRY, RIGHT
	turnobject PLAYER, LEFT
  scall Marigold_HarryMarv_StartHarryBattle

  scall Marigold_HarryMarv_Defeated
  turnobject PLAYER, UP
  scall Marigold_HarryMarv_Defeated_Marv
  turnobject PLAYER, LEFT
  scall Marigold_HarryMarv_Defeated_3
  applymovement MARIGOLDCITY_HARRY, .HarryAway
  applymovement MARIGOLDCITY_MARV, .MarvAway
  disappear MARIGOLDCITY_MARV
  disappear MARIGOLDCITY_HARRY
  setevent EVENT_BEAT_HARRY_AND_MARV
  end

.MarvAway:
  step LEFT
  step DOWN
.HarryAway:
  step DOWN
  step DOWN
  step DOWN
  step DOWN
  step DOWN
  step DOWN
  step_end

.HarryToPlayer:
  step DOWN
  step_end

Marigold_HarryMarv_CommonIntro:
  opentext
  writetext .Harry1
  checktime NITE
  iftrue .NiteDialog
  writetext .Harry2_Day
  sjump .HarryIntroAfter
.NiteDialog
  writetext .Harry2_Nite
.HarryIntroAfter
  waitbutton
  closetext
  opentext
  writetext .Marv1
  waitbutton
  closetext
  end

.Harry1:
  text "I'm telling you,"
  line "this isn't going"
  cont "to work."
  prompt
  done

.Harry2_Nite:
  text "This place is"
  line "crawling with"
  cont "cops!"
  para "Even if they're"
  line "looking for the"
  para "ROCKETS, you think"
  line "they'll like"
  para "getting a call"
  line "about two bozos"
  para "busting into a re-"
  line "sidential home?"
  done

.Harry2_Day:
  text "None of these"
  line "houses are empty"
  para "and there's people"
  line "on the streets!"
  para "How are we sup-"
  line "posed to commit a"
  para "crime with"
  line "witnesses crawling"
  cont "around?"
  done

.Marv1:
  text "Yeah, but I'm"
  line "saying all this"
  para "place has is a"
  line "YOUNGSTER playing"
  cont "his NINTENDO."
  para "We can be in and"
  line "out."
  done

Marigold_HarryMarv_HeyKid:
  jumptextfaceplayer .Txt
.Txt:
  text "Oh, hey kid."
  para "We're just"
  line "plotting a home"
  cont "robbery."
  done


Marigold_HarryMarv_CouldBeTrouble:
	turnobject MARIGOLDCITY_HARRY, RIGHT
	turnobject MARIGOLDCITY_MARV, LEFT
	showemote EMOTE_SHOCK, MARIGOLDCITY_HARRY, 15
  opentext
  writetext .Harry3
  waitbutton
  closetext
  end

.Harry3:
  text "This kid could be"
  line "trouble."
  para "They look like one"
  line "of those 'good"
  cont "samaritans'."
  done


Marigold_HarryMarv_StartMarvBattle:
  opentext
  writetext .Marv2
  waitbutton
  closetext
	winlosstext .MarvWinTxt, 0
	setlasttalked MARIGOLDCITY_MARV
	loadtrainer TC_BURGLAR, BURGLAR_MARV_1
	startbattle
	reloadmapafterbattle
  end

.Marv2:
  text "I'll give the"
  line "little twerp a run"
  cont "for their money!"
  done

.MarvWinTxt:
  text "Gah!"
  para "This is why I hate"
  line "kids."
  done

Marigold_HarryMarv_StartHarryBattle:
  opentext
  writetext .Harry4
  waitbutton
  closetext
	winlosstext .HarryWinTxt, 0
	setlasttalked MARIGOLDCITY_HARRY
	loadtrainer TC_BURGLAR, BURGLAR_HARRY_1
	startbattle
	reloadmapafterbattle
  end

.Harry4:
  text "Alright, that's it!"
  para "I don't care who"
  line "you are."
  para "I'm not going to"
  line "have some snot-"
  para "nosed brat make a"
  line "fool outta me"
  para "before I've even"
  line "done a job!"
  done

.HarryWinTxt:
  text "This is a little"
  line "unfair."
  done

Marigold_HarryMarv_Defeated:
  opentext
  writetext .Harry5
  waitbutton
  closetext
  end

.Harry5:
  text "You know what?"
  line "Fine."
  para "We won't commit any"
  line "fun crimes today."
  cont "We'll just go home."
  para "Come on, Marv."
  done

Marigold_HarryMarv_Defeated_Marv:
  opentext
  writetext .Marv3
  waitbutton
  closetext
  end

.Marv3:
  text "You sure know how"
  line "to ruin someone's"
  cont "day, kid."
  para "Mark my words, the"
  line "SOGGY ROBBERS will"
  para "return for"
  line "revenge…"
  done

Marigold_HarryMarv_Defeated_3:
  opentext
  writetext .Harry6
  waitbutton
  closetext
  end

.Harry6:
  text "…I told you, we're"
  line "not calling our-"
  cont "selves that."
  para "Now let's get outta"
  line "here, I don't wanna"
  para "see that kid's smug"
  line "face ever again if"
  cont "we can help it."
  done
  

  


GoldenrodCity_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 19,  33, GOLDENROD_R34_GATE, 1
	warp_event 20,  33, GOLDENROD_R34_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 17, 30, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Marigold_Gentleman, -1
	object_event 26, 26, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Marigold_Harry, EVENT_BEAT_HARRY_AND_MARV
	object_event 27, 26, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Marigold_Marv, EVENT_BEAT_HARRY_AND_MARV
