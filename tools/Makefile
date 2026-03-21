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
	mktrainerdata \
	mkitemdata \
	mkwilddata \
	mktypedata \
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

mktrainerdata: sheet_convert/cmd/mktrainerdata/main.go
	cd sheet_convert && go build -o ../$@ ../$<

mkitemdata: sheet_convert/cmd/mkitemdata/main.go
	cd sheet_convert && go build -o ../$@ ../$<

mkwilddata: sheet_convert/cmd/mkwilddata/main.go
	cd sheet_convert && go build -o ../$@ ../$<

mktypedata: sheet_convert/cmd/mktypedata/main.go
	cd sheet_convert && go build -o ../$@ ../$<
