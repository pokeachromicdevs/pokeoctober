; remixed by zumi in 2022
; from hg/ss

Music_SafariZone:
	channel_count 4
	channel 1, Music_SafariZone_Ch1
	channel 2, Music_SafariZone_Ch2
	channel 3, Music_SafariZone_Ch3
	channel 4, Music_SafariZone_Ch4

SAFARI_ZONE_DRUM_C# equ 2
SAFARI_ZONE_DRUM_D_ equ 3
SAFARI_ZONE_DRUM_F# equ 7
SAFARI_ZONE_DRUM_B_ equ 12

Music_SafariZone_Ch1_sub_0:
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	sound_ret
Music_SafariZone_Ch1_sub_1:
	note G#, 10
	note A#, 2
	octave 4
	note C_, 6
	octave 3
	note A#, 6
	note G#, 6
	note G_, 6
	note F_, 6
	note D#, 6
	note C#, 6
	rest 6
	sound_ret
Music_SafariZone_Ch1::
	tempo 150
	stereo_panning TRUE, FALSE
	pitch_offset 1
	duty_cycle 3
	note_type 14, 0, 0
	rest 16
	note_type 8, 10, 3
	octave 3
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
.loop
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	octave 2
	note G#, 2
	rest 4
	note G#, 2
	rest 4
	note G#, 2
	rest 4
	note G#, 2
	rest 4
	note A#, 2
	rest 4
	note A#, 2
	rest 4
	note A#, 2
	rest 4
	note A#, 2
	rest 4
	octave 3
	note C_, 2
	rest 4
	note C_, 2
	rest 4
	note C_, 2
	note C_, 2
	note C#, 2
	note D#, 2
	note F_, 2
	rest 2
	note F_, 2
	note C#, 2
	note F_, 2
	note G#, 2
	octave 4
	note C#, 6
	octave 3
	note F_, 6
	note D#, 2
	rest 2
	note D#, 2
	note C_, 2
	note D#, 2
	note G#, 2
	octave 4
	note C_, 6
	octave 3
	note D#, 6
	note D_, 6
	note D_, 6
	octave 2
	note A#, 6
	octave 3
	note F_, 6
	note D#, 2
	note D#, 2
	note F_, 2
	note D#, 2
	note G_, 2
	note A#, 2
	octave 4
	note D#, 6
	octave 3
	note D#, 6
	duty_cycle 0
	note_type 8, 10, 5
	sound_call Music_SafariZone_Ch1_sub_1
	note D#, 6
	rest 6
	note F_, 6
	duty_cycle 2
	note_type 8, 10, 4
	octave 5
	note C#, 6
	octave 4
	note F_, 4
	note F_, 2
	note G#, 6
	duty_cycle 0
	note_type 8, 10, 5
	octave 3
	note G_, 10
	note G#, 2
	note G_, 6
	note F_, 6
	note D#, 6
	note C#, 6
	note C_, 6
	octave 2
	note A#, 6
	note G#, 4
	rest 2
	note G#, 4
	note G_, 2
	note G#, 6
	note A#, 6
	note G_, 6
	duty_cycle 2
	note_type 8, 10, 4
	octave 4
	note D#, 4
	note F_, 2
	note D#, 6
	note C#, 6
	duty_cycle 0
	note_type 8, 10, 5
	octave 3
	sound_call Music_SafariZone_Ch1_sub_1
	note F_, 6
	rest 6
	note G#, 6
	duty_cycle 3
	note F_, 6
	note D#, 6
	note D_, 6
	note C_, 6
	rest 6
	note D_, 6
	rest 6
	note C#, 6
	rest 6
	note C_, 6
	rest 6
	note F_, 6
	note F_, 6
	octave 4
	note C#, 6
	octave 3
	note C#, 6
	note F_, 6
	note F_, 6
	octave 2
	note A#, 6
	note B_, 6
	octave 3
	note C_, 6
	octave 2
	note B_, 6
	octave 3
	note C_, 6
	octave 2
	note B_, 6
	octave 3
	note C_, 6
	note C_, 4
	note A#, 2
	note G_, 6
	note D#, 6
	note C_, 6
	note_type 12, 0, 0
	rest 16
	note_type 11, 0, 0
	rest 16
	note_type 8, 10, 3
	sound_call Music_SafariZone_Ch1_sub_0
	sound_loop 0, .loop
	sound_ret
Music_SafariZone_Ch2_sub_0:
	note C_, 2
	note C#, 2
	note D#, 2
	note_type 8, 11, 4
	note F#, 4
	note_type 8, 11, 1
	note F_, 1
	note E_, 1
	note_type 8, 11, 4
	note D#, 4
	note_type 8, 11, 1
	note F_, 1
	note G_, 1
	note_type 8, 11, 2
	note G#, 4
	octave 3
	note D#, 2
	rest 4
	note D#, 2
	rest 4
	note D#, 2
	rest 4
	note D#, 2
	sound_ret
Music_SafariZone_Ch2_sub_1:
	note_type 8, 10, 0
	octave 4
	note C_, 10
	note_type 8, 11, 6
	note C#, 2
	note D#, 6
	note C#, 6
	note C_, 6
	octave 3
	note A#, 6
	note G#, 6
	note G_, 6
	sound_ret
Music_SafariZone_Ch2::
	vibrato 16, 2, 2
	duty_cycle 2
	note_type 8, 11, 2
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	octave 4
	sound_call Music_SafariZone_Ch2_sub_0
.loop
	note_type 8, 11, 3
	note D#, 4
	note D_, 2
	note D#, 2
	rest 2
	note D#, 2
	note G#, 4
	note G_, 2
	note G#, 2
	rest 2
	note D#, 2
	note F_, 4
	note E_, 2
	note F_, 4
	note G_, 2
	note G#, 4
	note C#, 2
	rest 4
	note C#, 2
	note A#, 4
	note G#, 2
	note G_, 2
	rest 2
	note C#, 2
	note G_, 4
	note F_, 2
	note D#, 2
	rest 2
	octave 2
	note G_, 2
	octave 3
	note G#, 2
	note G#, 2
	note G_, 2
	note G#, 4
	note F_, 2
	note D#, 12
	note G#, 4
	note G_, 2
	note G#, 4
	note A#, 2
	note G#, 4
	rest 2
	note F_, 2
	rest 4
	note G#, 4
	note G_, 2
	note G#, 4
	note A#, 2
	note G#, 4
	rest 2
	note D#, 2
	rest 4
	note G_, 4
	note G#, 2
	note G_, 4
	note G#, 2
	note A#, 4
	note F_, 2
	note G_, 4
	note G#, 2
	note A#, 12
	note_type 12, 0, 0
	rest 7
	duty_cycle 3
	note_type 6, 11, 2
	note G#, 1
	note B_, 1
	sound_call Music_SafariZone_Ch2_sub_1
	note F_, 6
	note_type 8, 11, 2
	octave 2
	note F_, 2
	note G#, 2
	octave 3
	note C#, 2
	note_type 8, 11, 6
	note G_, 6
	note_type 8, 11, 2
	octave 2
	note G#, 2
	octave 3
	note C#, 2
	note D#, 2
	note_type 12, 11, 6
	note G#, 12
	rest 4
	note_type 8, 10, 0
	note A#, 10
	note_type 8, 11, 6
	octave 4
	note C_, 2
	octave 3
	note A#, 6
	note G#, 6
	note G_, 6
	note F_, 6
	note D#, 6
	note C#, 6
	note C_, 4
	rest 2
	note C_, 4
	octave 2
	note B_, 2
	octave 3
	note C_, 6
	note C#, 6
	note_type 12, 11, 6
	note D#, 12
	rest 4
	sound_call Music_SafariZone_Ch2_sub_1
	note G#, 6
	rest 6
	octave 4
	note C#, 6
	rest 6
	note F_, 6
	octave 3
	note G#, 6
	note G_, 6
	note F_, 6
	note D#, 6
	rest 6
	note F_, 6
	rest 6
	note G_, 6
	rest 6
	note G#, 6
	rest 6
	note A#, 6
	octave 4
	note C#, 6
	note F_, 6
	octave 3
	note F_, 6
	note G_, 6
	note G#, 6
	note G_, 6
	note F_, 6
	note D#, 6
	note D_, 6
	note D#, 6
	note F_, 6
	note D#, 6
	note D#, 4
	octave 4
	note C#, 2
	note C_, 6
	octave 3
	note G_, 6
	duty_cycle 2
	note_type 8, 11, 3
	note G#, 4
	note B_, 2
	octave 4
	note C_, 2
	note C#, 2
	note D#, 2
	note F#, 4
	note_type 8, 11, 1
	note F_, 1
	note E_, 1
	note_type 8, 11, 4
	note D#, 4
	note_type 8, 11, 1
	note F_, 1
	note G_, 1
	note_type 8, 11, 4
	note G#, 4
	note D#, 2
	sound_call Music_SafariZone_Ch2_sub_0
	rest 4
	note D#, 2
	rest 4
	note D#, 2
	rest 4
	note D#, 2
	rest 4
	note D#, 2
	sound_loop 0, .loop
	sound_ret
Music_SafariZone_Ch3_sub_0:
	note G#, 2
	rest 2
	note G#, 2
	note G#, 2
	note G_, 2
	note G#, 2
	octave 3
	note D#, 6
	octave 2
	note D#, 4
	note F_, 1
	note G_, 1
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	sound_ret
Music_SafariZone_Ch3_sub_1:
	rest 3
	note D#, 6
	note G#, 3
	rest 3
	note D#, 6
	note G#, 3
	rest 3
	note D#, 6
	sound_ret
Music_SafariZone_Ch3::
	stereo_panning FALSE, TRUE
	note_type 8, 1, 6
	octave 2
	note G#, 2
	rest 2
	note G#, 2
	note G#, 2
	note G_, 2
	note G#, 2
	octave 3
	note D#, 6
	octave 2
	note D#, 4
	note F_, 1
	note G_, 1
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
.loop
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note C#, 3
	rest 3
	note G#, 3
	rest 3
	note C#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note A#, 3
	rest 3
	note D#, 3
	rest 3
	note A#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note G#, 3
	rest 3
	note D#, 3
	rest 3
	note C#, 3
	rest 3
	note C#, 3
	rest 3
	note C#, 6
	rest 6
	note G#, 3
	rest 3
	note G#, 3
	rest 3
	note G#, 6
	rest 6
	note D_, 3
	rest 3
	octave 1
	note A#, 3
	rest 3
	octave 2
	note C_, 3
	rest 3
	note D_, 3
	rest 3
	note D#, 3
	rest 3
	note A#, 3
	rest 3
	octave 3
	note D#, 6
	octave 2
	note D#, 6
	note G#, 3
	sound_call Music_SafariZone_Ch3_sub_1
	octave 3
	note C_, 6
	octave 2
	note D#, 6
	note C#, 3
	rest 3
	note G#, 6
	note C#, 3
	rest 3
	note G#, 6
	octave 3
	note C#, 3
	rest 3
	octave 2
	note G#, 6
	note F_, 3
	rest 3
	note G#, 6
	note D#, 3
	rest 3
	note A#, 6
	note D#, 3
	rest 3
	note A#, 6
	note D#, 3
	rest 3
	note D#, 6
	note F_, 6
	note G_, 6
	note G#, 3
	rest 3
	octave 3
	note D#, 6
	octave 2
	note G#, 3
	rest 3
	octave 3
	note D#, 6
	octave 2
	note A#, 3
	rest 3
	note D#, 6
	note F_, 6
	note G_, 6
	note G#, 3
	sound_call Music_SafariZone_Ch3_sub_1
	note G#, 6
	octave 3
	note C_, 6
	note C#, 3
	rest 3
	octave 2
	note G#, 6
	octave 3
	note C#, 3
	rest 3
	octave 2
	note G#, 6
	octave 3
	note D_, 3
	rest 3
	octave 2
	note D_, 6
	note D#, 6
	note F_, 6
	rest 6
	note D#, 6
	rest 6
	note D#, 6
	rest 6
	note D#, 6
	rest 6
	note D#, 6
	note C#, 6
	note_type 12, 1, 6
	rest 12
	note D_, 4
	rest 16
	note D#, 4
	rest 4
	note D#, 4
	note D#, 2
	rest 2
	note D#, 2
	rest 6
	note D#, 4
	note_type 8, 1, 6
	note G#, 2
	rest 2
	note G#, 2
	note G#, 2
	note G_, 2
	note G#, 2
	octave 3
	note D#, 6
	octave 2
	note D#, 4
	note F_, 1
	note G_, 1
	sound_call Music_SafariZone_Ch3_sub_0
	rest 3
	sound_loop 0, .loop
	sound_ret
Music_SafariZone_Ch4_sub_0:
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_ret
Music_SafariZone_Ch4_sub_1:
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_ret
Music_SafariZone_Ch4_sub_2:
	drum_note SAFARI_ZONE_DRUM_C#, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_C#, 2
	drum_note SAFARI_ZONE_DRUM_C#, 2
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	sound_ret
Music_SafariZone_Ch4::
	toggle_noise 3
	drum_speed 12
	rest 16
	drum_speed 8
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
.loop
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_call Music_SafariZone_Ch4_sub_0
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	sound_call Music_SafariZone_Ch4_sub_2
	sound_call Music_SafariZone_Ch4_sub_2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_call Music_SafariZone_Ch4_sub_0
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_call Music_SafariZone_Ch4_sub_1
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_call Music_SafariZone_Ch4_sub_0
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_call Music_SafariZone_Ch4_sub_1
	drum_speed 6
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_note SAFARI_ZONE_DRUM_C#, 1
	drum_speed 8
	drum_note SAFARI_ZONE_DRUM_B_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	sound_call Music_SafariZone_Ch4_sub_1
	drum_note SAFARI_ZONE_DRUM_F#, 6
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 2
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	sound_call Music_SafariZone_Ch4_sub_2
	sound_call Music_SafariZone_Ch4_sub_2
	drum_note SAFARI_ZONE_DRUM_C#, 2
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 4
	drum_note SAFARI_ZONE_DRUM_C#, 2
	drum_note SAFARI_ZONE_DRUM_B_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_D_, 12
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	rest 12
	drum_note SAFARI_ZONE_DRUM_D_, 6
	drum_note SAFARI_ZONE_DRUM_B_, 6
	rest 12
	drum_note SAFARI_ZONE_DRUM_F#, 6
	sound_call Music_SafariZone_Ch4_sub_0
	drum_speed 8
	drum_note SAFARI_ZONE_DRUM_F#, 6
	sound_loop 0, .loop
	sound_ret
