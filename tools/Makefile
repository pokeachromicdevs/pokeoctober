.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c17 -Wall -Wextra -Wno-missing-field-initializers

tools := \
    lzcomp \
    png_dimensions \
    scan_includes \
    palette \
    pokemon_animation \
    pokemon_animation_graphics \
    gfx \
    ipspatch \
    md5 \
    gif2anim \
    gbstrim

all: $(tools)
    @:

clean:
    rm -f $(tools)

gfx md5: common.h

%: %.c
    $(CC) $(CFLAGS) -o $@ $<