package utils

import "strings"

// should prevent panics
func NormalizeRow(r []string, size int) []string {
	// should be how big each row is
	o := make([]string, size)

	// copy row, ignoring empties
	for i, x := range r {
		if i >= len(o) {
			break
		}
		o[i] = strings.TrimSpace(x)
	}
	return o
}
