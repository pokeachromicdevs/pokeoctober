package trainers

import (
	"fmt"
	"io"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
	"strings"
)

// expected sheet layout
const (
	ccTrainerClass = iota
	ccName
	ccRemark
	ccDVs_ATK
	ccDVs_DEF
	ccDVs_SPD
	ccDVs_SPC
	ccBaseReward
	ccItemUsage
	ccSwitchPokemon
	ccMoveWeighting
	ccItemA
	ccItemB
	ccEncounterMusic
	ccGender
	cc_ // number of columns
)

// process trainer classses in sheetName
func (s *State) ProcessTrainerClasses(sheetName string) error {
	// state prechecking
	if s.in == nil {
		return fmt.Errorf("`in` empty")
	}
	rs, e := s.in.GetRows(sheetName)
	if e != nil {
		slog.Error("can't get rows", "e", e)
		return e
	}

	// collect the data
	for i, r := range rs {
		if i < 2 { // skip header row
			continue
		}

		rr, e := classRowFrom(r)
		if e != nil {
			slog.Error(fmt.Sprintf("can't parse row %d - SKIPPING!", i+1), "e", e)
			continue
		}

		s.addClassFromRow(i, rr)
	}
	return nil
}

func (s *State) writeTrClasses(
	attr io.Writer,
	clname io.Writer,
	dv io.Writer,
	emusic io.Writer,
	pal io.Writer,
	picptr io.Writer,
	partyPtr io.Writer,
) {
	fmt.Fprintf(partyPtr, "TrainerGroups:\n")
	fmt.Fprintf(attr, "TrainerClassAttributes:\n")
	fmt.Fprintf(clname, "TrainerClassNames::\n")
	fmt.Fprintf(dv, "TrainerClassDVs:\n\t;  atk,def,spd,spc\n")
	fmt.Fprintf(emusic, "TrainerEncounterMusic::\n")
	fmt.Fprintf(picptr, "TrainerPicPointers::\n")
	// fmt.Fprintf(pal, "TrainerPalettes:\n")
	for k, v := range s.classes.All() {
		fmt.Fprintf(partyPtr,
			"\tdba %sGroup\n",
			utils.NormalizeAsSymbolName(k),
		)
		//
		fmt.Fprintf(attr,
			"\n; %s\n", k,
		)
		fmt.Fprintf(attr,
			"\tdw %s, %s ; items\n", v.ItemA, v.ItemB,
		)
		fmt.Fprintf(attr,
			"\tdb %d ; base reward\n", v.BaseReward,
		)
		fmt.Fprintf(attr,
			"\tdw %s ; move strategy\n", v.MoveWeighting,
		)
		fmt.Fprintf(attr,
			"\tdw %s | %s ; item & switch strategy\n", v.UsageStrat, v.SwitchStrat,
		)
		//
		fmt.Fprintf(clname,
			"\tdb \"%s\"\n", utils.NormalizeName(v.Title),
		)
		//
		fmt.Fprintf(dv,
			"\tdn % 3d,% 3d,% 3d,% 3d ; %s\n", v.DVs[0], v.DVs[1], v.DVs[2], v.DVs[3], k,
		)
		//
		fmt.Fprintf(emusic,
			"\tdb %-30s ; %s\n", v.EncountMusic, k,
		)
		//
		fmt.Fprintf(picptr,
			"\tdba %sPic\n", utils.NormalizeAsSymbolName(k),
		)
		//
		fmt.Fprintf(pal,
			"INCBIN \"gfx/trainers/%s.gbcpal\", middle_colors\n", utils.NormalizeAsFileName(k),
		)
	}
}

type classRow struct {
	ClassName     string
	DispName      string
	Atk           int
	Def           int
	Spd           int
	Spc           int
	BaseReward    int
	ItemUsage     string
	SwitchPokemon string
	MoveWeighting string
	ItemA         string
	ItemB         string
	EncountMusic  string
	Gender        string
}

// deserialize a []string row into Row
func classRowFrom(r []string) (*classRow, error) {
	o := utils.NormalizeRow(r, cc_)
	at, e := validateDv(o[ccDVs_ATK])
	if e != nil {
		slog.Error("invalid ATK value", "e", e)
		return nil, e
	}
	df, e := validateDv(o[ccDVs_DEF])
	if e != nil {
		slog.Error("invalid DEF value", "e", e)
		return nil, e
	}
	sd, e := validateDv(o[ccDVs_SPD])
	if e != nil {
		slog.Error("invalid SPD value", "e", e)
		return nil, e
	}
	sc, e := validateDv(o[ccDVs_SPC])
	if e != nil {
		slog.Error("invalid SPC value", "e", e)
		return nil, e
	}
	reward, e := strconv.Atoi(o[ccBaseReward])
	if e != nil {
		slog.Error("invalid base reward", "lv", o[6], "e", e)
		return nil, e
	}
	if (reward < 1) || (reward > 255) {
		e := fmt.Errorf("base reward %d is not in the range of 1-255", reward)
		slog.Error("invalid reward number", "e", e)
		return nil, e
	}
	// deserialized row
	return &classRow{
		ClassName:     o[ccTrainerClass],
		DispName:      o[ccName],
		Atk:           at,
		Def:           df,
		Spd:           sd,
		Spc:           sc,
		BaseReward:    reward,
		ItemUsage:     o[ccItemUsage],
		SwitchPokemon: o[ccSwitchPokemon],
		MoveWeighting: o[ccMoveWeighting],
		ItemA:         o[ccItemA],
		ItemB:         o[ccItemB],
		EncountMusic:  o[ccEncounterMusic],
		Gender:        o[ccGender],
	}, nil
}

func validateDv(i string) (int, error) {
	// validate party level
	n, e := strconv.Atoi(i)
	if e != nil {
		slog.Error("invalid DV", "dv", i, "e", e)
		return 0, e
	}
	if (n < 0) || (n > 15) {
		e := fmt.Errorf("DV %d is not in the range of 0-15", n)
		slog.Error("invalid DV number", "e", e)
		return 0, e
	}
	return n, nil
}

func (s *State) addClassFromRow(i int, rr *classRow) {
	nowClass, ok := s.classes.Get(rr.ClassName)
	if !ok {
		nowClass = &TrainerClass{Instances: make([]*TrainerInstance, 0, 40)}
		s.classes.Set(rr.ClassName, nowClass)
	}

	nowClass.Title = rr.DispName
	if len(nowClass.Title) > utils.MaxNameLength {
		slog.Error(
			fmt.Sprintf("row %d - display name '%s' is longer than max name length (%d) - TRUNCATING!",
				i+1,
				nowClass.Title,
				utils.MaxNameLength,
			),
		)
		nowClass.Title = string([]rune(nowClass.Title[:11]))
	}
	nowClass.DVs = []int{
		rr.Atk,
		rr.Def,
		rr.Spd,
		rr.Spc,
	}
	nowClass.BaseReward = rr.BaseReward
	nowClass.UsageStrat = utils.NormalizeAsConstName(rr.ItemUsage + "_USE")
	nowClass.SwitchStrat = utils.NormalizeAsConstName("SWITCH_" + rr.SwitchPokemon)
	var mw strings.Builder
	mww := strings.Split(rr.MoveWeighting, ",")
	for i, v := range mww {
		ii := strings.TrimSpace(v)
		mw.WriteString(utils.NormalizeAsConstName("AI_" + ii))
		if i+1 < len(mww) {
			mw.WriteString(" | ")
		}
	}
	nowClass.MoveWeighting = mw.String()
	if rr.ItemA != "" {
		nowClass.ItemA = utils.NormalizeAsConstNameUnderspaces(rr.ItemA)
	} else {
		nowClass.ItemA = "NO_ITEM"
	}
	if rr.ItemB != "" {
		nowClass.ItemB = utils.NormalizeAsConstNameUnderspaces(rr.ItemB)
	} else {
		nowClass.ItemB = "NO_ITEM"
	}
	nowClass.EncountMusic = utils.NormalizeAsConstNameUnderspaces("MUSIC_" + rr.EncountMusic)
}
