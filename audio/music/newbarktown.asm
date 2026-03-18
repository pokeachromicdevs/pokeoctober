Music_SilentTown:
	musicheader 4, 1, Town073_Ch1
	musicheader 1, 2, Town073_Ch2
	musicheader 1, 3, Town073_Ch3
	musicheader 1, 4, Town073_Ch4

;	include	group.def
;bank3d	group	G_MUSIC4
;
;;	Town073
;
;;	Converting on Mon Mar  1 06:42:16 1999
;
;;				by ver 1.02
;
;	public	mustown17
;mustown17:


;----------------------------------------
Town073_Ch1:
;----------------------------------------
	tempo 180
	volume 7, 7
	pitch_offset 1
	vibrato 18, 2, 3
	note_type 12, 8, 5
	stereo_panning FALSE, TRUE
	rest 4
; P1-1
.loop10
	duty_cycle 0
	volume_envelope 8, 5
	octave 3
	note F_,1
	rest 1
; P1-2 --- tied
	note D_,1
	rest 1
	note A#,2
	note D_,1
	rest 1
	sound_loop 3, .loop10
	note D_,1
	rest 1
	note C_,1
	rest 1
	octave 2
	note A#,2
	note A_,1
	rest 1
; P1-4
.loop11
	octave 3
	note D#,1
	rest 1
	note C_,1
	rest 1
	note G_,2
	note C_,1
	rest 1
	sound_loop 2, .loop11
; P1-5
	note F_,1
	rest 1
	note C_,1
	rest 1
	note A_,2
	note C_,1
	rest 1
	note A_,1
	rest 1
	note G_,1
	rest 1
	note A_,2
	note F_,1
	rest 1
; P1-6
.loop13
	note F_,1
	rest 1
	note D_,1
	rest 1
	note A#,2
	note D_,1
	rest 1
	sound_loop 2, .loop13
; P1-7
	note F_,1
	rest 1
	note D_,1
	rest 1
	note A#,2
	note A_,1
	rest 1
	note A#,1
	rest 1
	note A_,1
	rest 1
	note G_,2
	note F_,1
	rest 1
; P1-8
	note D#,1
	rest 1
	note C_,1
	rest 1
	note G_,2
	note D#,1
	rest 1
	note G_,1
	rest 1
	note F_,1
	rest 1
	note G_,2
	note A#,1
	rest 1
; P1-9
	note A_,1
	rest 1
	note F_,1
	rest 1
	octave 4
	note C_,2
	octave 3
	note F_,1
	rest 1
	note A_,1
	rest 1
	note F_,1
	rest 1
	octave 4
	note C_,2
	octave 3
	note F_,1
	rest 1
; P3-10
	volume_envelope 3, -5
	duty_cycle 3
	note G_,6
	note A#,6
	note G_,4
; P3-11
	volume_envelope 8, 4
	note A_,2
	note F_,2
	octave 4
	note C_,2
	octave 3
	note F_,2
	note A_,2
	note F_,2
	octave 4
	note C_,2
	octave 3
	note F_,2
; P3-12
	volume_envelope 3, -5
	duty_cycle 3
	note G_,6
	note A#,6
	note G_,4
; P3-13
	volume_envelope 8, 4
	note A_,2
	note F_,2
	octave 4
	note C_,2
	note D_,2
	note D#,2
	note D_,2
	note C_,2
	octave 3
	note A_,2
; P3-14
	volume_envelope 3, -5
	duty_cycle 3
	note G_,6
	note A#,6
	note G_,4
; P3-15
	volume_envelope 8, 4
	note A_,2
	note F_,2
	octave 4
	note C_,2
	octave 3
	note F_,2
	note A_,2
	note F_,2
	octave 4
	note C_,2
	octave 3
	note F_,2
; P3-16
	volume_envelope 3, -5
	duty_cycle 3
	note G_,6
	note A#,6
	octave 4
	note D_,4
; P3-17
	note F_,6
	note D#,6
	note C_,4
	sound_jump .loop10

;----------------------------------------
Town073_Ch2:
;----------------------------------------
	note_type 12, 10, 7
	vibrato 18, 2, 3
	rest 4
; P3-1
.loop30
	volume_envelope 9, 7
	duty_cycle 2
	stereo_panning TRUE, TRUE
	octave 1
	note F_,6
; P3-2
	note D_,6
	note A#,4
; P3-3
	note F_,6
	note D_,6
	note F_,4
; P3-4
	note G_,6
	note D#,6
	note A#,4
; P3-5
	note A_,6
	note G_,6
	note F_,4
; P3-6
	note A#,6
	note D_,6
	note A#,4
; P3-7
	note F_,6
	note D_,6
	note A#,4
; P3-8
	note D#,6
	note G_,6
	note D#,4
; P3-9
	note F_,6
	note G_,6
	note A_,4
; P2-10
	octave 4
	duty_cycle 2
	note_type 12, 9, 7
	note G_,6
	note F_,6
	note D#,4
; P2-11
	note C_,16
; P2-12
	octave 5
	note G_,6
	note F_,6
	note A#,4
; P2-13
	note A_,16
; P2-14
	octave 4
	note G_,6
	note F_,6
	note D#,4
; P2-15
	note C_,16
; P2-16
	octave 5
	note G_,6
	note F_,6
	note A#,4
; P2-17
	note A_,16
	sound_loop 0, .loop30

;----------------------------------------
Town073_Ch3:
;----------------------------------------
	note_type 12, 1, 0
	vibrato 16, 2, 3
	stereo_panning TRUE, FALSE
; P2-1
	octave 4
	note A#,2
	octave 5
	note C_,2
; P2-2
.loop20
	note D_,4
	note F_,4
	note D#,2
	note D_,2
	note C_,2
	octave 4
	note A#,2
; P2-3
	octave 5
	note D_,6
	octave 4
	note A#,2
	note F_,6
	note D#,1
	note F_,1
; P2-4
	note G_,4
	note A#,4
	octave 5
	note C_,2
	octave 4
	note_type 8, 1, 0
	note A#,1
	octave 5
	note C_,1
	octave 4
	note A#,1
	note_type 12, 1, 0
	note A_,2
	note A#,2
; P2-5
	octave 5
	note C_,6
	note D_,2
	note C_,4
	rest 2
	octave 4
	note A#,1
	octave 5
	note C_,1
; P2-6
	note D_,4
	note F_,4
	note F#,2
	note_type 8, 1, 0
	note F_,1
	note F#,1
	note F_,1
	note_type 12, 1, 0
	note D#,2
	note F#,2
; P2-7
	note F_,6
	note A_,2
	note A#,6
	note C_,1
	note D_,1
; P2-8
	note D#,6
	note F_,2
	note G_,8
; P2-9
	note F_,6
	note F_,1
	note G_,1
	note A_,8
;;;;;
; P1-10
	note_type 12, 2, 5
	octave 3
	note C_,6
	octave 2
	note A#,6
	note G_,4
; P1-11
	note A_,16
; P1-12
	octave 3
	note C_,6
	octave 2
	note A#,6
	octave 3
	note D_,4
; P1-13
	note D#,6
	note D_,6
	note C_,4
; P1-14
	note C_,6
	octave 2
	note A#,6
	note G_,4
; P1-15
	note A_,16
; P1-16
	octave 3
	note C_,6
	octave 2
	note A#,6
	octave 3
	note D_,4
; P1-17
	note F_,12
	note_type 12, 1, 0
	octave 4
	note A#,2
	octave 5
	note C_,2
	sound_loop 0, .loop20

;----------------------------------------
Town073_Ch4:
;----------------------------------------
	toggle_noise 3
	drum_speed 12
; P4-1
	rest 4
; P4-2
.loop40
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-3
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 3
; P4-4
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 3
; P4-6
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-7
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 3
; P4-8
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-9
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 3
; P4-10 --- tied
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-11
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 3
; P4-12 --- tied
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-13
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
; P4-14 --- tied
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-15
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 3
; P4-16
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
; P4-17
	drum_note 7,1
	rest 5
	drum_note 7,1
	rest 3
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	drum_note 7,1
	rest 1
	db sound_loop_cmd, 0
	dw .loop40


