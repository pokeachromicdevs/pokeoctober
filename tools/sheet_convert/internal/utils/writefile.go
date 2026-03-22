package utils

import (
	"io"
	"log/slog"
	"os"
	"strings"
)

func Wr1file(outdir string, which strings.Builder, name string) error {
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
