package pokemon

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
)

const (
	cdSpecies = iota
	cdDispName
	cdType1
	cdType2
	cdNote
	cdNameOrigin
	cdEggGroup1
	cdEggGroup2
	cdHabitat
	cd_
)

func (s *State) ProcessDex(sheetName string) error {
	// state prechecking
	if s.in == nil {
		return fmt.Errorf("`in` empty")
	}
	rs, e := s.in.GetRows(sheetName)
	if e != nil {
		slog.Error("can't get rows", "e", e)
		return e
	}

	// collect the data
	// more involved "game-ready" conversion of content
	for i, r := range rs {
		if i < 1 { // skip header row
			continue
		}
		rr, e := dexRowFrom(r)
		if e != nil {
			slog.Error(fmt.Sprintf("can't parse row %d - SKIPPING!", i+1), "e", e)
			continue
		}

		itemDef := dexDefFromItemRow(i, rr)
		s.poke.Set(rr.Species, itemDef)
	}
	return nil
}

type dexRow struct {
	Species  string
	DispName string
	Type1    string
	Type2    string
	Egg1     string
	Egg2     string
	Habitat  string
}

func dexRowFrom(r []string) (dexRow, error) {
	o := utils.NormalizeRow(r, cd_)
	var type1 string
	var type2 string
	var egg1 string
	var egg2 string
	if o[cdType1] != "-" {
		type1 = o[cdType1]
	}
	if o[cdType2] != "-" {
		type2 = o[cdType2]
	}
	return dexRow{
		Species:  o[cdSpecies],
		DispName: o[cdDispName],
		Type1:    type1,
		Type2:    type2,
		Egg1:     egg1,
		Egg2:     egg2,
		Habitat:  o[cdHabitat],
	}, nil
}

func dexDefFromItemRow(i int, rr dexRow) *pokemon {
	return &pokemon{
		Name:        rr.Species,
		DisplayName: rr.DispName,
		Habitat:     rr.Habitat,
	}
}
