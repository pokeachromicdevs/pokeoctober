package moves

import (
	"fmt"
	"sheetconvert/internal/utils"
)

func (s *State) WriteBuffers() error {
	// write preamble
	preamble := "; The following was generated from \n; " + s.in.Path + ", do not edit directly!"
	fmt.Fprintln(&s.Files.Constants, preamble)
	fmt.Fprintln(&s.Files.MoveDefs, preamble)
	fmt.Fprintln(&s.Files.Names, preamble)
	fmt.Fprintln(&s.Files.DescPtrs, preamble)
	fmt.Fprintln(&s.Files.AnimPtrs, preamble)

	for k, m := range s.moves.All() {
		fmt.Fprintf(&s.Files.Constants,
			"\tconst %s\n",
			utils.NormalizeAsConstNameUnderspaces(k),
		)

		fmt.Fprintf(&s.Files.MoveDefs,
			"\tmove EFFECT_%s, %d, %s, %d, %d, %d ; %s\n",
			utils.NormalizeAsConstNameUnderspaces(m.Effect),
			m.Power,
			utils.NormalizeAsConstNameUnderspaces(m.Type),
			m.Accuracy,
			m.PP,
			m.Chance,
			k,
		)

		fmt.Fprintf(&s.Files.Names,
			"\tdb \"%s\"\n",
			utils.NormalizeName(m.DispName),
		)

		fmt.Fprintf(&s.Files.DescPtrs,
			"\tdw %sDescription\n",
			utils.NormalizeAsSymbolName(k),
		)

		fmt.Fprintf(&s.Files.AnimPtrs,
			"\tdw BattleAnim_%s\n",
			utils.NormalizeAsSymbolName(k),
		)
	}
	return nil
}
