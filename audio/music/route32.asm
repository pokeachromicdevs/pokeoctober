; arranged by celadonk for pokemon fools gold in 2020
; edited by zumi for pokeoctober in 2022

Music_Route32:
	channel_count 4
	channel 1, Music_Route47_Ch1
	channel 2, Music_Route47_Ch2
	channel 3, Music_Route47_Ch3
	channel 4, Music_Route47_Ch4

; Drum constants, replace with the proper values
DRUM_ROUTE_47_06	EQU	1  ; snare
DRUM_ROUTE_47_07	EQU	5  ; C/HH
DRUM_ROUTE_47_08	EQU	4  ; O/HH
DRUM_ROUTE_47_09	EQU	9 ; crash
DRUM_ROUTE_47_0a	EQU	12  ; snare 2

; Drumset to use, replace with the proper value
DRUMSET_ROUTE_47	EQU	5

Music_Route47_Ch1:
	tempo 167
	volume 7, 7
	pitch_offset 2
	vibrato $12, 2, 3
.loop
	sound_call .pattern0
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern0
	sound_call .pattern6
	sound_loop 0, .loop
	sound_ret

.pattern0
	duty_cycle 2
	stereo_panning TRUE, FALSE
	note_type 12, 8, 2
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note C_, 6
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note C_, 6
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note C_, 6
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note C_, 6
	sound_ret

.pattern1
	duty_cycle 2
	note_type 12, 10, 2
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	duty_cycle 3
	stereo_panning FALSE, TRUE
	note_type 12, 10, 4
	octave 3
	note E_, 2
	note C_, 2
	note F_, 2
	note C_, 2
	note A_, 2
	note C_, 2
	note C_, 2
	note C_, 1
	note C_, 1
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note C_, 1
	note C_, 1
	note C_, 2
	octave 2
	note A#, 2
	note A_, 2
	octave 3
	note C_, 1
	note C_, 1
	octave 2
	note G_, 2
	note F_, 2
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note A#, 2
	note A_, 2
	note G_, 4
	octave 3
	note C_, 2
	note D_, 2
	sound_ret

.pattern2
	note_type 12, 10, 4
	octave 3
	note E_, 2
	note C_, 1
	note C_, 1
	note F_, 2
	note G_, 2
	note A_, 2
	note C_, 1
	note C_, 1
	note G_, 2
	note F_, 2
	octave 2
	note G_, 2
	note A_, 2
	note A#, 2
	octave 3
	note C_, 2
	note C#, 2
	octave 2
	note A#, 1
	note A#, 1
	octave 3
	note C_, 2
	octave 2
	note A#, 2
	note_type 12, 10, 2
	note A_, 2
	stereo_panning TRUE, FALSE
	octave 3
	note C_, 1
	note C_, 3
	stereo_panning FALSE, TRUE
	octave 2
	note A_, 1
	note A_, 3
	stereo_panning TRUE, FALSE
	octave 3
	note F_, 1
	note F_, 3
	stereo_panning FALSE, TRUE
	note C_, 1
	note C_, 3
	stereo_panning TRUE, FALSE
	note A_, 1
	note A_, 3
	stereo_panning FALSE, TRUE
	note C_, 1
	note C_, 1
	duty_cycle 2
	stereo_panning TRUE, TRUE
	note_type 12, 10, 7
	octave 2
	note C_, 1
	note F_, 1
	note G_, 1
	note A#, 1
	note A_, 1
	octave 3
	note C_, 1
	note F_, 1
	note E_, 1
	sound_ret

.pattern3
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 12, 10, 7
	octave 3
	note C_, 6
	note E_, 4
	note C_, 4
	octave 2
	note A_, 2
	octave 3
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 6
	note E_, 4
	note D_, 4
	octave 2
	note A_, 2
	octave 3
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	sound_ret

.pattern4
	duty_cycle 0
	note_type 12, 11, 7
	octave 3
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note D_, 2
	note F_, 2
	note A_, 3
	note G_, 3
	note F_, 2
	note C_, 2
	octave 2
	note G#, 2
	octave 3
	note C_, 2
	note F_, 2
	note G#, 3
	note G_, 3
	note F_, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note D_, 2
	note F_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	octave 2
	note B_, 2
	octave 3
	note F_, 4
	note F_, 4
	note E_, 4
	note E_, 4
	sound_ret

.pattern6
	pitch_offset 1
	duty_cycle 2
	stereo_panning TRUE, FALSE
	note_type 12, 8, 2
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note C_, 6
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 2
	octave 4
	note C_, 1
	note C_, 1
	octave 5
	note C_, 1
	note C_, 1
	octave 4
	note C_, 6
	duty_cycle 3
	note_type 12, 9, 4
	octave 3
	note A#, 4
	note A_, 4
	note D_, 4
	note E_, 4
	note A#, 4
	note A_, 4
	octave 2
	note A#, 4
	octave 3
	note C#, 4
	sound_ret

Music_Route47_Ch2:
	note_type 12, 15, 0
	pitch_offset 2
	vibrato $14, 2, 3
.loop
	sound_call .pattern0
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern5
	sound_call .pattern6
	sound_loop 0, .loop
	sound_ret

.pattern0
	duty_cycle 2
	stereo_panning TRUE, TRUE
	note_type 12, 12, 7
	octave 2
	note C_, 1
	note F_, 1
	note G_, 1
	note A#, 1
	note A_, 1
	octave 3
	note C_, 1
	note_type 12, 11, 0
	note F_, 4
	note_type 12, 12, 7
	note F_, 3
	note E_, 1
	note F_, 1
	note G_, 1
	note F_, 4
	octave 4
	note C_, 5
	octave 3
	note A#, 1
	note A_, 1
	note A#, 1
	note A_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note C_, 5
	note F_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note F_, 2
	note C_, 2
	octave 2
	note A#, 1
	octave 3
	note C_, 1
	note F_, 3
	note E_, 1
	note F_, 1
	note G_, 1
	note F_, 4
	note G_, 4
	sound_ret

.pattern1
	duty_cycle 1
	stereo_panning TRUE, TRUE
	octave 1
	note F_, 4
	note C_, 4
	note A_, 3
	note A#, 3
	octave 2
	note C_, 2
	octave 1
	note A#, 6
	note F_, 2
	octave 2
	note C_, 4
	note C_, 2
	note C#, 2
	note D_, 6
	octave 1
	note G_, 2
	note A_, 4
	note A#, 2
	octave 2
	note C_, 2
	octave 1
	note A#, 4
	note G_, 4
	octave 2
	note C_, 4
	octave 1
	note A#, 4
	sound_ret

.pattern2
	octave 1
	note A_, 2
	note F_, 2
	octave 2
	note F_, 2
	note E_, 2
	note D_, 4
	note C_, 2
	octave 1
	note A_, 2
	note G_, 6
	note G_, 2
	note A#, 4
	note A_, 2
	note G_, 2
	note F_, 2
	rest 4
	note C_, 2
	note F_, 2
	rest 4
	note C_, 2
	note F_, 2
	rest 4
	note C_, 2
	note F_, 4
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 12, 7
	octave 4
	note C_, 4
	sound_ret

.pattern3
	note_type 12, 12, 0
	octave 4
	note F_, 3
	note_type 12, 12, 7
	note F_, 3
	note G_, 4
	note F_, 4
	note C_, 2
	octave 5
	note C_, 4
	octave 4
	note A#, 4
	note A_, 4
	note G_, 4
	note_type 12, 12, 0
	note F_, 3
	note_type 12, 12, 7
	note F_, 3
	note G_, 4
	note F_, 4
	note C_, 2
	note A_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	sound_ret

.pattern4
	note_type 12, 12, 7
	octave 4
	note D_, 6
	note F_, 4
	note E_, 4
	note F_, 2
	note C_, 6
	note F_, 4
	note E_, 4
	note F_, 2
	note G#, 4
	note A#, 4
	octave 5
	note C_, 4
	octave 4
	note C_, 4
	note F_, 4
	note E_, 4
	note A_, 4
	note G_, 4
	sound_ret

.pattern5
	duty_cycle 3
	stereo_panning TRUE, TRUE
	note_type 12, 12, 7
	transpose 1, 0
	octave 2
	note F_, 6
	note F_, 4
	note C_, 4
	note F_, 2
	note D_, 6
	note F_, 2
	note C_, 4
	note F_, 2
	note G_, 2
	octave 1
	note B_, 4
	octave 2
	note F_, 2
	note G_, 2
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note B_, 2
	note F_, 2
	octave 1
	note A#, 6
	octave 2
	note F_, 2
	note A_, 3
	note G_, 3
	note F_, 2
	transpose 0, 0
	sound_ret

.pattern6
	octave 1
	note A_, 6
	note F_, 2
	octave 2
	note C_, 2
	octave 1
	note A#, 4
	note A_, 2
	note D_, 6
	note C_, 2
	note D_, 2
	note F_, 2
	note A_, 2
	note G_, 2
	stereo_panning FALSE, TRUE
	note_type 12, 12, 5
	octave 4
	note D_, 4
	note C_, 4
	octave 3
	note F_, 4
	note G_, 4
	octave 4
	note C#, 4
	octave 3
	note A#, 4
	note D_, 4
	note E_, 4
	sound_ret

Music_Route47_Ch3:
	vibrato $18, 3, 4
.loop
	sound_call .pattern0
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern5
	sound_call .pattern6
	sound_loop 0, .loop
	sound_ret

.pattern0
	stereo_panning FALSE, TRUE
	note_type 12, 1, 6
	octave 2
	note F_, 6
	note C_, 2
	note F_, 4
	note A_, 2
	note F_, 2
	note A#, 6
	note F_, 2
	note A#, 2
	note F_, 2
	octave 3
	note C_, 2
	note C#, 2
	note D_, 6
	octave 2
	note A_, 2
	octave 3
	note D_, 4
	note C_, 4
	octave 2
	note G#, 6
	note F_, 2
	note A#, 2
	note F_, 2
	note A#, 2
	octave 3
	note C_, 2
	sound_ret

.pattern1
	stereo_panning TRUE, TRUE
	note_type 12, 1, 4
	octave 4
	note A_, 4
	note_type 12, 1, 4
	note G_, 4
	note A_, 4
	octave 5
	note C_, 4
	note F_, 8
	note C_, 2
	octave 4
	note A#, 2
	note A_, 2
	note A#, 2
	octave 5
	note C_, 4
	octave 4
	note F_, 8
	note E_, 2
	note F_, 2
	note G_, 4
	note D_, 4
	note F_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	sound_ret

.pattern2
	note_type 12, 1, 4
	octave 5
	note C_, 8
	note F_, 4
	note C_, 4
	octave 4
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note G_, 8
	note F_, 16
	rest 12
	stereo_panning TRUE, TRUE
	note_type 12, 1, 6
	octave 3
	note C_, 4
	sound_ret

.pattern3
	note_type 12, 1, 6
	octave 2
	note F_, 16
	note A_, 16
	octave 3
	note D_, 16
	octave 2
	note B_, 8
	rest 2
	note G_, 2
	octave 3
	note G_, 2
	note F_, 2
	sound_ret

.pattern4
	note_type 12, 1, 6
	octave 2
	note A#, 6
	note_type 6, 1, 6
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 5
	rest 1
	note_type 12, 1, 6
	note A#, 3
	note A_, 2
	note G#, 6
	note_type 6, 1, 6
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note_type 12, 1, 6
	note A_, 2
	note G_, 2
	note F_, 2
	note C_, 2
	note A#, 6
	note G_, 2
	note A#, 4
	note A#, 2
	note B_, 2
	octave 3
	note C_, 6
	note C_, 2
	octave 2
	note C_, 4
	note C_, 4
	sound_ret

.pattern5
	stereo_panning TRUE, TRUE
	note_type 12, 1, 6
	octave 4
	note F_, 6
	note G_, 4
	note F_, 4
	note C_, 2
	octave 5
	note C_, 4
	octave 4
	note A_, 4
	octave 5
	note D_, 4
	note E_, 4
	note F_, 6
	octave 4
	note F_, 4
	note G_, 4
	note F_, 2
	octave 5
	note C_, 4
	octave 4
	note A#, 4
	note F_, 4
	note C#, 4
	sound_ret

.pattern6
	note_type 12, 1, 6
	octave 4
	note C_, 6
	note F_, 6
	note A#, 6
	octave 5
	note C_, 6
	note F_, 4
	octave 4
	note F_, 4
	stereo_panning TRUE, TRUE
	octave 2
	note G_, 5
	rest 1
	note_type 6, 1, 6
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note_type 12, 1, 6
	note G_, 3
	note A_, 3
	note A#, 2
	octave 3
	note C_, 5
	rest 1
	note_type 6, 1, 6
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 5
	rest 1
	note C_, 5
	rest 1
	note C_, 4
	note_type 12, 1, 6
	sound_ret

Music_Route47_Ch4:
	toggle_noise DRUMSET_ROUTE_47
	drum_speed 12
.loop
	sound_call .pattern0
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern0
	sound_call .pattern6
	sound_loop 0, .loop
	sound_ret

.pattern0
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_08, 6
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_08, 3
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_08, 6
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_08, 3
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	sound_ret

.pattern1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 4
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 4
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	sound_ret

.pattern2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_0a, 2
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_0a, 2
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_0a, 2
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	sound_ret

.pattern3
	drum_note DRUM_ROUTE_47_09, 16
	rest 16
	rest 16
	rest 8
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	sound_ret

.pattern4
	drum_note DRUM_ROUTE_47_09, 6
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_09, 3
	drum_note DRUM_ROUTE_47_08, 3
	drum_note DRUM_ROUTE_47_08, 2
	drum_note DRUM_ROUTE_47_09, 6
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_09, 3
	drum_note DRUM_ROUTE_47_08, 3
	drum_note DRUM_ROUTE_47_08, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	sound_ret

.pattern6
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_08, 6
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_07, 2
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_08, 3
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_06, 1
	drum_note DRUM_ROUTE_47_09, 6
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_09, 3
	drum_note DRUM_ROUTE_47_06, 3
	drum_note DRUM_ROUTE_47_06, 2
	drum_note DRUM_ROUTE_47_09, 6
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_07, 1
	drum_note DRUM_ROUTE_47_09, 3
	drum_note DRUM_ROUTE_47_06, 3
	drum_note DRUM_ROUTE_47_06, 2
	sound_ret


