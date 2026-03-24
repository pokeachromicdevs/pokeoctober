package moves

import (
	"log/slog"
	"sheetconvert/internal/utils"
	"strings"

	"github.com/xuri/excelize/v2"
)

type State struct {
	in    *excelize.File
	Files Files
	moves *utils.OrderedMap[string, Move]
}

type Move struct {
	DispName string
	Effect   string
	Power    int
	Type     string
	Accuracy int
	PP       int
	Chance   int
}

type Files struct {
	// constants/move_constants.asm
	Constants strings.Builder
	// data/moves/moves.asm
	MoveDefs strings.Builder
	// data/moves/names.asm
	Names strings.Builder
	// data/moves/descriptions.asm
	DescPtrs strings.Builder
	// data/moves/animations.asm
	AnimPtrs strings.Builder
}

// encapsulate this module's globals
func MakeState(in_file string) (*State, error) {
	in, e := excelize.OpenFile(in_file) // need close
	if e != nil {
		slog.Error("can't open sheet", "e", e)
		return nil, e
	}
	return &State{
		in:    in,
		Files: Files{},
		moves: utils.NewOrderedMap[string, Move](),
	}, nil
}
