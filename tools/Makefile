.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c99 -Wall -Wextra -Wno-missing-field-initializers

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
	mkdata \
	gbstrim

all: $(tools)
	@:

clean:
	rm -f $(tools)
	rm -f gif2anim_nim/generated/*.o

gfx md5: common.h

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

gif2anim:
	cd gif2anim_nim/generated && ./compile_gif2anim.sh
	mv gif2anim_nim/generated/gif2anim ./gif2anim

mkdata: sheet_convert/cmd/mkdata/main.go
	cd sheet_convert && go build -o ../$@ ../$<
