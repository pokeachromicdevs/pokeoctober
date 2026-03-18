package items

import (
	"fmt"
	"sheetconvert/internal/utils"
)

func (s *State) WriteBuffers() error {
	// write preamble
	preamble := "; The following was generated from \n; " + s.in.Path + ", do not edit directly!"
	fmt.Fprintln(&s.Files.NormalItemConstants, preamble)
	fmt.Fprintln(&s.Files.KeyItemConstants, preamble)
	fmt.Fprintln(&s.Files.BallItemConstants, preamble)
	fmt.Fprintln(&s.Files.ItemNames, preamble)
	fmt.Fprintln(&s.Files.ItemAttributes, preamble)
	fmt.Fprintln(&s.Files.ItemEffectsDecls, preamble)
	fmt.Fprintln(&s.Files.ItemDescDecls, preamble)

	fmt.Fprintf(&s.Files.ItemNames, "ItemNames::\n")
	fmt.Fprintf(&s.Files.ItemAttributes, "ItemAttributes1::\n")
	fmt.Fprintf(&s.Files.ItemEffectsDecls, "ItemEffects1::\n")
	fmt.Fprintf(&s.Files.ItemDescDecls, "ItemDescriptions1::\n")
	for n, v := range s.pockets.Item.All() {
		fmt.Fprintf(
			&s.Files.NormalItemConstants,
			"\tconst %s\n", utils.NormalizeAsConstNameUnderspaces(n),
		)

		fmt.Fprintf(
			&s.Files.ItemNames,
			"\tdb \"%s\"\n", utils.NormalizeName(v.Title),
		)

		fmt.Fprintf(
			&s.Files.ItemAttributes,
			"\t; %s\n"+
				"\titem_attribute %d, %s, %d, %s, %s, %s, %s\n",
			n,
			v.Price,
			v.HeldEffect,
			v.Parameter,
			v.Property,
			"ITEM",
			v.FieldSelectAction,
			v.BattleSelectAction,
		)

		fmt.Fprintf(
			&s.Files.ItemEffectsDecls,
			"\tdw %s\n", utils.NormalizeAsSymbolName(v.FieldEffect),
		)

		fmt.Fprintf(
			&s.Files.ItemDescDecls,
			"\tdw %s\n", utils.NormalizeAsSymbolName(n)+"Desc",
		)
	}

	fmt.Fprintf(&s.Files.ItemNames, "KeyItemNames::\n")
	fmt.Fprintf(&s.Files.ItemAttributes, "ItemKeyAttributes::\n")
	fmt.Fprintf(&s.Files.ItemEffectsDecls, "ItemKeyEffects::\n")
	fmt.Fprintf(&s.Files.ItemDescDecls, "ItemKeyDescriptions::\n")
	for n, v := range s.pockets.Key.All() {
		fmt.Fprintf(
			&s.Files.KeyItemConstants,
			"\tconst %s\n", utils.NormalizeAsConstNameUnderspaces(n),
		)

		fmt.Fprintf(
			&s.Files.ItemNames,
			"\tdb \"%s\"\n", utils.NormalizeName(v.Title),
		)

		fmt.Fprintf(
			&s.Files.ItemAttributes,
			"\t; %s\n"+
				"\titem_attribute %d, %s, %d, %s, %s, %s, %s\n",
			n,
			v.Price,
			v.HeldEffect,
			v.Parameter,
			v.Property,
			"KEY_ITEM",
			v.FieldSelectAction,
			v.BattleSelectAction,
		)

		fmt.Fprintf(
			&s.Files.ItemEffectsDecls,
			"\tdw %s\n", utils.NormalizeAsSymbolName(v.FieldEffect),
		)

		fmt.Fprintf(
			&s.Files.ItemDescDecls,
			"\tdw %s\n", utils.NormalizeAsSymbolName(n)+"Desc",
		)
	}

	fmt.Fprintf(&s.Files.ItemNames, "BallNames::\n")
	fmt.Fprintf(&s.Files.ItemAttributes, "ItemBallAttributes::\n")
	fmt.Fprintf(&s.Files.ItemEffectsDecls, "ItemBallEffects::\n")
	fmt.Fprintf(&s.Files.ItemDescDecls, "ItemBallDescriptions::\n")
	for n, v := range s.pockets.Ball.All() {
		fmt.Fprintf(
			&s.Files.BallItemConstants,
			"\tconst %s\n", utils.NormalizeAsConstNameUnderspaces(n),
		)

		fmt.Fprintf(
			&s.Files.ItemNames,
			"\tdb \"%s\"\n", utils.NormalizeName(v.Title),
		)

		fmt.Fprintf(
			&s.Files.ItemAttributes,
			"\t; %s\n"+
				"\titem_attribute %d, %s, %d, %s, %s, %s, %s\n",
			n,
			v.Price,
			v.HeldEffect,
			v.Parameter,
			v.Property,
			"BALL",
			v.FieldSelectAction,
			v.BattleSelectAction,
		)

		fmt.Fprintf(
			&s.Files.ItemEffectsDecls,
			"\tdw %s\n", utils.NormalizeAsSymbolName(v.FieldEffect),
		)

		fmt.Fprintf(
			&s.Files.ItemDescDecls,
			"\tdw %s\n", utils.NormalizeAsSymbolName(n)+"Desc",
		)
	}

	return nil
}
