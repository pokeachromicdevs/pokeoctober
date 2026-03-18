package main

import (
	"flag"
	"fmt"
	"io"
	"log/slog"
	"os"
	"sheetconvert/internal/trainers"
	"strings"
)

func init() {
	slog.SetLogLoggerLevel(slog.LevelDebug)
}

var (
	in  = flag.String("in", "", "input xlsx")
	out = flag.String("out", "", "output folder")
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
	ss, e := trainers.MakeState(*in)
	if e != nil {
		slog.Error("could not open trainer sheet", "e", e)
		os.Exit(1)
	}
	slog.Info("parsing Trainer Class Attrs Master")
	e = ss.ProcessTrainerClasses("Trainer Class Attrs Master")
	if e != nil {
		slog.Error("could not convert to trainer class data", "e", e)
		os.Exit(1)
	}
	slog.Info("parsing Trainers Master")
	e = ss.ProcessTrainerInstances("Trainers Master")
	if e != nil {
		slog.Error("could not convert to trainer instance data", "e", e)
		os.Exit(1)
	}
	e = ss.WriteBuffers()
	if e != nil {
		slog.Error("could not write trainer data", "e", e)
		os.Exit(1)
	}
	e = wrfiles(*out, ss.Files)
	if e != nil {
		slog.Error("could not write trainer data", "e", e)
		os.Exit(1)
	}
	slog.Info("conversion OK")
}

func wrfiles(outdir string, i trainers.Files) error {
	e := os.MkdirAll(outdir, 0744)
	if e != nil {
		slog.Error("could not mkdir", "e", e)
		return e
	}

	e = wr1file(outdir, i.TrainerConstants, "trainer_constants.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.Parties, "trainer_parties.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.PartyPtrs, "party_pointers.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.Attributes, "attributes.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.ClassNames, "class_names.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.DVs, "dvs.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.EncounterMusics, "encounter_music.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.PicPointers, "pic_pointers.gen.asm")
	if e != nil {
		return e
	}

	e = wr1file(outdir, i.Palettes, "palettes.gen.asm")
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
