package types

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
)

const (
	ctName = iota
	ctDisplayName
	ctPhysSpec
	ct_
)

func (s *State) ProcessTypes(sheetName string) error {
	if s.in == nil {
		return fmt.Errorf("`in` empty")
	}
	rs, e := s.in.GetRows(sheetName)
	if e != nil {
		slog.Error("can't get rows", "e", e)
		return e
	}
	// collect the data
	for i, r := range rs {
		if i < 1 { // skip header row
			continue
		}
		rr, e := typedefRowFrom(r)
		if e != nil {
			slog.Error("can't convert row", "e", e, "row", i)
			return e
		}
		s.typedefs.Set(r[ctName], rr)
	}
	return nil
}

func (s *State) ProcessMatchups(sheetName string) error {
	if s.in == nil {
		return fmt.Errorf("`in` empty")
	}
	rs, e := s.in.GetRows(sheetName)
	if e != nil {
		slog.Error("can't get rows", "e", e)
		return e
	}
	// collect the data
	for i, r := range rs {
		if len(r) > 0 && r[0] == "" {
			// skip blank rows
			// caused by the thing at the last column
			// used to check for type sheet sanity...
			continue
		}
		if i == 0 {
			// skip header row
			continue
		} else {
			// WARNING: IT IS ASSUMED THAT THE COLUMN
			//          ORDER *MATCHES* THE ORDER IN
			//          WHICH THE TYPES WERE DEFINED!!
			ii := 0
			for j := range len(r) {
				switch r[j] {
				case "-": // regular
					ii++
				case "N": // no effect
					ka, ok := s.typedefs.KeyAt(ii)
					if ok {
						s.matchupList = append(s.matchupList,
							fmt.Sprintf("%s, %s, NO_EFFECT",
								utils.NormalizeAsConstNameUnderspaces(r[0]),
								utils.NormalizeAsConstNameUnderspaces(ka),
							),
						)
					}
					ii++
				case "S": // strong
					ka, ok := s.typedefs.KeyAt(ii)
					if ok {
						s.matchupList = append(s.matchupList,
							fmt.Sprintf("%s, %s, SUPER_EFFECTIVE",
								utils.NormalizeAsConstNameUnderspaces(r[0]),
								utils.NormalizeAsConstNameUnderspaces(ka),
							),
						)
					}
					ii++
				case "W": // weak
					ka, ok := s.typedefs.KeyAt(ii)
					if ok {
						s.matchupList = append(s.matchupList,
							fmt.Sprintf("%s, %s, NOT_VERY_EFFECTIVE",
								utils.NormalizeAsConstNameUnderspaces(r[0]),
								utils.NormalizeAsConstNameUnderspaces(ka),
							),
						)
					}
					ii++
				}
			}
		}
	}
	return nil
}

func typedefRowFrom(r []string) (*typedefs, error) {
	var psType int
	switch r[ctPhysSpec] {
	case "Physical":
		psType = PS_PHYSICAL
	case "Special":
		psType = PS_SPECIAL
	default:
		return nil, fmt.Errorf("phys/spec column must either be 'Physical' or 'Special'")
	}
	return &typedefs{
		display: r[ctDisplayName],
		psType:  psType,
	}, nil
}
