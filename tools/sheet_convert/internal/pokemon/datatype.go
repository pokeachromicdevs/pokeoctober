package pokemon

import (
	"log/slog"
	"sheetconvert/internal/utils"
	"strings"

	"github.com/xuri/excelize/v2"
)

type State struct {
	in    *excelize.File
	Files Files
	poke  *utils.OrderedMap[string, *pokemon]
}

type pokemon struct {
	Name        string
	DisplayName string
	Habitat     string
}

type Files struct {
	// constants/pokemon_constants.asm XX
	Constants strings.Builder
	// data/pokemon/base_stats.asm
	BaseStats strings.Builder
	// data/pokemon/names.asm XX
	Names strings.Builder
	// data/pokemon/dex_entry_pointers.asm XX
	DexEntryPtrs strings.Builder
	// data/pokemon/dex_order_new.asm XX
	DexOrder strings.Builder // "old" / national dex order
	// data/pokemon/dex_order_alpha.asm XX
	DexAlpha strings.Builder // alphabetical
	// data/pokemon/dex_order_habitat.asm XX
	DexHabitat strings.Builder
	// data/pokemon/menu_icons.asm
	MenuIcons strings.Builder
	// data/pokemon/palettes.asm XX
	PalettePtrs strings.Builder
	// data/pokemon/evos_attacks.asm
	EvoAttacks strings.Builder
	// data/pokemon/egg_moves_pointers.asm
	EggMoves strings.Builder
	// data/pokemon/evolution_moves.asm
	EvoMoves strings.Builder
	// data/pokemon/pic_pointers.asm XX
	PicPtrs strings.Builder
	// data/pokemon/first_stages.asm
	FirstEvos strings.Builder
	// data/pokemon/follow_sprite_pointers.asm
	FollowDefs strings.Builder
}

func MakeState(in_file string) (*State, error) {
	in, e := excelize.OpenFile(in_file) // need close
	if e != nil {
		slog.Error("can't open sheet", "e", e)
		return nil, e
	}
	return &State{
		poke: utils.NewOrderedMap[string, *pokemon](),
		in:   in,
	}, nil
}
