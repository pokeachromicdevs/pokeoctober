roms := pokeoctober.gbc pokeoctober_debug.gbc

rom_obj := \
audio.o \
home.o \
main.o \
wram.o \
data/text/common.o \
data/maps/map_data.o \
data/pokemon/dex_entries.o \
data/pokemon/egg_moves.o \
data/pokemon/evos_attacks.o \
engine/movie/credits.o \
engine/overworld/events.o \
gfx/pics.o \
gfx/sprites.o

october_obj       := $(rom_obj:.o=.o)
october_debug_obj := $(rom_obj:.o=_debug.o)

### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink

IPSPATCH ?= tools/ipspatch


### Build targets

.SUFFIXES:

# main menu is always rebuilt to ensure accurate version indicator
# music pointers is always rebuilt for the _NO_MUSIC build flag
.PHONY: all clean tidy tools \
	engine/menus/main_menu.asm \
	audio/music_pointers.asm
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

all: main

main: pokeoctober.gbc
debug: pokeoctober_debug.gbc

clean: tidy
	find gfx \( -name "*.[12]bpp" -o -name "*.lz" -o -name "*.gbcpal" \) -delete
	find gfx/pokemon -mindepth 1 ! -path "gfx/pokemon/unown/*" \( -name "bitmask.asm" -o -name "frames.asm" -o -name "front.animation.tilemap" -o -name "front.dimensions" \) -delete

tidy:
	rm -f $(roms) $(october_obj) $(october_debug_obj) $(roms:.gbc=.map) $(roms:.gbc=.sym) *.ips
	$(MAKE) clean -C tools/

tools:
	$(MAKE) -C tools/


GIT_DESCRIBE := $(shell git describe --always --abbrev=8 --dirty='!')
GIT_VERSION  := $(shell echo $(GIT_DESCRIBE) | awk -F "-" '{print $$1}')
GIT_OFFSET   := $(shell echo $(GIT_DESCRIBE) | awk -F "-" '{print $$2}')
GIT_COMMIT   := $(shell echo $(GIT_DESCRIBE) | awk -F "-" '{print $$3}' | cut -c2-)

RGBASMFLAGS = -DGIT_VERSION="\"$(GIT_VERSION)"\" -DGIT_OFFSET="\"$(GIT_OFFSET)"\" -DGIT_COMMIT="\"$(GIT_COMMIT)"\" -DDISPLAY_DISCORD_LINK=""

$(october_obj): RGBASMFLAGS +=
$(october_debug_obj): RGBASMFLAGS += -D_DEBUG

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
define DEP
$1: $2 $$(shell tools/scan_includes $2)
	$$(RGBASM) $$(RGBASMFLAGS) -L -o $$@ $$<
endef

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

$(foreach obj, $(october_obj), $(eval $(call DEP,$(obj),$(obj:.o=.asm))))
$(foreach obj, $(october_debug_obj), $(eval $(call DEP,$(obj),$(obj:_debug.o=.asm))))

endif

patch: pokeoctober-v.$(GIT_VERSION).ips

pokeoctober-v.$(GIT_VERSION).ips: pokeoctober.gbc baserom.gbc $(IPSPATCH)
# check if baserom == crystal 1.1
	[ $(shell sha1sum -b baserom.gbc | cut -c 1-40) = f2f52230b536214ef7c9924f483392993e226cfb ]
	$(IPSPATCH) create baserom.gbc pokeoctober.gbc $@

poke%.gbc: $$(%_obj) pokeoctober.link
	$(RGBLINK) -n poke$*.sym -m poke$*.map -l pokeoctober.link -o $@ $(filter %.o,$^)
	$(RGBFIX) -Cjv -i BETA -k 01 -l 0x33 -m 0x10 -p 0 -r 3 -t PM_OCTOBER $@
	tools/sort_symfile.sh pokeoctober.sym

%.lz: %
	tools/lzcomp -- $< $@

### Pokemon pic animation rules
# first frame of the image
gfx/pokemon/%/front.static.2bpp: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions
	tools/pokemon_animation_graphics -s $@ $^

# the animated frames
gfx/pokemon/%/front.animated.2bpp: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions
	tools/pokemon_animation_graphics -a $@ $^

# tilemap of the animations
gfx/pokemon/%/front.animation.tilemap: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions
	tools/pokemon_animation_graphics -t $@ $^

gfx/pokemon/%/bitmask.asm: gfx/pokemon/%/front.animation.tilemap gfx/pokemon/%/front.dimensions
	tools/pokemon_animation -b $^ > $@

gfx/pokemon/%/frames.asm: gfx/pokemon/%/front.animation.tilemap gfx/pokemon/%/front.dimensions
	tools/pokemon_animation -f $^ > $@


### Misc file-specific graphics rules

gfx/pokemon/%/back.2bpp: rgbgfx += -h

gfx/trainers/%.2bpp: rgbgfx += -h

gfx/new_game/shrink1.2bpp: rgbgfx += -h
gfx/new_game/shrink2.2bpp: rgbgfx += -h

gfx/mail/dragonite.1bpp: tools/gfx += --remove-whitespace
gfx/mail/large_note.1bpp: tools/gfx += --remove-whitespace
gfx/mail/surf_mail_border.1bpp: tools/gfx += --remove-whitespace
gfx/mail/flower_mail_border.1bpp: tools/gfx += --remove-whitespace
gfx/mail/litebluemail_border.1bpp: tools/gfx += --remove-whitespace

gfx/pokedex/pokedex.2bpp: tools/gfx += --trim-whitespace
gfx/pokedex/sgb.2bpp: tools/gfx += --trim-whitespace
gfx/pokedex/slowpoke.2bpp: tools/gfx += --trim-whitespace
gfx/pokedex/question_mark.2bpp: rgbgfx += -h

gfx/pokegear/pokegear.2bpp: rgbgfx += -x2
gfx/pokegear/pokegear_sprites.2bpp: tools/gfx += --trim-whitespace

gfx/mystery_gift/mystery_gift.2bpp: tools/gfx += --trim-whitespace

gfx/title/crystal.2bpp: tools/gfx += --interleave --png=$<
gfx/title/old_fg.2bpp: tools/gfx += --interleave --png=$<
gfx/title/logo.2bpp: rgbgfx += -x 4

gfx/trade/ball.2bpp: tools/gfx += --remove-whitespace
gfx/trade/game_boy_n64.2bpp: tools/gfx += --trim-whitespace

gfx/slots/slots_1.2bpp: tools/gfx += --trim-whitespace
gfx/slots/slots_2.2bpp: tools/gfx += --interleave --png=$<
gfx/slots/slots_3.2bpp: tools/gfx += --interleave --png=$< --remove-duplicates --keep-whitespace --remove-xflip

gfx/card_flip/card_flip_2.2bpp: tools/gfx += --remove-whitespace

gfx/battle_anims/angels.2bpp: tools/gfx += --trim-whitespace
gfx/battle_anims/beam.2bpp: tools/gfx += --remove-xflip --remove-yflip --remove-whitespace
gfx/battle_anims/bubble.2bpp: tools/gfx += --trim-whitespace
gfx/battle_anims/charge.2bpp: tools/gfx += --trim-whitespace
gfx/battle_anims/egg.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/explosion.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/hit.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/horn.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/lightning.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/misc.2bpp: tools/gfx += --remove-duplicates --remove-xflip
gfx/battle_anims/noise.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/objects.2bpp: tools/gfx += --remove-whitespace --remove-xflip
gfx/battle_anims/pokeball.2bpp: tools/gfx += --remove-xflip --keep-whitespace
gfx/battle_anims/reflect.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/rocks.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/skyattack.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/status.2bpp: tools/gfx += --remove-whitespace

gfx/player/chris.2bpp: rgbgfx += -h
gfx/player/chris_back.2bpp: rgbgfx += -h
gfx/player/kris.2bpp: rgbgfx += -h
gfx/player/kris_back.2bpp: rgbgfx += -h

gfx/trainer_card/chris_card.2bpp: rgbgfx += -h
gfx/trainer_card/kris_card.2bpp: rgbgfx += -h
gfx/trainer_card/leaders.2bpp: tools/gfx += --trim-whitespace

gfx/overworld/chris_fish.2bpp: tools/gfx += --trim-whitespace
gfx/overworld/kris_fish.2bpp: tools/gfx += --trim-whitespace

gfx/battle/dude.2bpp: rgbgfx += -h

gfx/font/unused_bold_font.1bpp: tools/gfx += --trim-whitespace

gfx/sgb/sgb_border.2bpp: tools/gfx += --trim-whitespace

gfx/mobile/ascii_font.2bpp: tools/gfx += --trim-whitespace
gfx/mobile/electro_ball.2bpp: tools/gfx += --trim-whitespace
gfx/mobile/electro_ball_nonmatching.2bpp: tools/gfx += --remove-duplicates --remove-xflip
gfx/mobile/mobile_adapter.2bpp: tools/gfx += --trim-whitespace
gfx/mobile/mobile_splash.2bpp: tools/gfx += --remove-duplicates --remove-xflip
gfx/mobile/pichu_animated.2bpp: tools/gfx += --trim-whitespace

gfx/unknown/unknown_egg.2bpp: rgbgfx += -h

### Misc from Gold/Silver
gfx/intro/fire1.2bpp: gfx/intro/charizard1.2bpp gfx/intro/charizard2_top.2bpp gfx/intro/space.2bpp
	cat $^ > $@
gfx/intro/fire2.2bpp: gfx/intro/charizard2_bottom.2bpp gfx/intro/charizard3.2bpp
	cat $^ > $@
gfx/intro/fire3.2bpp: gfx/intro/fire.2bpp gfx/intro/unused_blastoise_venusaur.2bpp
	cat $^ > $@

### Catch-all graphics rules

%.2bpp: %.png
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png
	$(RGBGFX) $(rgbgfx) -d1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)

%.gbcpal: %.png
	$(RGBGFX) -p $@ $<

%.dimensions: %.png
	tools/png_dimensions $< $@
