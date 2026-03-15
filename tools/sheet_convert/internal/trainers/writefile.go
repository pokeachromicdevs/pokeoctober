package trainers

import (
	"fmt"
)

// TODO based on the processed data in s.classes
// export trainer files to s.files
func (s *State) WriteBuffers() error {
	// write preamble
	preamble := "; The following was generated from \n; " + s.in.Path + ", do not edit directly!"
	fmt.Fprintln(&s.Files.TrainerConstants, preamble)
	fmt.Fprintln(&s.Files.Attributes, preamble)
	fmt.Fprintln(&s.Files.ClassNames, preamble)
	fmt.Fprintln(&s.Files.DVs, preamble)
	fmt.Fprintln(&s.Files.EncounterMusics, preamble)
	fmt.Fprintln(&s.Files.Palettes, preamble)
	fmt.Fprintln(&s.Files.Parties, preamble)
	fmt.Fprintln(&s.Files.PartyPtrs, preamble)
	fmt.Fprintln(&s.Files.PicPointers, preamble)

	s.writeTrInstances(
		&s.Files.TrainerConstants,
		&s.Files.Parties,
	)
	s.writeTrClasses(
		&s.Files.Attributes, &s.Files.ClassNames,
		&s.Files.DVs, &s.Files.EncounterMusics,
		&s.Files.Palettes, &s.Files.PicPointers,
		&s.Files.PartyPtrs,
	)
	return nil
}
