; Pokémon HG/SS - Encounter! Lyra (Departure)
; Demixed by Mmmmmm
; https://pastebin.com/0PPUz32D
; https://hax.iimarckus.org/topic/6777/3/

Music_AfterTheRivalFight:
	musicheader 4, 1, Music_AfterTheRivalFight_Ch1
	musicheader 1, 2, Music_AfterTheRivalFight_Ch2
	musicheader 1, 3, Music_AfterTheRivalFight_Ch3
	musicheader 1, 4, Music_AfterTheRivalFight_Ch4

Music_AfterTheRivalFight_Ch1:
	tempo 184
	dutycycle 1
	notetype $c, $85
	note __, 4
	loopchannel 0, Music_LookRival_Ch1_loop

Music_AfterTheRivalFight_Ch2:
	dutycycle 2
	notetype $c, $b4
	note __, 4
	loopchannel 0, Music_LookRival_Ch2_loop

Music_AfterTheRivalFight_Ch3:
	notetype $c, $15
	intensity $10
	note __, 4
	loopchannel 0, Music_LookRival_Ch3_loop

Music_AfterTheRivalFight_Ch4:
	togglenoise $3
	notetype $6
	note C_, 2
	note C_, 2
	note D#, 4
	loopchannel 0, Music_LookRival_Ch4_loop