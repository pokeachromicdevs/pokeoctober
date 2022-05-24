; remixed by zumi in 2022
; from hg/ss

Music_Pokemart:
	channel_count 4
	channel 1, Music_Pokemart_Ch1
	channel 2, Music_Pokemart_Ch2
	channel 3, Music_Pokemart_Ch3
	channel 4, Music_Pokemart_Ch4

; Drum constants, replace with the proper values
DRUM_POKEMART_09	EQU	3 ; noise
DRUM_POKEMART_0a	EQU	4 ;
DRUM_POKEMART_0b	EQU	7 ;
DRUM_POKEMART_0d	EQU	8 ; hat
DRUM_POKEMART_0f	EQU	4 ; 

; Drumset to use, replace with the proper value
DRUMSET_POKEMART	EQU	3

; idk
VOLGAIN_POKEMART EQU 2

Music_Pokemart_Ch1:
	tempo 69
	volume 7, 7
	note_type 12, 15, 0
	vibrato 10, 1, 4
	sound_call .pattern1
.loop
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern5
	sound_call .pattern12
	sound_call .pattern13
	sound_call .pattern6
	sound_call .pattern7
	sound_call .pattern8
	sound_call .pattern9
	sound_call .pattern8
	sound_call .pattern10
	sound_call .pattern11
	sound_call .pattern0
	sound_loop 0, .loop
	sound_ret

.pattern0
	note_type 12, 11+VOLGAIN_POKEMART, 1
	octave 4
	note A#, 4
	note C#, 4
	note F#, 4
	note A#, 8
	note F#, 4
	note G#, 4
	note A#, 4
	duty_cycle 3
	note_type 12, 8+VOLGAIN_POKEMART, 2
	note E_, 4
	note E_, 8
	note_type 12, 8+VOLGAIN_POKEMART, 4
	note C#, 16
	rest 4
	sound_ret

.pattern1
	pitch_offset 1
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 12, 8+VOLGAIN_POKEMART, 2
	octave 4
	note C#, 8
	note C#, 8
	note C_, 4
	note C_, 8
	octave 3
	note B_, 12
	note_type 12, 8+VOLGAIN_POKEMART, 5
	note A#, 10
	rest 14
	sound_ret

.pattern2
	duty_cycle 0
	stereo_panning TRUE, FALSE
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 1
	note B_, 4
	octave 2
	note F#, 4
	note A#, 4
	octave 3
	note C#, 8
	octave 2
	note B_, 8
	note A#, 4
	octave 1
	note B_, 4
	octave 2
	note F#, 4
	note B_, 4
	octave 3
	note D#, 8
	octave 2
	note F#, 4
	note B_, 4
	octave 3
	note D#, 4
	sound_ret

.pattern3
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 1
	note B_, 4
	octave 2
	note A_, 4
	note B_, 4
	octave 3
	note D#, 8
	octave 2
	note B_, 8
	note A#, 4
	octave 1
	note B_, 4
	octave 2
	note B_, 4
	octave 3
	note D#, 4
	note F#, 8
	note E_, 4
	note D#, 4
	octave 2
	note B_, 4
	sound_ret

.pattern4
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 2
	note E_, 4
	note B_, 4
	octave 3
	note D#, 4
	note G#, 8
	octave 2
	note G#, 4
	octave 3
	note C#, 4
	note E_, 4
	octave 2
	note F_, 4
	note G#, 4
	note B_, 4
	octave 3
	note D_, 8
	octave 2
	note G_, 4
	note B_, 4
	octave 3
	note F_, 4
	sound_ret

.pattern5
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 1
	note F#, 4
	octave 2
	note F#, 4
	note A#, 4
	octave 3
	note D#, 4
	note F#, 4
	note F_, 4
	note F#, 4
	note G#, 4
	note A#, 16
	rest 16
	sound_ret

.pattern6
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 3
	note B_, 8
	note B_, 4
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note E_, 8
	note B_, 8
	note E_, 8
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 2
	note F#, 4
	octave 3
	note C#, 4
	note F_, 8
	note D_, 8
	note G#, 4
	sound_ret

.pattern7
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 3
	note B_, 8
	note_type 12, 10+VOLGAIN_POKEMART, 2
	note F#, 4
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note F#, 4
	note F_, 4
	note F#, 4
	note G#, 4
	note A#, 8
	duty_cycle 0
	note_type 12, 11, 1
	stereo_panning TRUE, TRUE
	note A#, 2
	note C#, 2
	note F#, 2
	note A#, 2
	note B_, 2
	note C#, 2
	note F#, 2
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note F#, 2
	note B_, 2
	octave 4
	note C#, 2
	sound_ret

.pattern8
	note_type 12, 11, 1
	octave 4
	note D#, 4
	note G_, 4
	note A#, 4
	octave 5
	note D#, 8
	octave 4
	note G_, 4
	note A#, 4
	octave 5
	note D#, 4
	note C#, 4
	octave 4
	note G_, 4
	note A#, 4
	octave 5
	note D#, 8
	octave 4
	note G_, 4
	note G#, 4
	note A#, 4
	sound_ret

.pattern9
	;note_type 12, 11+VOLGAIN_POKEMART, 1
	octave 3
	note G#, 4
	octave 4
	note G#, 4
	note B_, 4
	octave 5
	note D#, 4
	octave 3
	note G#, 4
	octave 4
	note G_, 4
	note B_, 4
	octave 5
	note D#, 4
	octave 3
	note F#, 4
	octave 4
	note F#, 4
	note A#, 4
	octave 5
	note D#, 4
	octave 3
	note F_, 4
	octave 5
	note E_, 4
	note D#, 4
	octave 4
	note B_, 4
	sound_ret

.pattern10
	;note_type 12, 11+VOLGAIN_POKEMART, 1
	octave 3
	note G#, 4
	octave 4
	note G#, 4
	note B_, 4
	octave 5
	note D#, 4
	octave 3
	note G#, 4
	octave 4
	note G_, 4
	note B_, 4
	octave 5
	note D#, 4
	octave 3
	note F#, 4
	octave 4
	note F#, 4
	note A#, 4
	octave 5
	note D#, 4
	octave 3
	note F_, 4
	octave 5
	note E_, 4
	octave 4
	note B_, 4
	octave 5
	note D#, 4
	sound_ret

.pattern11
	;note_type 12, 11+VOLGAIN_POKEMART, 1
	octave 4
	note E_, 4
	note G#, 4
	note B_, 4
	octave 5
	note E_, 8
	octave 4
	note E_, 4
	note G#, 4
	octave 5
	note D#, 4
	note D_, 4
	octave 4
	note G#, 4
	note B_, 4
	octave 5
	note D_, 8
	octave 4
	note F_, 4
	note G#, 4
	note B_, 4
	sound_ret

.pattern12
	duty_cycle 3
	stereo_panning FALSE, TRUE
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 3
	note A#, 8
	note B_, 4
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note D#, 8
	note F#, 8
	note_type 12, 10+VOLGAIN_POKEMART, 2
	note D#, 2
	note F#, 2
	note B_, 4
	note F#, 4
	note B_, 4
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 4
	note C#, 8
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	note D#, 4
	sound_ret

.pattern13
	note_type 12, 10+VOLGAIN_POKEMART, 2
	octave 3
	note A_, 8
	note B_, 4
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note D#, 8
	note F#, 8
	note_type 12, 10+VOLGAIN_POKEMART, 2
	note D#, 2
	note F#, 2
	note A_, 4
	note D#, 4
	note F#, 4
	note B_, 8
	note A_, 8
	note F#, 2
	note A_, 2
	sound_ret

Music_Pokemart_Ch2:
	note_type 12, 15, 0
	vibrato 16, 2, 5
	sound_call .pattern1
.loop
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern5
	sound_call .pattern6
	sound_call .pattern7
	sound_call .pattern9
	sound_call .pattern8
	sound_call .pattern10
	sound_call .pattern11
	sound_call .pattern12
	sound_call .pattern11
	sound_call .pattern13
	sound_call .pattern14
	sound_loop 0, .loop
	sound_ret

.pattern1
	duty_cycle 3
	stereo_panning FALSE, TRUE
	note_type 12, 10+VOLGAIN_POKEMART, 1
	octave 4
	note F#, 8
	note F#, 8
	note F#, 4
	note F#, 8
	note F#, 12
	note_type 12, 10+VOLGAIN_POKEMART, 4
	note F#, 10
	rest 2
	stereo_panning TRUE, TRUE
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 3
	note F#, 4
	note_type 12, 10+VOLGAIN_POKEMART, 1
	note G#, 4
	note A#, 4
	sound_ret

.pattern2
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 4
	note C#, 6
	octave 3
	note F#, 2
	octave 4
	note D#, 2
	rest 2
	note_type 12, 10+VOLGAIN_POKEMART, 4
	octave 3
	note B_, 16
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 4
	note D_, 2
	rest 2
	note D#, 2
	rest 2
	note_type 12, 10+VOLGAIN_POKEMART, 4
	note E_, 12
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note D#, 2
	note E_, 2
	note F#, 2
	rest 2
	sound_ret

.pattern3
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 4
	note C#, 6
	octave 3
	note F#, 2
	octave 4
	note D#, 2
	rest 2
	note_type 12, 10+VOLGAIN_POKEMART, 4
	octave 3
	note B_, 16
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 4
	note D_, 2
	rest 2
	note D#, 2
	rest 2
	note_type 12, 10+VOLGAIN_POKEMART, 4
	note G#, 12
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note E_, 2
	note D#, 2
	note C#, 2
	rest 2
	sound_ret

.pattern4
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 4
	note D#, 6
	octave 3
	note G#, 2
	octave 4
	note E_, 2
	rest 2
	note_type 12, 10+VOLGAIN_POKEMART, 4
	note C#, 16
	rest 8
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 3
	note G#, 12
	note_type 12, 10+VOLGAIN_POKEMART, 2
	note A#, 8
	note B_, 8
	sound_ret

.pattern5
	note_type 12, 10+VOLGAIN_POKEMART, 4
	octave 4
	note D#, 12
	note_type 12, 10+VOLGAIN_POKEMART, 3
	note E_, 2
	note D#, 2
	note C#, 4
	octave 3
	note B_, 4
	note A#, 4
	note B_, 4
	octave 4
	note C#, 15
	duty_cycle 2
	stereo_panning TRUE, FALSE
	note_type 12, 12+VOLGAIN_POKEMART, 1
	note A#, 1
	note B_, 4
	note_type 12, 12+VOLGAIN_POKEMART, 2
	note F#, 4
	note E_, 4
	note D#, 4
	sound_ret

.pattern6
	note_type 12, 12+VOLGAIN_POKEMART, 3
	octave 4
	note C#, 6
	octave 3
	note F#, 2
	octave 4
	note D#, 2
	rest 2
	note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 3
	note B_, 16
	note_type 12, 12+VOLGAIN_POKEMART, 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 12
	note E_, 8
	note D#, 4
	note_type 12, 12+VOLGAIN_POKEMART, 1
	note E_, 4
	note F#, 4
	sound_ret

.pattern7
	note_type 12, 12+VOLGAIN_POKEMART, 3
	octave 4
	note C#, 6
	octave 3
	note F#, 2
	octave 4
	note D#, 2
	rest 2
	note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 3
	note B_, 16
	note_type 12, 12+VOLGAIN_POKEMART, 3
	note B_, 2
	octave 4
	note C#, 2
	note D#, 12
	note_type 12, 12+VOLGAIN_POKEMART, 2
	note G#, 8
	note F#, 8
	note_type 12, 12+VOLGAIN_POKEMART, 3
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	sound_ret

.pattern8
	note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 4
	note D#, 12
	note_type 12, 12+VOLGAIN_POKEMART, 3
	note E_, 2
	note D#, 2
	note C#, 4
	octave 3
	note B_, 4
	note A#, 4
	note B_, 4
	octave 4
	note C#, 16
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 12, 9+VOLGAIN_POKEMART, 4
	octave 1
	note C#, 8
	note F#, 8
	sound_ret

.pattern9
	note_type 12, 12+VOLGAIN_POKEMART, 3
	octave 4
	note D#, 6
	octave 3
	note G#, 2
	octave 4
	note E_, 2
	rest 2
	note_type 12, 12+VOLGAIN_POKEMART, 4
	note C#, 16
	rest 8
	note_type 12, 12+VOLGAIN_POKEMART, 3
	octave 3
	note G#, 4
	note G_, 4
	note G#, 4
	note A#, 4
	note G#, 4
	note A#, 4
	note B_, 4
	sound_ret

.pattern10
	;note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 1
	note D#, 12
	note D#, 2
	rest 2
	note G_, 12
	note G_, 2
	rest 2
	note A#, 12
	note G_, 2
	rest 2
	note D#, 8
	note G_, 8
	sound_ret

.pattern11
	;note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 1
	note G#, 12
	note G#, 2
	rest 2
	note G_, 12
	note G_, 2
	rest 2
	note F#, 12
	note F#, 2
	rest 2
	note F_, 12
	note F_, 2
	rest 2
	sound_ret

.pattern12
	;note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 1
	note G_, 12
	note G_, 2
	rest 2
	note D#, 8
	note A#, 8
	note D#, 12
	note D#, 2
	rest 2
	note G_, 8
	note A#, 8
	sound_ret

.pattern13
	;note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 1
	note E_, 12
	note E_, 2
	rest 2
	note B_, 12
	note B_, 2
	rest 2
	note F_, 12
	note F_, 2
	rest 2
	note C#, 12
	note C#, 2
	rest 2
	sound_ret

.pattern14
	;note_type 12, 12+VOLGAIN_POKEMART, 4
	octave 1
	note F#, 12
	note F#, 2
	rest 2
	note C#, 12
	note C#, 4
	stereo_panning TRUE, TRUE
	note F#, 2
	rest 2
	note F#, 2
	rest 6
	note C#, 8
	note_type 12, 10+VOLGAIN_POKEMART, 3
	octave 3
	note F#, 4
	note_type 12, 10+VOLGAIN_POKEMART, 1
	note G#, 4
	note A#, 4
	sound_ret

Music_Pokemart_Ch3:
	note_type 12, 15, 0
	vibrato 21, 1, 4
	sound_call .pattern0
.loop
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern12
	sound_call .pattern12
	sound_call .pattern4
	sound_call .pattern5
	sound_call .pattern6
	sound_call .pattern7
	sound_call .pattern8
	sound_call .pattern9
	sound_call .pattern10
	sound_call .pattern11
	sound_loop 0, .loop
	sound_ret

.pattern0
	note_type 12, 1, 4
	octave 4
	note D#, 2
	rest 6
	note D#, 2
	rest 6
	note D_, 2
	rest 2
	note D_, 2
	rest 6
	note C#, 2
	rest 10
	octave 3
	note F#, 10
	rest 2

	note_type 12, 2, 4
	note F#, 4
	octave 4
	note C#, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	sound_ret

.pattern1
	note_type 12, 2, 5
	octave 2
	note B_, 10
	rest 2
	note B_, 2
	rest 2
	note F#, 10
	rest 2
	note F#, 2
	rest 2
	note B_, 10
	rest 2
	note B_, 2
	rest 2
	note F#, 10
	rest 6
	sound_ret

.pattern2
	;note_type 12, 2, 5
	octave 2
	note E_, 8
	rest 4
	note G#, 2
	rest 2
	octave 3
	note E_, 8
	octave 2
	note B_, 4
	octave 3
	note D#, 2
	rest 2
	note F_, 10
	rest 2
	note C#, 4
	octave 2
	note F_, 4
	rest 4
	octave 3
	note G#, 8
	sound_ret

.pattern3
	;note_type 12, 2, 5
	octave 2
	note F#, 10
	rest 2
	note F#, 2
	rest 2
	octave 3
	note C#, 10
	rest 2
	note C#, 4
	octave 2
	note F#, 2
	rest 16
	rest 14
	sound_ret

.pattern4
	;note_type 12, 2, 5
	octave 2
	note E_, 8
	rest 4
	note G#, 2
	rest 2
	octave 3
	note E_, 10
	rest 2
	octave 2
	note G#, 2
	rest 2
	octave 3
	note C#, 10
	rest 2
	note C#, 2
	rest 2
	note F_, 8
	note G#, 8
	sound_ret

.pattern5
	;note_type 12, 2, 5
	octave 3
	note F#, 8
	rest 4
	octave 2
	note F#, 2
	rest 2
	octave 3
	note C#, 8
	rest 4
	octave 2
	note A#, 4
	note F#, 2
	rest 16
	rest 6
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
	octave 4
	note B_, 4
	octave 5
	note C#, 2
	rest 2
	sound_ret

.pattern6
	;note_type 12, 1, 1
	octave 5
	note D#, 4
	rest 4
	note D#, 4
	rest 4
	note D#, 4
	note D_, 4
	note D#, 2
	rest 1
	note G#, 1
	note A#, 12
	note G_, 3
	rest 5
	note D#, 8
	note C#, 3
	rest 5
	sound_ret

.pattern7
	;note_type 12, 1, 1
	octave 5
	note C#, 6
	note C#, 1
	note D_, 1
	note D#, 2
	rest 2
	octave 4
	note B_, 8
	note A#, 4
	note B_, 2
	rest 2
	octave 5
	note C#, 10
	rest 2
	note D#, 4
	note G#, 8
	rest 4
	octave 4
	note B_, 4
	octave 5
	note C#, 4
	sound_ret

.pattern8
	;note_type 12, 1, 1
	octave 5
	note D#, 4
	rest 4
	note D#, 4
	rest 4
	note D#, 4
	note D_, 4
	note D#, 2
	rest 1
	note G#, 1
	note A#, 12
	note G_, 2
	note F#, 2
	note G_, 2
	rest 2
	note G#, 2
	note G_, 2
	note G#, 2
	rest 2
	note A#, 2
	note A_, 2
	note A#, 2
	rest 2
	sound_ret

.pattern9
	;note_type 12, 1, 1
	octave 5
	note A#, 8
	note B_, 2
	rest 2
	note G#, 6
	rest 2
	note G_, 4
	note G#, 2
	rest 2
	note A#, 10
	rest 2
	note B_, 2
	rest 2
	note G#, 7
	octave 6
	note C_, 1
	note C#, 4
	octave 5
	note B_, 2
	rest 2
	note A#, 2
	rest 2
	sound_ret

.pattern10
	;note_type 12, 1, 1
	octave 5
	note B_, 16
	note B_, 12
	rest 2
	note G#, 1
	note A#, 1
	note B_, 16
	note B_, 4
	note G#, 4
	note A#, 2
	rest 2
	note B_, 2
	rest 2
	sound_ret

.pattern11
	;note_type 12, 1, 1
	octave 5
	note A#, 16
	note A#, 4
	note G#, 4
	note A#, 4
	note G#, 2
	rest 2
	stereo_panning TRUE, TRUE
	note A#, 2
	rest 2
	note G#, 2
	rest 6
	note F#, 8
	note_type 12, 2, 4
	octave 3
	note F#, 4
	octave 4
	note C#, 2
	rest 2
	octave 3
	note F#, 2
	rest 2
	sound_ret

.pattern12
	;note_type 12, 1, 6
	octave 2
	note B_, 10
	rest 2
	note B_, 2
	rest 2
	note F#, 10
	rest 2
	note F#, 2
	rest 2
	note B_, 10
	rest 2
	note B_, 2
	rest 2
	note F#, 10
	rest 6
	sound_ret

Music_Pokemart_Ch4:
	toggle_noise DRUMSET_POKEMART
	drum_speed 12
	sound_call .pattern3
.loop
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern4
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern2
	sound_loop 0, .loop
	sound_ret

.pattern0
	drum_note DRUM_POKEMART_0d, 12
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 12
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 4
	sound_ret

.pattern1
	stereo_panning TRUE, TRUE
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0d, 4
	sound_ret

.pattern2
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0a, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0d, 4
	stereo_panning TRUE, TRUE
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_09, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_09, 12
	stereo_panning FALSE, TRUE
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 4
	sound_ret

.pattern3
	stereo_panning FALSE, TRUE
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 12
	drum_note DRUM_POKEMART_0b, 12
	drum_note DRUM_POKEMART_0f, 4
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 4
	sound_ret

.pattern4
	drum_note DRUM_POKEMART_0d, 12
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 8
	drum_note DRUM_POKEMART_0d, 4
	drum_note DRUM_POKEMART_0d, 16
	drum_note DRUM_POKEMART_0d, 16
	sound_ret

