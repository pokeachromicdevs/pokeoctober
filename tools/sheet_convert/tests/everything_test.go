package tests

import (
	"fmt"
	"log/slog"
	"os"
	"sheetconvert/internal/moves"
	"sheetconvert/internal/types"
	"sheetconvert/internal/wildmons"
	"testing"
)

func TestGrassMons(t *testing.T) {
	handler := slog.NewTextHandler(os.Stderr, nil)
	logger := slog.New(handler)
	slog.SetDefault(logger)

	ss, _ := wildmons.MakeState("master.xlsx")
	ss.ProcessGrassMons("Kansai Overworld Wild")
	ss.WriteBuffers()
	fmt.Fprintf(os.Stderr, "%s\n", ss.Files.Grass.String())
}

func TestWaterMons(t *testing.T) {
	handler := slog.NewTextHandler(os.Stderr, nil)
	logger := slog.New(handler)
	slog.SetDefault(logger)

	ss, _ := wildmons.MakeState("master.xlsx")
	ss.ProcessWaterMons("Kansai Water Wild")
	ss.WriteBuffers()
	fmt.Fprintf(os.Stderr, "%s\n", ss.Files.Water.String())
}

func TestTypes(t *testing.T) {
	handler := slog.NewTextHandler(os.Stderr, nil)
	logger := slog.New(handler)
	slog.SetDefault(logger)

	ss, _ := types.MakeState("../../../sheets/master.xlsx")
	ss.ProcessTypes("Types")
	ss.ProcessMatchups("Type Matchups")
	ss.WriteBuffers()
	fmt.Fprintf(os.Stderr, "%s\n", ss.Files.Matchups.String())
}

func TestMoves(t *testing.T) {
	handler := slog.NewTextHandler(os.Stderr, nil)
	logger := slog.New(handler)
	slog.SetDefault(logger)

	ss, _ := moves.MakeState("../../../sheets/master.xlsx")
	ss.ProcessMoves("Moves")
	ss.WriteBuffers()
	fmt.Fprintf(os.Stderr, "%s\n", ss.Files.CritMoves.String())
}
