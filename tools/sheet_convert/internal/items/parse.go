package items

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
	"strings"
)

func (s *State) ProcessItems(sheetName string) error {
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
	// more involved "game-ready" conversion of contentt
	for i, r := range rs {
		if i < 2 { // skip header row
			continue
		}
		rr, e := itemRowFrom(r)
		if e != nil {
			slog.Error(fmt.Sprintf("can't parse row %d - SKIPPING!", i+1), "e", e)
			continue
		}

		var whichPocket *utils.OrderedMap[string, *Item]
		switch rr.Pocket {
		case POCKET_ITEM:
			whichPocket = s.pockets.Item
		case POCKET_KEY:
			whichPocket = s.pockets.Key
		case POCKET_BALL:
			whichPocket = s.pockets.Ball
		}

		itemDef := &Item{}

		itemDef.Title = rr.DispName
		if len(itemDef.Title) > utils.MaxNameLength {
			slog.Error(
				fmt.Sprintf("row %d - display name '%s' is longer than max name length (%d) - TRUNCATING!",
					i+1,
					itemDef.Title,
					utils.MaxNameLength,
				),
			)
			itemDef.Title = string([]rune(itemDef.Title[:11]))
		}

		itemDef.HeldEffect = "HELD_" + utils.NormalizeAsConstNameUnderspaces(rr.HeldEffect)

		var mw strings.Builder
		mww := strings.Split(rr.Property, ",")
		for i, v := range mww {
			ii := strings.TrimSpace(v)
			switch ii {
			case "Can't Select":
				mw.WriteString("CANT_SELECT")
			case "Can't Toss":
				mw.WriteString("CANT_TOSS")
			default:
				mw.WriteString(utils.NormalizeAsConstNameUnderspaces(ii))
			}
			if i+1 < len(mww) {
				mw.WriteString(" | ")
			}
		}
		itemDef.Property = mw.String()

		itemDef.FieldSelectAction = "ITEMMENU_" + utils.NormalizeAsConstName(rr.FieldMenu)

		itemDef.BattleSelectAction = "ITEMMENU_" + utils.NormalizeAsConstName(rr.BattleMenu)

		itemDef.FieldEffect = utils.NormalizeAsSymbolName(rr.FieldEffect) + "Effect"

		itemDef.Parameter = rr.Parameter

		whichPocket.Set(rr.ItemName, itemDef)
	}
	return nil
}

type PocketEnum int

const (
	POCKET_ITEM = PocketEnum(iota)
	POCKET_KEY
	POCKET_BALL
)

type itemRow struct {
	ItemName    string
	DispName    string
	Pocket      PocketEnum
	Price       int
	HeldEffect  string
	Property    string
	FieldMenu   string
	BattleMenu  string
	FieldEffect string
	Parameter   int
}

// deserialize a []string row into Row
// only basic type conversions
func itemRowFrom(r []string) (*itemRow, error) {
	// should be how big each row is
	o := make([]string, 10)

	// copy row, ignoring empties
	for i, x := range r {
		if i > len(o) {
			break
		}
		o[i] = strings.TrimSpace(x)
	}

	var pocket PocketEnum
	switch o[2] {
	case "Item":
		pocket = POCKET_ITEM
	case "Key Item":
		pocket = POCKET_KEY
	case "Ball":
		pocket = POCKET_BALL
	default:
		e := fmt.Errorf("invalid pocket specifier '%s'", o[2])
		slog.Error("invalid pocket", "e", e)
		return nil, e
	}

	price, e := strconv.Atoi(o[3])
	if e != nil {
		slog.Error("invalid price specifier", "e", e)
		return nil, e
	}

	parm, e := strconv.Atoi(o[3])
	if e != nil {
		slog.Error("invalid parameter specifier", "e", e)
		return nil, e
	}

	// deserialized row
	return &itemRow{
		ItemName:    o[0],
		DispName:    o[1],
		Pocket:      pocket,
		Price:       price,
		HeldEffect:  o[4],
		Property:    o[5],
		FieldMenu:   o[6],
		BattleMenu:  o[7],
		FieldEffect: o[8],
		Parameter:   parm,
	}, nil
}
