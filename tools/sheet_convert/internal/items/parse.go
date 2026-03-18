package items

import (
	"fmt"
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
	"strings"
)

const (
	ciItemName = iota
	ciDisplayName
	ciPocket
	ciPrice
	ciHeldEffect
	ciProperty
	ciFieldMenu
	ciBattleMenu
	ciFieldEffect
	ciParameter
	ci_
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
	// more involved "game-ready" conversion of content
	for i, r := range rs {
		if i < 1 { // skip header row
			continue
		}
		rr, e := itemRowFrom(r)
		if e != nil {
			slog.Error(fmt.Sprintf("can't parse row %d - SKIPPING!", i+1), "e", e)
			continue
		}

		itemDef := itemDefFromItemRow(i, rr)

		switch rr.Pocket {
		case POCKET_ITEM:
			s.pockets.Item.Set(rr.ItemName, itemDef)
		case POCKET_KEY:
			s.pockets.Key.Set(rr.ItemName, itemDef)
		case POCKET_BALL:
			s.pockets.Ball.Set(rr.ItemName, itemDef)
		default:
			slog.Error(fmt.Sprintf("row %d - unknown pocket %d, SKIPPING", i+1, rr.Pocket))
			continue
		}
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
	o := make([]string, ci_)

	// copy row, ignoring empties
	for i, x := range r {
		if i >= len(o) {
			break
		}
		o[i] = strings.TrimSpace(x)
	}

	var pocket PocketEnum
	switch o[ciPocket] {
	case "Item":
		pocket = POCKET_ITEM
	case "Key Item":
		pocket = POCKET_KEY
	case "Ball":
		pocket = POCKET_BALL
	default:
		e := fmt.Errorf("invalid pocket specifier '%s'", o[ciPocket])
		slog.Error("invalid pocket", "e", e)
		return nil, e
	}

	price, e := strconv.Atoi(o[ciPrice])
	if e != nil {
		slog.Error("invalid price specifier", "e", e)
		return nil, e
	}

	parm, e := strconv.Atoi(o[ciParameter])
	if e != nil {
		slog.Error("invalid parameter specifier", "e", e)
		return nil, e
	}

	// deserialized row
	return &itemRow{
		ItemName:    o[ciItemName],
		DispName:    o[ciDisplayName],
		Pocket:      pocket,
		Price:       price,
		HeldEffect:  o[ciHeldEffect],
		Property:    o[ciProperty],
		FieldMenu:   o[ciFieldMenu],
		BattleMenu:  o[ciBattleMenu],
		FieldEffect: o[ciFieldEffect],
		Parameter:   parm,
	}, nil
}

func itemDefFromItemRow(i int, rr *itemRow) *Item {
	title := rr.DispName
	if len(title) > utils.MaxNameLength {
		slog.Error(
			fmt.Sprintf("row %d - display name '%s' is longer than max name length (%d) - TRUNCATING!",
				i+1,
				title,
				utils.MaxNameLength,
			),
		)
		title = string([]rune(title[:11]))
	}

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

	return &Item{
		Title:              title,
		Price:              rr.Price,
		HeldEffect:         "HELD_" + utils.NormalizeAsConstNameUnderspaces(rr.HeldEffect),
		Property:           mw.String(),
		FieldSelectAction:  "ITEMMENU_" + utils.NormalizeAsConstName(rr.FieldMenu),
		BattleSelectAction: "ITEMMENU_" + utils.NormalizeAsConstName(rr.BattleMenu),
		FieldEffect:        utils.NormalizeAsSymbolName(rr.FieldEffect) + "Effect",
		Parameter:          rr.Parameter,
	}
}
