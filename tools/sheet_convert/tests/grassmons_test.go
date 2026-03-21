package tests

import (
	"fmt"
	"log/slog"
	"os"
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
