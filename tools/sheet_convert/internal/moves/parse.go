package moves

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
)

const (
	cmName = iota
	cmDisplayName
	cmEffectConst
	cmType
	cmPower
	cmAccuracy
	cmPP
	cmChance
	cmRemark1
	cmRemark2
	cmOrigin
	cm_
)

func (s *State) ProcessMoves(sheetName string) error {
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
		if i < 1 {
			// skip first row
			continue
		}
		rr, e := toRow(r)
		if e != nil {
			slog.Error("invalid move row - SKIPPING!", "move", r[cmName], "row", i+1, "e", e)
			continue
		}
		m := Move{
			DispName: rr.dispName,
			Effect:   rr.fxConst,
			Power:    rr.power,
			Type:     rr.moveType,
			Accuracy: rr.accuracy,
			PP:       rr.pp,
			Chance:   rr.chance,
		}
		s.moves.Set(rr.name, m)
	}
	return nil
}

type moveRow struct {
	name     string
	dispName string
	fxConst  string
	moveType string
	power    int
	accuracy int
	pp       int
	chance   int
}

func toRow(or []string) (*moveRow, error) {
	r := utils.NormalizeRow(or, cm_)
	if r[cmEffectConst] == "" {
		slog.Error("effect constant is empty")
		return nil, fmt.Errorf("effect constant is empty")
	}
	power, e := strconv.Atoi(r[cmPower])
	if e != nil {
		slog.Error("invalid power value", "v", r[cmPower], "e", e)
		return nil, e
	}
	accuracy, e := strconv.Atoi(r[cmAccuracy])
	if e != nil {
		slog.Error("invalid accuracy value", "v", r[cmAccuracy], "e", e)
		return nil, e
	}
	pp, e := strconv.Atoi(r[cmPP])
	if e != nil {
		slog.Error("invalid pp value", "v", r[cmPP], "e", e)
		return nil, e
	}
	chance, e := strconv.Atoi(r[cmChance])
	if e != nil {
		slog.Error("invalid chance value", "v", r[cmChance], "e", e)
		return nil, e
	}
	return &moveRow{
		name:     r[cmName],
		dispName: r[cmDisplayName],
		fxConst:  r[cmEffectConst],
		moveType: r[cmType],
		power:    power,
		accuracy: accuracy,
		pp:       pp,
		chance:   chance,
	}, nil
}
