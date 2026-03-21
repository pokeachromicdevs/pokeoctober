package wildmons

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
)

// expected sheet layout
const (
	cwMap = iota
	cwRate
	cwMon1Species
	cwMon1Level
	cwMon2Species
	cwMon2Level
	cwMon3Species
	cwMon3Level
	cw_ // number of columns
)

func (s *State) ProcessWaterMons(sheetName string) error {
	// state prechecking
	if s.in == nil {
		return fmt.Errorf("`in` empty")
	}
	rs, e := s.in.GetRows(sheetName)
	if e != nil {
		slog.Error("can't get rows", "e", e)
		return e
	}
	for i, r := range rs {
		if i < 1 {
			// skip header row
			continue
		} else {
			// process the row...
			if len(r) < cw_ {
				slog.Error("row too small -- SKIPPING", "row", i)
				continue
			}
			rr, e := makeTimeOfDayWaterParseStruct(r)
			if e != nil {
				slog.Error("couldn't convert water mon -- SKIPPING", "row", i, "e", e)
				continue
			}
			// add to global state
			st := utils.NewOrderedMap[string, TimeOfDaySpec]()
			st.Set("Any", TimeOfDaySpec{
				Chance: rr.Chance,
				Mons:   rr.Mons,
			})
			s.RegisteredWaterMaps.Set(r[cwMap], st)
		}
	}
	return nil
}

func makeTimeOfDayWaterParseStruct(rr []string) (*TimeOfDaySpec, error) {
	rate, e := strconv.Atoi(rr[cwRate])
	if e != nil {
		slog.Error("can't parse rate", "r", rr[cwRate], "e", e)
		return nil, e
	}
	monList := []Pokemon{}
	curMon := Pokemon{}
	for i := cwMon1Species; i <= cwMon3Level; i++ {
		switch i {
		case cwMon1Species, cwMon2Species, cwMon3Species:
			curMon.Species = rr[i]
		case cwMon1Level, cwMon2Level, cwMon3Level:
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
