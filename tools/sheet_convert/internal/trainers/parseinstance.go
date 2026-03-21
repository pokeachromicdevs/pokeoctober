package trainers

import (
	"fmt"
	"io"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
)

// expected sheet layout
const (
	// not parsed, informational only
	ciWhere = iota
	// this is the trigger to define an instance
	ciWhen
	// if set, constants will use this instead of _1, _2, ...
	ciSuggestedLabel
	// REQUIRED, if `When` is set
	ciTrainerClass
	// REQUIRED, if `When` is set
	ciName
	// up to 6 of the consequent rows
	ciPokemon
	ciLv
	ciHeldItem
	ciMove1
	ciMove2
	ciMove3
	ciMove4
	ci_ // ← number of columns
)

// process trainer instances in sheetName
func (s *State) ProcessTrainerInstances(sheetName string) error {
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
	for i, r := range rs {
		if i == 0 { // skip header row
			continue
		}
		// attempt deserialization of current row's data
		rr, e := insRowFrom(r)
		if e != nil {
			slog.Error(fmt.Sprintf("can't parse row %d - SKIPPING!", i+1), "e", e)
			continue
		}
		// this is the trigger, if this is not filled then no such trainer will be in
		if rr.When != "" {
			// must have the information filled out
			if rr.Class == "" {
				slog.Error(fmt.Sprintf("row %d, WHEN is defined but CLASS is empty - SKIPPING!", i+1))
				continue
			}
			if rr.Name == "" {
				slog.Error(fmt.Sprintf("row %d, WHEN is defined but CLASS is empty - SKIPPING!", i+1))
				continue
			}

			// get class
			nowTrainersList, classOk := s.classes.Get(rr.Class)
			if !classOk {
				slog.Error(fmt.Sprintf("at row %d: class %s was not defined - SKIPPING!", i+1, rr.Class), "e", e)
				continue
			}

			// put an instance in
			var iid string
			if rr.SuggestLabel != "" {
				iid = rr.SuggestLabel
			} else {
				iid = nextId(nowTrainersList.Instances, rr.Name)
			}
			ti := &TrainerInstance{
				Name:       rr.Name,
				InstanceId: iid,
				MonList:    make([]Pokemon, 0, 6),
			}
			nowTrainersList.Instances = append(nowTrainersList.Instances, ti)
			s.appendTarget = &ti.MonList
		}

		if s.appendTarget == nil {
			slog.Warn("no pokemon data append target... SKIPPING!")
			continue
		}
		def := Pokemon{
			Species:  rr.PartyMon,
			Level:    rr.PartyLev,
			HeldItem: rr.HeldItem,
			MoveList: []string{},
		}
		if rr.Move1 != "" {
			def.MoveList = append(def.MoveList, rr.Move1)
		}
		if rr.Move2 != "" {
			def.MoveList = append(def.MoveList, rr.Move2)
		}
		if rr.Move3 != "" {
			def.MoveList = append(def.MoveList, rr.Move3)
		}
		if rr.Move4 != "" {
			def.MoveList = append(def.MoveList, rr.Move4)
		}
		*s.appendTarget = append(*s.appendTarget, def)
	}
	return nil
}

func (s *State) writeTrInstances(consts io.Writer, parties io.Writer) {
	for k, v := range s.classes.All() {
		fmt.Fprintf(consts,
			"\n\ttrainerclass TC_%s\n",
			utils.NormalizeAsConstName(k),
		)
		//
		fmt.Fprintf(parties,
			"\nSECTION \"Trainer Class %s\", ROMX\n"+
				"%sGroup:\n",
			k, utils.NormalizeAsSymbolName(k),
		)
		for _, i := range v.Instances {
			fmt.Fprintf(consts,
				"\tconst %s\n",
				utils.NormalizeAsConstName(k+"_"+i.Name+"_"+i.InstanceId),
			)
			fmt.Fprintf(parties,
				"\tnext_party ; %s (%s)\n", i.Name, i.InstanceId,
			)

			// determine what kind of battle this is
			moves := false
			items := false
			verdict := "TRAINERTYPE_NORMAL"
			for _, m := range i.MonList {
				if m.HeldItem != "" {
					items = true
				}
				if len(m.MoveList) > 0 {
					moves = true
				}
			}
			if items {
				if moves {
					verdict = "TRAINERTYPE_ITEM | TRAINERTYPE_MOVES"
				} else {
					verdict = "TRAINERTYPE_ITEM"
				}
			} else {
				if moves {
					verdict = "TRAINERTYPE_MOVES"
				}
			}

			// name, trainer type
			fmt.Fprintf(parties,
				"\t\tdb \"%s\", %s\n", utils.NormalizeName(i.Name), verdict,
			)

			// party list
			for _, m := range i.MonList {
				// species
				fmt.Fprintf(parties,
					"\t\tdbw %d, %s\n", m.Level, utils.NormalizeAsConstName(m.Species),
				)
				// item
				if items {
					if m.HeldItem == "" {
						fmt.Fprintf(parties, "\t\tdw NO_ITEM\n")
					} else {
						fmt.Fprintf(parties, "\t\tdw %s\n", utils.NormalizeAsConstNameUnderspaces(m.HeldItem))
					}
				}
				// moves
				if moves {
					fmt.Fprintf(parties, "\t\tdw ")
					for i := range 4 {
						if i >= len(m.MoveList) {
							fmt.Fprintf(parties, "NO_MOVE")
						} else {
							fmt.Fprint(parties, utils.NormalizeAsConstNameUnderspaces(m.MoveList[i]))
						}
						if i < 3 {
							fmt.Fprintf(parties, ", ")
						}
					}
					fmt.Fprintf(parties, "\n")
				}
			}

			fmt.Fprintf(parties,
				"\tend_party\n",
			)
		}
		fmt.Fprintf(parties,
			"\tend_party_list\n",
		)
	}
}

type insRow struct {
	Where        string
	When         string
	SuggestLabel string
	Class        string
	Name         string
	PartyMon     string
	PartyLev     int
	HeldItem     string
	Move1        string
	Move2        string
	Move3        string
	Move4        string
}

// deserialize a []string row into Row
func insRowFrom(r []string) (*insRow, error) {
	o := utils.NormalizeRow(r, ci_)

	// validate party level
	lv, e := strconv.Atoi(o[ciLv])
	if e != nil {
		slog.Error("invalid level number", "lv", o[6], "e", e)
		return nil, e
	}
	if (lv < 1) || (lv > 100) {
		e := fmt.Errorf("level %d is not in the range of 1-100", lv)
		slog.Error("invalid level number", "e", e)
		return nil, e
	}

	// deserialized row
	return &insRow{
		Where:        o[ciWhere],
		When:         o[ciWhen],
		SuggestLabel: o[ciSuggestedLabel],
		Class:        o[ciTrainerClass],
		Name:         o[ciName],
		PartyMon:     o[ciPokemon],
		PartyLev:     lv,
		HeldItem:     o[ciHeldItem],
		Move1:        o[ciMove1],
		Move2:        o[ciMove2],
		Move3:        o[ciMove3],
		Move4:        o[ciMove4],
	}, nil
}
