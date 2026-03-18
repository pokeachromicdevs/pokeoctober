package items

import (
	"log/slog"
	"sheetconvert/internal/utils"
	"strings"

	"github.com/xuri/excelize/v2"
)

type ItemPockets struct {
	Item *utils.OrderedMap[string, *Item]
	Key  *utils.OrderedMap[string, *Item]
	Ball *utils.OrderedMap[string, *Item]
}

type Item struct {
	Title              string
	Price              int
	HeldEffect         string
	Property           string
	FieldSelectAction  string
	BattleSelectAction string
	FieldEffect        string
	Parameter          int
}

type State struct {
	in      *excelize.File
	pockets ItemPockets
	Files   Files
}

type Files struct {
	// const XXX
	NormalItemConstants strings.Builder

	// const XXX
	KeyItemConstants strings.Builder

	// const XXX
	BallItemConstants strings.Builder

	// ItemNames:: db ..., KeyItemNames:: db ..., BallNames:: db ...,
	ItemNames strings.Builder

	// ItemAttributes1: item_attribute ..., ItemKeyAttributes: ..., ItemBallAttributes: ...
	ItemAttributes strings.Builder

	// ItemEffects1: dw ..., ItemKeyEffects: dw ..., ItemBallEffects: dw...
	ItemEffectsDecls strings.Builder

	// ItemDescriptions1: dw ..., ItemKeyDescriptions: dw ..., ItemBallDescriptions: dw ...
	ItemDescDecls strings.Builder
}

// encapsulate this module's globals
func MakeState(in_file string) (*State, error) {
	in, e := excelize.OpenFile(in_file) // need close
	if e != nil {
		slog.Error("can't open sheet", "e", e)
		return nil, e
	}
	return &State{
		in: in,
		pockets: ItemPockets{
			Item: utils.NewOrderedMap[string, *Item](),
			Key:  utils.NewOrderedMap[string, *Item](),
			Ball: utils.NewOrderedMap[string, *Item](),
		},
		Files: Files{},
	}, nil
}
