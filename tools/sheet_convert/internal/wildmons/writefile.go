package wildmons

import (
	"fmt"
	"sheetconvert/internal/utils"
)

func (s *State) WriteBuffers() error {
	// write preamble
	preamble := "; The following was generated from \n; " + s.in.Path + ", do not edit directly!"
	fmt.Fprintln(&s.Files.Grass, preamble)
	fmt.Fprintln(&s.Files.Water, preamble)

	for m, v := range s.RegisteredGrassMaps.All() {
		morn, _ := v.Get("Morn")
		day, _ := v.Get("Day")
		nite, _ := v.Get("Nite")
		fmt.Fprintf(
			&s.Files.Grass,
			"\tmap_id %s\n\tdb %d percent, %d percent, %d percent ; morn/day/nite\n",
			utils.NormalizeAsConstNameUnderspaces(m),
			morn.Chance,
			day.Chance,
			nite.Chance,
		)
		fmt.Fprintf(&s.Files.Grass, "\t; morn\n")
		for _, entry := range morn.Mons {
			fmt.Fprintf(&s.Files.Grass,
				"\tdbw %d, %s\n",
				entry.Level,
				utils.NormalizeAsConstNameUnderspaces(entry.Species),
			)
		}
		fmt.Fprintf(&s.Files.Grass, "\t; day\n")
		for _, entry := range day.Mons {
			fmt.Fprintf(&s.Files.Grass,
				"\tdbw %d, %s\n",
				entry.Level,
				utils.NormalizeAsConstNameUnderspaces(entry.Species),
			)
		}
		fmt.Fprintf(&s.Files.Grass, "\t; nite\n")
		for _, entry := range nite.Mons {
			fmt.Fprintf(&s.Files.Grass,
				"\tdbw %d, %s\n",
				entry.Level,
				utils.NormalizeAsConstNameUnderspaces(entry.Species),
			)
		}

	}

	for m, v := range s.RegisteredWaterMaps.All() {
		all, _ := v.Get("Any")
		fmt.Fprintf(
			&s.Files.Water,
			"\tmap_id %s\n\tdb %d percent ; rate\n",
			utils.NormalizeAsConstNameUnderspaces(m),
			all.Chance,
		)
		for _, entry := range all.Mons {
			fmt.Fprintf(&s.Files.Water,
				"\tdbw %d, %s\n",
				entry.Level,
				utils.NormalizeAsConstNameUnderspaces(entry.Species),
			)
		}
	}

	return nil
}
