; remixed by zumi in 2015
; from b2/w2

Music_Pinch::
	channel_count 3
	channel 1, Pinch_Ch1
	channel 2, Pinch_Ch2
	channel 3, Pinch_Ch3

MUSIC_PINCH_WAVE_VOL equ 1
MUSIC_PINCH_WAVE_INSTR equ 9

Pinch_Ch1_sub_0:
	note C#,  1
	note D#,  1
	note C#,  1
	note D#,  1
	note G#,  1
	note D#,  1
	note C#,  1
	note D#,  1
	note C#,  1
	note D#,  1
	note C#,  1
	note D#,  1
	note G#,  1
	note A#,  1
	octave 4
	note C_,  1
	note C#,  1
	note D#,  1
	note C#,  1
	note C_,  1
	octave 3
	note A#,  1
	note G#,  1
	note G_,  1
	note F_,  1
	note D#,  1
	sound_ret
Pinch_Ch1::
	tempo 118
	vibrato 6, 3, 4
	duty_cycle 3
	pitch_offset 2
	note_type 6, 12, 2
	octave 3
	note D#,  1
	rest 1
	note D#,  1
	rest 1
	note_type 6, 12, 6
	octave 2
	note D#,  8
	note_type 6, 12, 0
	note G_,  8
	note_type 6, 12, 6
	note G_,  8
	octave 3
	note_type 6, 12, 0
	note F#,  8
	note_type 6, 12, 6
	note F#,  8
	note C#,  8
	note_type 8, 12, 6
	note F#,  5
	note B_,  4
	octave 4
	note E_,  3
	note_type 12, 12, 1
	duty_cycle 2
	octave 3
	sound_call Pinch_Ch1_sub_0
	note C#,  1
	note C_,  1
	octave 2
	note A#,  1
	note G#,  1
	note A#,  1
	octave 3
	note C_,  1
	note C#,  1
	note D#,  1
	sound_call Pinch_Ch1_sub_0
	duty_cycle 3
	note_type 8, 12, 2
	note G_,  1
	rest 1
	octave 4
	note C#,  1
	rest 1
	note G_,  1
	rest 1
	octave 5
	note C#,  1
	rest 1
	octave 4
	note G_,  1
	rest 1
	note C#,  2
Pinch_Ch1_loop:
	note_type 12, 12, 6
	octave 3
	note D#,  6
	note C_,  2
	note D#,  4
	note C_,  4
	sound_call Pinch_Ch1_loop_sub_1
	octave 4
	note C#,  6
	sound_call Pinch_Ch1_loop_sub_0
	note D#,  6
	note C_,  2
	note D#,  4
	note C_,  4
	sound_call Pinch_Ch1_loop_sub_1
	note_type 8, 12, 6
	note G#,  4
	note D#,  4
	note G#,  4
	note A#,  6
	note G#,  6
	note_type 12, 12, 6
	octave 4
	note C#,  3
	octave 3
	note A#,  3
	note G#,  2
	note A#,  5
	rest 1
	note_type 12, 12, 2
	note A#,  1
	note A#,  1
	note_type 12, 12, 6
	note A#,  2
	note C_,  2
	note C#,  2
	note D#,  2
	note D#,  6
	note C_,  2
	note D#,  4
	note C_,  4
	note F#,  2
	note F_,  1
	note E_,  1
	note D#,  6
	octave 4
	note C#,  4
	sound_call Pinch_Ch1_loop_sub_0
	note D#,  6
	note C_,  2
	note D#,  4
	note C_,  4
	sound_call Pinch_Ch1_loop_sub_1
	note C#,  4
	note F_,  4
	note D#,  6
	note F#,  2
	note G#,  2
	note D#,  4
	note G#,  2
	note_type 12, 12, 6
	note C#,  4
	note_type 12, 12, 1
	note C#,  1
	note D#,  1
	note F_,  1
	note G_,  1
	note_type 12, 12, 3
	note C#,  1
	note C_,  1
	note C#,  1
	rest 3
	note A#,  1
	rest 1
	note_type 12, 12, 1
	duty_cycle 2
	note G#,  1
	rest 1
	note G#,  1
	rest 3
	note G#,  1
	note G#,  1
	note G#,  1
	rest 1
	note G#,  1
	rest 3
	note G#,  1
	note G#,  1
	note A#,  1
	rest 1
	note A#,  1
	rest 3
	note A#,  1
	note G_,  1
	octave 4
	note D#,  1
	note F_,  1
	note D_,  1
	note D#,  1
	note G_,  1
	rest 1
	note D#,  1
	rest 1
	note C_,  1
	rest 1
	note C_,  1
	rest 3
	note C_,  1
	note C_,  1
	note C_,  1
	rest 1
	note C_,  1
	rest 1
	octave 3
	note G_,  1
	octave 4
	note C_,  1
	octave 3
	note A#,  1
	rest 1
	octave 4
	note C_,  1
	rest 1
	note C_,  1
	rest 3
	note C_,  1
	rest 1
	note C_,  1
	rest 1
	note C_,  1
	rest 1
	note G#,  1
	rest 1
	note G_,  1
	note G#,  1
	octave 3
	note G#,  1
	rest 1
	note G#,  1
	rest 3
	note G#,  2
	octave 4
	note C#,  1
	rest 1
	octave 3
	note G#,  1
	rest 1
	note G#,  1
	note G#,  1
	note G#,  1
	rest 3
	note A#,  1
	rest 3
	note A#,  1
	rest 1
	note A#,  1
	octave 4
	note C_,  1
	octave 3
	note A_,  1
	note A#,  1
	octave 4
	note G_,  1
	rest 1
	note C_,  1
	rest 1
	note D#,  1
	rest 1
	note C_,  1
	rest 3
	octave 3
	note C_,  1
	rest 1
	note C_,  1
	rest 1
	note C_,  1
	rest 1
	note C_,  1
	note C_,  1
	rest 2
	note F_,  1
	rest 1
	note F_,  1
	rest 3
	note F_,  1
	rest 1
	note F_,  1
	rest 1
	note F_,  1
	rest 1
	note A_,  4
	octave 4
	duty_cycle 3
	note_type 12, 12, 3
	note F_,  1
	rest 2
	note D#,  1
	note_type 12, 12, 6
	note C#,  8
	rest 1
	note_type 12, 12, 3
	octave 3
	note G#,  1
	note A#,  1
	octave 4
	note C_,  1
	note_type 12, 12, 3
	note F_,  1
	rest 2
	note E_,  1
	note_type 12, 12, 6
	note D_,  8
	rest 3
	note D_,  1
	note_type 12, 12, 0
	note D#,  8
	note_type 12, 12, 6
	note D#,  8
	note_type 12, 12, 6
	octave 3
	note G_,  5
	note_type 12, 12, 1
	rest 1
	note G_,  1
	note G_,  1
	note_type 12, 12, 6
	note G_,  8
	sound_loop 0, Pinch_Ch1_loop
Pinch_Ch1_loop_sub_0:
	note C_,  1
	octave 3
	note B_,  1
	note F_,  6
	note D#,  1
	note D_,  1
	note C#,  2
	note D#,  2
	note E_,  1
	rest 1
	note E_,  1
	rest 1
	note E_,  5
	rest 3
	note E_,  1
	rest 1
	note E_,  1
	rest 1
	note C#,  4
	sound_ret
Pinch_Ch1_loop_sub_1:
	note F#,  2
	note F_,  1
	note E_,  1
	note D#,  4
	sound_ret
Pinch_Ch2_sub_0:
	note C#,  1
	rest 1
	note C#,  3
	rest 1
	note C#,  1
	rest 1
	note C#,  2
	note C#,  1
	rest 1
	note C#,  1
	note C#,  1
	note C#,  1
	rest 1
	sound_ret
Pinch_Ch2::
	vibrato 16, 4, 6
	duty_cycle 3
	pitch_offset 1
	note_type 6, 12, 2
	octave 2
	note D#,  1
	rest 1
	note D#,  1
	rest 1
	note_type 6, 12, 0
	octave 1
	note D#,  8
	note_type 6, 12, 6
	note D#,  8
	note_type 6, 12, 0
	octave 3
	note C#,  8
	note_type 6, 12, 6
	note C#,  8
	note B_,  8
	octave 4
	note E_,  8
	note_type 8, 12, 5
	note A_,  5
	octave 5
	note D_,  4
	note G_,  3
	note_type 12, 12, 2
	sound_call Pinch_Ch2_sub_0
	note C_,  1
	rest 1
	note C_,  3
	rest 1
	note C_,  1
	rest 1
	note C_,  2
	note C_,  1
	rest 1
	note C_,  1
	note C_,  1
	note C_,  1
	rest 1
	sound_call Pinch_Ch2_sub_0
	octave 4
	note G#,  1
	note G_,  1
	note G#,  1
	rest 5
	note_type 8, 11, 1
	note F#,  2
	note F#,  2
	note_type 8, 12, 1
	note F#,  2
	note F#,  2
	note_type 8, 13, 1
	note F#,  2
	note G_,  2
Pinch_Ch2_loop:
	note_type 12, 14, 5
	octave 3
	note G#,  6
	octave 4
	note C_,  2
	note D#,  8
	note_type 12, 9, 5
	octave 3
	note C#,  8
	note_type 12, 14, 5
	octave 4
	note F#,  6
	sound_call Pinch_Ch2_loop_sub_0
	note C#,  4
	octave 3
	note A#,  4
	octave 4
	note C#,  4
	note_type 12, 14, 5
	note D#,  16
	note D#,  5
	rest 1
	note_type 12, 14, 1
	note D#,  1
	note D#,  1
	note_type 12, 14, 5
	note D#,  8
	note_type 12, 14, 6
	octave 3
	note G#,  6
	octave 4
	note C_,  2
	note D#,  8
	note_type 12, 9, 5
	octave 3
	note C#,  10
	note_type 12, 12, 5
	octave 4
	note F#,  4
	sound_call Pinch_Ch2_loop_sub_0
	note F#,  4
	note F_,  4
	note F#,  4
	note G#,  9
	note B_,  3
	note G#,  12
	note_type 8, 12, 5
	note G#,  6
	note_type 12, 12, 1
	note G#,  1
	note A#,  1
	note F_,  1
	note G_,  1
	note A#,  1
	note A_,  1
	note A#,  1
	rest 3
	note A#,  1
	rest 1
	note_type 12, 12, 5
	note F_,  1
	rest 2
	note G_,  1
	note G#,  5
	note G_,  1
	note F_,  1
	note G_,  1
	note G#,  2
	octave 5
	note C_,  1
	rest 1
	octave 4
	note A#,  1
	rest 2
	note G_,  1
	note D#,  8
	note C_,  1
	note C#,  1
	octave 3
	note B_,  1
	octave 4
	note C_,  1
	note D#,  1
	rest 2
	note F_,  1
	note G_,  8
	note D#,  1
	note G_,  1
	note A#,  2
	note G#,  1
	rest 2
	note A#,  1
	octave 5
	note C_,  8
	rest 4
	octave 4
	note G#,  1
	rest 2
	note F_,  1
	note G#,  6
	note F_,  2
	note G#,  2
	octave 5
	note C_,  1
	rest 1
	octave 4
	note A#,  1
	rest 2
	octave 5
	note C_,  1
	octave 4
	note A#,  8
	note D#,  1
	note C#,  1
	note C_,  1
	note C#,  1
	note D#,  1
	rest 2
	note F_,  1
	note G_,  6
	note D#,  2
	note A#,  4
	note A_,  1
	rest 2
	note A#,  1
	octave 5
	note C_,  8
	rest 2
	octave 4
	note G#,  1
	octave 5
	note C_,  1
	note C#,  1
	rest 2
	note C_,  1
	octave 4
	note A#,  8
	note G_,  1
	note G#,  1
	note A#,  1
	octave 5
	note C_,  1
	note C#,  1
	rest 2
	note C_,  1
	octave 4
	note A#,  8
	rest 2
	note G#,  1
	note_type 14, 13, 0
	note A#,  7
	note_type 14, 13, 6
	note A#,  7
	note_type 8, 13, 0
	rest 1
	note_type 12, 14, 6
	note D#,  5
	note_type 12, 14, 1
	rest 1
	note D#,  1
	note D#,  1
	note_type 12, 14, 6
	note D#,  8
	sound_loop 0, Pinch_Ch2_loop
Pinch_Ch2_loop_sub_0:
	note F_,  1
	note E_,  1
	note D#,  16
	note C#,  5
	rest 3
	note C#,  3
	note C_,  3
	note C#,  2
	note_type 12, 12, 7
	octave 3
	note G#,  6
	octave 4
	note C_,  2
	note D#,  8
	note_type 12, 9, 5
	octave 3
	note C#,  8
	note_type 8, 12, 7
	octave 4
	sound_ret
Pinch_Ch3_sub_0:
	rest 1
	note D#,  1
	rest 1
	note D#,  1
	rest 1
	note D#,  1
	sound_ret
Pinch_Ch3::
	transpose 0, 0
	note_type 12, MUSIC_PINCH_WAVE_VOL, MUSIC_PINCH_WAVE_INSTR
	octave 3
	note D#,  1
	note D#,  1
	octave 2
	note D#,  16
	note D#,  8
	note_type 6, MUSIC_PINCH_WAVE_VOL, MUSIC_PINCH_WAVE_INSTR
	octave 3
	note D#,  1
	sound_call Pinch_Ch3_sub_0
	sound_call Pinch_Ch3_sub_0
	rest 1
	note D#,  2
	note G#,  8
	octave 4
	note D#,  4
	octave 3
	note G#,  8
	note D#,  4
	note G#,  4
	note D#,  4
	note G#,  8
	note D#,  4
	note G#,  8
	note D#,  4
	note G#,  8
	note G#,  8
	note D#,  2
	note D#,  2
	note G#,  8
	note D#,  2
	rest 2
	note G#,  2
	rest 2
	note D#,  2
	rest 2
	note D#,  2
	note D_,  2
	note D#,  4
	note G#,  2
	rest 2
	note D#,  12
	note D#,  1
	sound_call Pinch_Ch3_sub_0
	rest 1
Pinch_Ch3_loop:
	note_type 12, MUSIC_PINCH_WAVE_VOL, MUSIC_PINCH_WAVE_INSTR
	note G#,  4
	note D#,  2
	note G#,  4
	note D#,  2
	note G#,  2
	note D#,  2
	note F#,  4
	note C#,  2
	note F#,  4
	note C#,  2
	note F#,  2
	note C#,  2
	note G#,  4
	note D#,  2
	note G#,  4
	note D#,  2
	note G#,  2
	sound_call Pinch_Ch3_loop_sub_1
	note A#,  4
	note D#,  2
	note A#,  4
	note D#,  2
	note A#,  2
	sound_call Pinch_Ch3_loop_sub_1
	note G#,  4
	note D#,  2
	note G#,  4
	note D#,  2
	note G#,  2
	sound_call Pinch_Ch3_loop_sub_1
	note G#,  4
	note D#,  2
	note G#,  4
	note D#,  2
	note G#,  2
	note D#,  2
	note G#,  4
	note D#,  2
	note A#,  4
	note D#,  2
	note A#,  2
	note D#,  2
	note_type 12, MUSIC_PINCH_WAVE_VOL, MUSIC_PINCH_WAVE_INSTR
	note C#,  4
	sound_call Pinch_Ch3_loop_sub_0
	note E_,  4
	note D#,  4
	note D_,  4
	note C#,  4
	sound_call Pinch_Ch3_loop_sub_0
	note C_,  4
	note A_,  4
	octave 4
	note C_,  4
	octave 3
	note C#,  4
	octave 2
	note G#,  2
	octave 3
	note C#,  4
	octave 2
	note G#,  2
	octave 3
	note G#,  2
	octave 2
	note G#,  2
	note A#,  4
	note F_,  2
	octave 3
	note F_,  4
	note D_,  2
	note G#,  2
	octave 2
	note A#,  2
	octave 3
	note D#,  4
	octave 2
	note A#,  2
	octave 3
	note D#,  4
	octave 2
	note A#,  2
	octave 3
	note G_,  2
	note D#,  1
	note D#,  1
	note D#,  16
	sound_loop 0, Pinch_Ch3_loop
Pinch_Ch3_loop_sub_0:
	octave 2
	note G#,  2
	octave 3
	note C#,  4
	octave 2
	note G#,  2
	octave 3
	note C#,  2
	octave 2
	note G#,  2
	octave 3
	note D#,  4
	octave 2
	note A#,  2
	octave 3
	note D#,  4
	octave 2
	note A#,  2
	octave 3
	note D#,  2
	octave 2
	note A#,  2
	octave 3
	note C_,  4
	octave 2
	note G_,  2
	octave 3
	note C_,  4
	octave 2
	note G_,  2
	octave 3
	note C_,  2
	octave 2
	note G_,  2
	octave 3
	note F_,  4
	sound_ret
Pinch_Ch3_loop_sub_1:
	note D#,  2
	note A#,  4
	note D#,  2
	note A#,  4
	note D#,  2
	note A#,  2
	note D#,  2
	note G#,  4
	note D#,  2
	note G#,  4
	note D#,  2
	note G#,  2
	note D#,  2
	note F#,  4
	note C#,  2
	note F#,  4
	note C#,  2
	note F#,  2
	note C#,  2
	sound_ret
