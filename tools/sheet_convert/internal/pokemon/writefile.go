package pokemon

import (
	"fmt"
	"sheetconvert/internal/utils"
	"slices"
)

func (s *State) WriteBuffers() error {
	// write preamble
	preamble := "; The following was generated from \n; " + s.in.Path + ", do not edit directly!"
	fmt.Fprintln(&s.Files.Constants, preamble)
	fmt.Fprintln(&s.Files.Names, preamble)
	fmt.Fprintf(&s.Files.Names, "PokemonNames::\n")
	fmt.Fprintln(&s.Files.DexEntryPtrs, preamble)
	fmt.Fprintf(&s.Files.DexEntryPtrs, "PokedexDataPointerTable:\n")
	fmt.Fprintln(&s.Files.DexOrder, preamble)
	fmt.Fprintf(&s.Files.DexOrder, "OldPokedexOrder:\n")
	nameListForSort := make([]string, 0, s.poke.Len())
	fmt.Fprintln(&s.Files.DexAlpha, preamble)
	fmt.Fprintf(&s.Files.DexAlpha, "AlphabeticalPokedexOrder:\n")
	dexHabitat := utils.NewOrderedMap[string, []string]()
	fmt.Fprintln(&s.Files.DexHabitat, preamble)
	fmt.Fprintf(&s.Files.DexHabitat, "HabitatPokedexOrder:\n")
	fmt.Fprintln(&s.Files.PicPtrs, preamble)
	fmt.Fprintln(&s.Files.PalettePtrs, preamble)

	for n, v := range s.poke.All() {
		// constants
		fmt.Fprintf(
			&s.Files.Constants,
			"\tconst %s\n", utils.NormalizeAsConstNameUnderspaces(n),
		)

		// names
		fmt.Fprintf(
			&s.Files.Names,
			"\tdb \"%s\"\n", utils.NormalizeAsPokeName(v.DisplayName),
		)

		// dex entry pointers
		fmt.Fprintf(
			&s.Files.DexEntryPtrs,
			"\tdba %sPokedexEntry\n", utils.NormalizeAsSymbolName(n),
		)

		// national dex order
		fmt.Fprintf(
			&s.Files.DexOrder,
			"\tdw %s\n", utils.NormalizeAsConstNameUnderspaces(n),
		)

		// for alphabetical order
		nameListForSort = append(nameListForSort, n)

		// for habitat order
		hbtContent, ok := dexHabitat.Get(v.Habitat)
		if !ok {
			hbtContent = make([]string, 0)
		}
		hbtContent = append(hbtContent, n)
		dexHabitat.Set(v.Habitat, hbtContent)

		// pic pointers
		fmt.Fprintf(
			&s.Files.PicPtrs,
			"\tmon_pic %s\n", utils.NormalizeAsSymbolName(n),
		)

		// palettes
		fmt.Fprintf(
			&s.Files.PalettePtrs,
			"INCBIN \"gfx/pokemon/%s/front.gbcpal\", middle_colors\nINCLUDE \"gfx/pokemon/%s/shiny.pal\"\n",
			utils.NormalizeAsFileName(n),
			utils.NormalizeAsFileName(n),
		)
	}

	slices.Sort(nameListForSort)
	for _, n := range nameListForSort {
		// alphabetical dex order
		fmt.Fprintf(
			&s.Files.DexAlpha,
			"\tdw %s\n", utils.NormalizeAsConstNameUnderspaces(n),
		)
	}

	for h, l := range dexHabitat.All() {
		// habitat dex order
		fmt.Fprintf(
			&s.Files.DexHabitat,
			"; %s\n", h,
		)
		for _, i := range l {
			fmt.Fprintf(
				&s.Files.DexHabitat,
				"\tdw %s\n", utils.NormalizeAsConstNameUnderspaces(i),
			)
		}
	}
	return nil
}
