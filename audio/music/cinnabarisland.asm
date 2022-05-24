; remixed by zumi in 2022
; from fr/lg

Music_CinnabarIsland:
	channel_count 4
	channel 1, Music_CinnabarIsland_Ch1
	channel 2, Music_CinnabarIsland_Ch2
	channel 3, Music_CinnabarIsland_Ch3
	channel 4, Music_CinnabarIsland_Ch4

; Drum constants, replace with the proper values
DRUM_CINNABAR_ISLAND_09	EQU	3
DRUM_CINNABAR_ISLAND_0a	EQU	4
DRUM_CINNABAR_ISLAND_0d	EQU	7
DRUM_CINNABAR_ISLAND_0f	EQU	9

; Drumset to use, replace with the proper value
DRUMSET_CINNABAR_ISLAND	EQU	4

Music_CinnabarIsland_Ch1:
	tempo 77
	volume 7, 7
	note_type 12, 15, 0
.loop
	stereo_panning TRUE, FALSE
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern1
	stereo_panning TRUE, FALSE
	sound_call .pattern5b
	sound_call .pattern0b
	stereo_panning TRUE, TRUE
	sound_call .pattern5a
	sound_call .pattern0a
	sound_loop 0, .loop

.pattern1
	pitch_offset 1
	duty_cycle 0
	note_type 12, 11, 2
	octave 3
	note G_, 2
	rest 6
	note B_, 4
	note G_, 2
	note_type 12, 11, 1
	note B_, 2
	note_type 12, 11, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	octave 4
	note C_, 4
	octave 3
	note F#, 4
	note G_, 2
	rest 6
	note B_, 4
	note G_, 2
	note_type 12, 11, 1
	note B_, 2
	note_type 12, 11, 2
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	octave 4
	note C_, 4
	octave 3
	note F#, 4
	sound_ret

.pattern5b
	duty_cycle 3
	note_type 12, 8, 7
	octave 3
	note B_, 12
	note G_, 4
	note D_, 16
	octave 4
	note C_, 12
	octave 3
	note A_, 4
	note E_, 16
	sound_ret

.pattern0b
	octave 4
	note F#, 12
	note D_, 4
	octave 3
	note B_, 4
	note A_, 4
	note G_, 4
	note F#, 4
	note G_, 16
	note F#, 4
	note E_, 12
	sound_ret

.pattern0a
	octave 1
	note G_, 4
	rest 4
	note G_, 4
	octave 2
	note D_, 2
	note D_, 2
	note D_, 2
	rest 2
	note D_, 4
	note F#, 4
	note D_, 4
	octave 1
	note G_, 4
	rest 4
	note G_, 4
	rest 4
	note D_, 4
	note A_, 4
	note F#, 4
	note C_, 4
	sound_ret

.pattern5a
	duty_cycle 2
	note_type 12, 10, 3
	octave 1
	note G_, 4
	rest 4
	note G_, 4
	note B_, 2
	note B_, 2
	note B_, 2
	rest 2
	note B_, 4
	octave 2
	note C_, 4
	octave 1
	note B_, 4
	note G_, 4
	rest 4
	note G_, 4
	octave 2
	note C_, 2
	note C_, 2
	note C_, 2
	rest 2
	note C_, 4
	note E_, 4
	note C_, 4
	sound_ret


Music_CinnabarIsland_Ch2:
	vibrato 18, 3, 4
	note_type 12, 15, 0
.loop
	stereo_panning FALSE, TRUE
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	stereo_panning FALSE, TRUE
	sound_call .pattern5a
	sound_call .pattern0a
	sound_call .pattern6b
	sound_call .pattern7b
	sound_loop 0, .loop

.pattern0a
	octave 1
	note G_, 4
	rest 4
	note G_, 4
	octave 2
	note D_, 2
	note D_, 2
	note D_, 2
	rest 2
	note D_, 4
	note F#, 4
	note D_, 4
	octave 1
	note G_, 4
	rest 4
	note G_, 4
	rest 4
	note D_, 4
	note A_, 4
	note F#, 4
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 12, 12, 2
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	sound_ret

.pattern5a
	duty_cycle 2
	note_type 12, 10, 3
	octave 1
	note G_, 4
	rest 4
	note G_, 4
	note B_, 2
	note B_, 2
	note B_, 2
	rest 2
	note B_, 4
	octave 2
	note C_, 4
	octave 1
	note B_, 4
	note G_, 4
	rest 4
	note G_, 4
	octave 2
	note C_, 2
	note C_, 2
	note C_, 2
	rest 2
	note C_, 4
	note E_, 4
	note C_, 4
	sound_ret

.pattern6b
	note_type 12, 12, 3
	octave 5
	note D_, 12
	octave 4
	note B_, 4
	note G_, 6
	note A_, 1
	note G_, 1
	note F#, 4
	note G_, 4
	octave 5
	note E_, 12
	note C_, 4
	octave 4
	note A_, 4
	note G#, 4
	note B_, 4
	note A_, 4
	sound_ret

.pattern7b
	note_type 12, 12, 3
	octave 5
	note A_, 12
	note F#, 4
	note D_, 4
	note C_, 4
	note F#, 4
	note E_, 4
	octave 4
	note B_, 8
	octave 5
	note D_, 6
	note F#, 2
	note E_, 4
	note D_, 4
	duty_cycle 2
	note_type 12, 14, 3
	octave 3
	note E_, 4
	note F#, 4
	sound_ret

.pattern1
	duty_cycle 2
	note_type 12, 13, 6
	octave 3
	note G_, 12
	note A_, 2
	note B_, 2
	octave 4
	note C_, 12
	note D_, 2
	note E_, 2
	note D_, 8
	note G_, 6
	note F#, 1
	note G_, 1
	note A_, 12
	note G_, 2
	note F#, 2
	sound_ret

.pattern2
	note_type 12, 13, 6
	octave 4
	note E_, 8
	note D_, 8
	note C_, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note D_, 2
	note E_, 2
	note D_, 8
	octave 3
	note B_, 16
	note A_, 8
	sound_ret

.pattern3
	note_type 12, 13, 6
	octave 3
	note G_, 12
	note A_, 2
	note B_, 2
	octave 4
	note C_, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note D_, 2
	note E_, 2
	note D_, 8
	note G_, 6
	note F#, 1
	note G_, 1
	note A_, 12
	note G_, 2
	note F#, 2
	sound_ret

.pattern4
	note_type 12, 13, 6
	octave 4
	note E_, 8
	note D_, 8
	note C_, 6
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note D_, 2
	note E_, 2
	note D_, 8

	stereo_panning TRUE, FALSE
	duty_cycle 3
	note_type 12, 13, 2
	octave 5
	note D_, 2
	note E_, 2
	note D_, 8
	stereo_panning FALSE, TRUE
	note D_, 2
	note E_, 2
	note D_, 4
	note D_, 4
	sound_ret

Music_CinnabarIsland_Ch3:
	note_type 12, 15, 0
	vibrato 18, 2, 4
.loop
	stereo_panning TRUE, TRUE
	sound_call .pattern1
	sound_call .pattern2
	sound_call .pattern3
	sound_call .pattern4
	sound_call .pattern5
	sound_call .pattern0
	stereo_panning FALSE, TRUE
	sound_call .pattern6
	sound_call .pattern7
	sound_loop 0, .loop

.pattern0
	octave 5
	note A_, 12
	note F#, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	note A_, 4
	note B_, 8
	octave 5
	note D_, 8
	octave 4
	note B_, 4
	note A_, 8
	rest 4
	sound_ret

.pattern1
	note_type 12, 2, 5
	octave 3
	note D_, 8
	octave 2
	note B_, 8
	octave 3
	note C_, 4
	octave 2
	note B_, 2
	rest 2
	note A_, 8
	note B_, 2
	rest 6
	note D_, 8
	note F#, 2
	rest 2
	note F#, 4
	octave 3
	note D_, 2
	note E_, 2
	note C_, 4
	sound_ret

.pattern2
	octave 2
	note B_, 8
	octave 3
	note D_, 8
	octave 2
	note F#, 2
	rest 2
	note F#, 8
	note A_, 4
	note B_, 8
	octave 3
	note D_, 8
	octave 2
	note F#, 2
	rest 2
	note F#, 4
	octave 3
	note C_, 4
	octave 2
	note A_, 4
	sound_ret

.pattern3
	octave 3
	note D_, 8
	octave 2
	note B_, 8
	note F#, 2
	rest 2
	note F#, 4
	octave 3
	note C_, 2
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
	note B_, 8
	note G_, 8
	note D_, 2
	rest 2
	note D_, 4
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note F#, 4
	sound_ret

.pattern4
	octave 2
	note B_, 8
	octave 3
	note D_, 8
	octave 2
	note F#, 2
	rest 2
	note D_, 8
	octave 3
	note D_, 2
	note C_, 2
	octave 2
	note B_, 4
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note G_, 4
	note F#, 2
	rest 2
	note F#, 4
	note A_, 4
	octave 3
	note D_, 4
	sound_ret

.pattern5
	note_type 12, 1, 4
	octave 5
	note D_, 12
	octave 4
	note B_, 4
	note G_, 16
	octave 5
	note E_, 12
	note C_, 4
	octave 4
	note A_, 16
	sound_ret

.pattern6
	note_type 12, 2, 6
	octave 4
	note D_, 4
	rest 4
	note D_, 4
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note F#, 4
	note D_, 2
	rest 2
	note D_, 4
	rest 2
	note D_, 1
	note F#, 1
	note G_, 4
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	rest 2
	note D_, 2
	rest 2
	note A_, 4
	note E_, 2
	rest 2
	sound_ret

.pattern7
	note_type 12, 2, 6
	octave 4
	note D_, 4
	rest 2
	note B_, 1
	octave 5
	note C_, 1
	note D_, 4
	note C_, 2
	rest 2
	octave 4
	note A_, 2
	rest 2
	note A_, 2
	rest 2
	note A_, 4
	note F#, 2
	rest 2
	note D_, 2
	rest 2
	octave 3
	note B_, 2
	octave 4
	note D_, 1
	note F#, 1
	note G_, 4
	note D_, 2
	note D_, 2
	note D_, 2
	rest 2
	note D_, 2
	rest 2
	note C_, 4
	note C#, 2
	rest 2
	sound_ret

Music_CinnabarIsland_Ch4:
	toggle_noise DRUMSET_CINNABAR_ISLAND
	drum_speed 12
.loop
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern0
	sound_call .pattern1
	sound_call .pattern1
	sound_call .pattern0
	sound_call .pattern0
	sound_loop 0, .loop

.pattern0
	drum_note DRUM_CINNABAR_ISLAND_0a, 6
	drum_note DRUM_CINNABAR_ISLAND_0d, 2
	drum_note DRUM_CINNABAR_ISLAND_09, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 2
	drum_note DRUM_CINNABAR_ISLAND_09, 2
	drum_note DRUM_CINNABAR_ISLAND_0f, 2
	drum_note DRUM_CINNABAR_ISLAND_09, 2
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_09, 8
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0f, 2
	drum_note DRUM_CINNABAR_ISLAND_0a, 2
	drum_note DRUM_CINNABAR_ISLAND_09, 6
	drum_note DRUM_CINNABAR_ISLAND_09, 2
	drum_note DRUM_CINNABAR_ISLAND_0f, 2
	drum_note DRUM_CINNABAR_ISLAND_09, 2
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_09, 4
	drum_note DRUM_CINNABAR_ISLAND_0f, 2
	drum_note DRUM_CINNABAR_ISLAND_0f, 2
	sound_ret

.pattern1
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	drum_note DRUM_CINNABAR_ISLAND_0a, 4
	drum_note DRUM_CINNABAR_ISLAND_0d, 4
	sound_ret

