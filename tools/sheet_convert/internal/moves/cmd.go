package moves

import (
	"flag"
	"fmt"
	"log/slog"
	"os"
	"sheetconvert/internal/utils"
)

func ProcessArgs(fs *flag.FlagSet, args []string) {
	var (
		in  = fs.String("in", "", "input xlsx")
		out = fs.String("out", "", "output folder")
	)
	fs.Parse(args)
	if fs.NArg() > 1 {
		fmt.Fprintf(flag.CommandLine.Output(), "No positional arguments allowed\n")
		fs.Usage()
		os.Exit(1)
	}
	set := make(map[string]bool)
	fs.Visit(func(f *flag.Flag) { set[f.Name] = true })
	if !set["in"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set input file\n")
		fs.Usage()
		os.Exit(1)
	}
	if !set["out"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set output folder\n")
		fs.Usage()
		os.Exit(1)
	}
	ss, e := MakeState(*in)
	if e != nil {
		slog.Error("could not open move sheet", "e", e)
		os.Exit(1)
	}
	slog.Info("parsing Moves")
	e = ss.ProcessMoves("Moves")
	if e != nil {
		slog.Error("could not convert to move data", "e", e)
		os.Exit(1)
	}
	e = ss.WriteBuffers()
	if e != nil {
		slog.Error("could not write move data", "e", e)
		os.Exit(1)
	}
	e = wrfiles(*out, ss.Files)
	if e != nil {
		slog.Error("could not write move data", "e", e)
		os.Exit(1)
	}
	slog.Info("conversion OK")
}

func wrfiles(outdir string, i Files) error {
	e := os.MkdirAll(outdir, 0744)
	if e != nil {
		slog.Error("could not mkdir", "e", e)
		return e
	}

	e = utils.Wr1file(outdir, i.Constants, "move_constants.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.MoveDefs, "moves.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.Names, "names.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.DescPtrs, "description_pointers.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.AnimPtrs, "animation_pointers.gen.asm")
	if e != nil {
		return e
	}

	return nil
}
