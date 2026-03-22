package main

import (
	"flag"
	"fmt"
	"log/slog"
	"os"
	"sheetconvert/internal/items"
	"sheetconvert/internal/pokemon"
	"sheetconvert/internal/trainers"
	"sheetconvert/internal/types"
	"sheetconvert/internal/wildmons"
)

func init() {
	slog.SetLogLoggerLevel(slog.LevelDebug)
}

func main() {
	subcommand := map[string]func(*flag.FlagSet, []string){
		"item":    items.ProcessArgs,
		"pkmn":    pokemon.ProcessArgs,
		"trainer": trainers.ProcessArgs,
		"type":    types.ProcessArgs,
		"wild":    wildmons.ProcessArgs,
	}

	if len(os.Args) < 2 {
		fmt.Fprintf(os.Stderr, `Usage: %s [subcommand]
Missing subcommand!

Valid subcommands:
`, os.Args[0])
		for s := range subcommand {
			fmt.Fprintf(os.Stderr, "\t%s\n", s)
		}
		os.Exit(1)
	}

	gotCommand, ok := subcommand[os.Args[1]]
	if !ok {
		fmt.Fprintf(os.Stderr, `Usage: %s [subcommand]
Invalid subcommand: '%s'

Valid subcommands:
`, os.Args[0], os.Args[1])
		for s := range subcommand {
			fmt.Fprintf(os.Stderr, "\t%s\n", s)
		}
		os.Exit(1)
	}

	gotCommand(flag.NewFlagSet("", flag.ExitOnError), os.Args[2:])
}
