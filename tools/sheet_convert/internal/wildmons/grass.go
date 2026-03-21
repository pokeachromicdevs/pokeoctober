package wildmons

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
)

// expected sheet layout
const (
	cgMap = iota
	cgTime
	cgRate
	cgMon1Species
	cgMon1Level
	cgMon2Species
	cgMon2Level
	cgMon3Species
	cgMon3Level
	cgMon4Species
	cgMon4Level
	cgMon5Species
	cgMon5Level
	cgMon6Species
	cgMon6Level
	cgMon7Species
	cgMon7Level
	cg_ // number of columns
)

func (s *State) ProcessGrassMons(sheetName string) error {
	// state prechecking
	if s.in == nil {
		return fmt.Errorf("`in` empty")
	}
	rs, e := s.in.GetRows(sheetName)
	if e != nil {
		slog.Error("can't get rows", "e", e)
		return e
	}
	if (len(rs)-1)%3 != 0 {
		e = fmt.Errorf("invalid sheet format")
		slog.Error("number of filled-in rows must be a multiple of 3", "numRows", len(rs))
		return e
	}
	activerow := [][]string{}
	for i, r := range rs {
		if i < 1 {
			// skip header row
			continue
		} else if ((i - 1) % 3) == 2 {
			activerow = append(activerow, r)
			// process the row...
			gr, e := grassRowFrom(activerow)
			if e != nil {
				slog.Error("couldn't convert grass mons", "row", i, "e", e)
				return e
			}
			// add to global state
			st := utils.NewOrderedMap[string, TimeOfDaySpec]()
			st.Set("Morn", gr.morn)
			st.Set("Day", gr.day)
			st.Set("Nite", gr.nite)
			s.RegisteredGrassMaps.Set(gr.location, st)
			activerow = [][]string{}
		} else {
			activerow = append(activerow, r)
		}
	}
	return nil
}

type grassRow struct {
	location string
	morn     TimeOfDaySpec
	day      TimeOfDaySpec
	nite     TimeOfDaySpec
}

func grassRowFrom(row [][]string) (*grassRow, error) {
	if len(row) != 3 {
		slog.Error("grassRowFrom can't accept other than a bundle of 3 rows")
		return nil, fmt.Errorf("invalid row sets")
	}

	g := &grassRow{}

	if row[0][cgTime] != "Morn" {
		slog.Error("first row must have 'Morn' in the time column")
		return nil, fmt.Errorf("invalid input for row 0")
	}
	g.location = row[0][cgMap]
	morn, e := makeTimeOfDayParseStruct(row[0])
	if e != nil {
		slog.Error("while parsing morning row", "e", e)
		return nil, e
	}
	g.morn = *morn

	if row[1][cgTime] != "Day" {
		slog.Error("second row must have 'Day' in the time column")
		return nil, fmt.Errorf("invalid input for row 1")
	}
	day, e := makeTimeOfDayParseStruct(row[1])
	if e != nil {
		slog.Error("while parsing day row", "e", e)
		return nil, e
	}
	g.day = *day

	if row[2][cgTime] != "Nite" {
		slog.Error("third row must have 'Nite' in the time column")
		return nil, fmt.Errorf("invalid input for row 2")
	}
	nite, e := makeTimeOfDayParseStruct(row[2])
	if e != nil {
		slog.Error("while parsing night row", "e", e)
		return nil, e
	}
	g.nite = *nite

	return g, nil
}

func makeTimeOfDayParseStruct(rr []string) (*TimeOfDaySpec, error) {
	rate, e := strconv.Atoi(rr[cgRate])
	if e != nil {
		slog.Error("can't parse morn rate", "r", rr[cgRate], "e", e)
		return nil, e
	}
	monList := []Pokemon{}
	curMon := Pokemon{}
	for i := cgMon1Species; i <= cgMon7Level; i++ {
		switch i {
		case cgMon1Species, cgMon2Species, cgMon3Species, cgMon4Species, cgMon5Species, cgMon6Species, cgMon7Species:
			curMon.Species = rr[i]
		case cgMon1Level, cgMon2Level, cgMon3Level, cgMon4Level, cgMon5Level, cgMon6Level, cgMon7Level:
			l, e := strconv.Atoi(rr[i])
			if e != nil {
				slog.Error("invalid level", "l", rr[i], "e", e)
				return nil, e
			}
			curMon.Level = l
			monList = append(monList, curMon)
		}
	}
	return &TimeOfDaySpec{
		Chance: rate,
		Mons:   monList,
	}, nil
}
