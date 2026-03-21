package types

import (
	"fmt"
	"sheetconvert/internal/utils"
)

func (s *State) WriteBuffers() error {
	// write preamble
	preamble := "; The following was generated from \n; " + s.in.Path + ", do not edit directly!"
	fmt.Fprintln(&s.Files.ConstantsPhys, preamble)
	fmt.Fprintln(&s.Files.ConstantsSpec, preamble)
	fmt.Fprintln(&s.Files.Names, preamble)
	fmt.Fprintln(&s.Files.SearchStrings, preamble)
	fmt.Fprintln(&s.Files.SearchTypes, preamble)
	fmt.Fprintln(&s.Files.Matchups, preamble)

	fmt.Fprintf(&s.Files.SearchStrings,
		"\tdb \"%s@\"\n",
		utils.CenterText("----", 8),
	)

	for n, v := range s.typedefs.All() {
		switch v.psType {
		case PS_PHYSICAL:
			fmt.Fprintf(&s.Files.ConstantsPhys,
				"\tconst %s\n",
				utils.NormalizeAsConstNameUnderspaces(n),
			)
		case PS_SPECIAL:
			fmt.Fprintf(&s.Files.ConstantsSpec,
				"\tconst %s\n",
				utils.NormalizeAsConstNameUnderspaces(n),
			)
		}
		fmt.Fprintf(&s.Files.Names,
			"\tdw .%s\n",
			utils.NormalizeAsSymbolName(n),
		)
		fmt.Fprintf(&s.Files.SearchTypes,
			"\tdb %s\n",
			utils.NormalizeAsConstNameUnderspaces(n),
		)
		fmt.Fprintf(&s.Files.SearchStrings,
			"\tdb \"%s@\"\n",
			utils.CenterText(v.display, 8),
		)
	}

	for n, v := range s.typedefs.All() {
		fmt.Fprintf(&s.Files.Names,
			".%s: db \"%s\"\n",
			utils.NormalizeAsSymbolName(n),
			utils.NormalizeName(v.display),
		)
	}

	for _, i := range s.matchupList {
		fmt.Fprintf(&s.Files.Matchups,
			"db %s\n",
			i,
		)
	}
	return nil
}
