package wildmons

import (
	"flag"
	"fmt"
	"log/slog"
	"os"
	"sheetconvert/internal/utils"
)

func ProcessArgs(fs *flag.FlagSet, args []string) {
	var (
		in       = fs.String("in", "", "input xlsx")
		out      = fs.String("out", "", "output folder")
		ingrass  = fs.String("ingrass", "", "source sheet for wild grass data")
		inwater  = fs.String("inwater", "", "source sheet for wild sea data")
		basename = fs.String("basename", "", "region name")
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
	if !set["ingrass"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set sheet name for wild grass data\n")
		fs.Usage()
		os.Exit(1)
	}
	if !set["inwater"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set sheet name for wild water data\n")
		fs.Usage()
		os.Exit(1)
	}
	if !set["basename"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set region name\n")
		fs.Usage()
		os.Exit(1)
	}
	ss, e := MakeState(*in)
	if e != nil {
		slog.Error("could not open wildmons sheet", "e", e)
		os.Exit(1)
	}
	slog.Info("parsing " + *ingrass)
	e = ss.ProcessGrassMons(*ingrass)
	if e != nil {
		slog.Error("could not convert to grass wild data", "e", e)
		os.Exit(1)
	}
	e = ss.ProcessWaterMons(*inwater)
	if e != nil {
		slog.Error("could not convert to sea wild data", "e", e)
		os.Exit(1)
	}
	e = ss.WriteBuffers()
	if e != nil {
		slog.Error("could not write wild mon data", "e", e)
		os.Exit(1)
	}
	e = wrfiles(*out, *basename, ss.Files)
	if e != nil {
		slog.Error("could not write wild mon data", "e", e)
		os.Exit(1)
	}
	slog.Info("conversion OK")
}

func wrfiles(outdir string, basename string, i Files) error {
	e := os.MkdirAll(outdir, 0744)
	if e != nil {
		slog.Error("could not mkdir", "e", e)
		return e
	}

	e = utils.Wr1file(outdir, i.Grass, basename+"_grass.gen.asm")
	if e != nil {
		return e
	}

	e = utils.Wr1file(outdir, i.Water, basename+"_water.gen.asm")
	if e != nil {
		return e
	}

	return nil
}
