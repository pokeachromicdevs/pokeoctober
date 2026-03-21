package types

import (
	"log/slog"
	"sheetconvert/internal/utils"
	"strings"

	"github.com/xuri/excelize/v2"
)

type State struct {
	in          *excelize.File
	Files       Files
	typedefs    *utils.OrderedMap[string, *typedefs]
	matchupList []string
}

type Files struct {
	ConstantsPhys strings.Builder
	ConstantsSpec strings.Builder
	Names         strings.Builder
	SearchStrings strings.Builder
	SearchTypes   strings.Builder
	Matchups      strings.Builder
}

const (
	PS_PHYSICAL = iota
	PS_SPECIAL
)

type typedefs struct {
	display string
	psType  int
}

func MakeState(in_file string) (*State, error) {
	in, e := excelize.OpenFile(in_file) // need close
	if e != nil {
		slog.Error("can't open sheet", "e", e)
		return nil, e
	}
	return &State{
		in:       in,
		Files:    Files{},
		typedefs: utils.NewOrderedMap[string, *typedefs](),
	}, nil
}
