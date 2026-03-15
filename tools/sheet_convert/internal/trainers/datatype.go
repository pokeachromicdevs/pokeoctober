package trainers

import (
	"log/slog"
	"sheetconvert/internal/utils"
	"strconv"
	"strings"

	"github.com/xuri/excelize/v2"
)

type State struct {
	in           *excelize.File
	classes      *utils.OrderedMap[string, *TrainerClass]
	appendTarget *[]Pokemon
	Files        Files
}

type TrainerClass struct {
	Instances     []*TrainerInstance
	Title         string
	DVs           []int
	BaseReward    int
	UsageStrat    string
	SwitchStrat   string
	MoveWeighting string
	ItemA         string
	ItemB         string
	EncountMusic  string
}

type Files struct {
	TrainerConstants strings.Builder
	ClassNames       strings.Builder
	Attributes       strings.Builder
	DVs              strings.Builder
	Parties          strings.Builder
	EncounterMusics  strings.Builder
	PartyPtrs        strings.Builder // auto
	PicPointers      strings.Builder // not in spreadsheet
	Palettes         strings.Builder // not in spreadsheet
}

type TrainerInstance struct {
	Name       string
	InstanceId string
	MonList    []Pokemon
}

// for a given trainer, calculate the next instance ID
func nextId(c []*TrainerInstance, name string) string {
	count := 1
	for _, i := range c {
		if i.Name == name {
			count++
		}
	}
	return strconv.Itoa(count)
}

type Pokemon struct {
	Species  string
	Level    int
	HeldItem string
	MoveList []string
}

// encapsulate this module's globals
func MakeState(in_file string) (*State, error) {
	in, e := excelize.OpenFile(in_file) // need close
	if e != nil {
		slog.Error("can't open sheet", "e", e)
		return nil, e
	}
	return &State{
		classes: utils.NewOrderedMap[string, *TrainerClass](),
		in:      in,
	}, nil
}
