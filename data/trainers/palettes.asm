PlayerPalette: ; Chris uses the same colors as Cal
INCBIN "gfx/trainers/cal.gbcpal", middle_colors

KrisPalette: ; Kris shares Falkner's palette
INCBIN "gfx/trainers/falkner.gbcpal", middle_colors

; entries correspond to trainer classes
; Each .gbcpal is generated from the corresponding .png, and
; only the middle two colors are included, not black or white.
INCLUDE "sheets/generated/trainer/palettes.gen.asm"