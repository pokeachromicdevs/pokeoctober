package wildmons

import (
	"log/slog"
	"sheetconvert/internal/utils"
	"strings"

	"github.com/xuri/excelize/v2"
)

type State struct {
	in                  *excelize.File
	Files               Files
	RegisteredGrassMaps *utils.OrderedMap[string, *utils.OrderedMap[string, TimeOfDaySpec]]
	RegisteredWaterMaps *utils.OrderedMap[string, *utils.OrderedMap[string, TimeOfDaySpec]]
}

type TimesOfDay struct {
	Morning TimeOfDaySpec
	Day     TimeOfDaySpec
	Night   TimeOfDaySpec
}

type TimeOfDaySpec struct {
	Chance int
	Mons   []Pokemon
}

type Files struct {
	// data/wild/*_grass.asm
	Grass strings.Builder
	// data/wild/*_water.asm
	Water strings.Builder
}

type Pokemon struct {
	Species string
	Level   int
}

func MakeState(in_file string) (*State, error) {
	in, e := excelize.OpenFile(in_file) // need close
	if e != nil {
		slog.Error("can't open sheet", "e", e)
		return nil, e
	}
	return &State{
		in:                  in,
		RegisteredGrassMaps: utils.NewOrderedMap[string, *utils.OrderedMap[string, TimeOfDaySpec]](),
		RegisteredWaterMaps: utils.NewOrderedMap[string, *utils.OrderedMap[string, TimeOfDaySpec]](),
	}, nil
}
