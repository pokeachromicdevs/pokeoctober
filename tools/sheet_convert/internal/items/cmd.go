package items

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
		slog.Error("could not open item sheet", "e", e)
		os.Exit(1)
	}
	slog.Info("parsing Items Master")
	e = ss.ProcessItems("Items Master")
	if e != nil {
		slog.Error("could not convert to item data", "e", e)
		os.Exit(1)
	}
	e = ss.WriteBuffers()
	if e != nil {
		slog.Error("could not write item data", "e", e)
		os.Exit(1)
	}
	e = wrfiles(*out, ss.Files)
	if e != nil {
		slog.Error("could not write item data", "e", e)
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

	e = utils.Wr1file(outdir, i.NormalItemConstants, "normal_item_constants.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.KeyItemConstants, "key_item_constants.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.BallItemConstants, "ball_item_constants.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.ItemNames, "names.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.ItemAttributes, "attributes.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.ItemEffectsDecls, "effect_pointers.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.ItemDescDecls, "description_pointers.gen.asm")
	if e != nil {
		return e
	}

	return nil
}
