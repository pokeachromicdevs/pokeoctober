package main

import (
	"flag"
	"fmt"
	"io"
	"log/slog"
	"os"
	"sheetconvert/internal/wildmons"
	"strings"
)

func init() {
	slog.SetLogLoggerLevel(slog.LevelDebug)
}

var (
	in       = flag.String("in", "", "input xlsx")
	out      = flag.String("out", "", "output folder")
	ingrass  = flag.String("ingrass", "", "source sheet for wild grass data")
	inwater  = flag.String("inwater", "", "source sheet for wild sea data")
	basename = flag.String("basename", "", "region name")
)

func main() {
	flag.Parse()
	if flag.NArg() > 0 {
		fmt.Fprintf(flag.CommandLine.Output(), "No positional arguments allowed\n")
		flag.Usage()
		os.Exit(1)
	}
	set := make(map[string]bool)
	flag.Visit(func(f *flag.Flag) { set[f.Name] = true })
	if !set["in"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set input file\n")
		flag.Usage()
		os.Exit(1)
	}
	if !set["out"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set output folder\n")
		flag.Usage()
		os.Exit(1)
	}
	if !set["ingrass"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set sheet name for wild grass data\n")
		flag.Usage()
		os.Exit(1)
	}
	if !set["inwater"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set sheet name for wild water data\n")
		flag.Usage()
		os.Exit(1)
	}
	if !set["basename"] {
		fmt.Fprintf(flag.CommandLine.Output(), "Must set region name\n")
		flag.Usage()
		os.Exit(1)
	}
	ss, e := wildmons.MakeState(*in)
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

func wrfiles(outdir string, basename string, i wildmons.Files) error {
	e := os.MkdirAll(outdir, 0744)
	if e != nil {
		slog.Error("could not mkdir", "e", e)
		return e
	}

	e = wr1file(outdir, i.Grass, basename+"_grass.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.Water, basename+"_water.gen.asm")
	if e != nil {
		return e
	}

	return nil
}

func wr1file(outdir string, which strings.Builder, name string) error {
	c := strings.NewReader(which.String())
	f, e := os.Create(outdir + "/" + name)
	if e != nil {
		slog.Error("could not create file", "name", name, "e", e)
		return e
	}
	_, e = io.Copy(f, c)
	if e != nil {
		f.Close()
		slog.Error("could not write file", "name", name, "e", e)
		return e
	}
	f.Close()
	return nil
}
