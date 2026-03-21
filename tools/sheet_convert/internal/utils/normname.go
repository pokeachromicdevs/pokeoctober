package utils

import (
	"strings"
	"unicode"
)

func NormalizeAsConstName(s string) string {
	var ss strings.Builder
	for _, i := range s {
		if i == ' ' {
			continue
		}
		if i == '&' {
			ss.WriteString("and")
		} else if i == '\'' {
			ss.WriteRune('_')
		} else if (i <= 'z') && (i >= 'a') {
			ss.WriteRune(unicode.ToUpper(i))
		} else {
			ss.WriteRune(i)
		}
	}
	return ss.String()
}

func NormalizeAsConstNameUnderspaces(s string) string {
	var ss strings.Builder
	for _, i := range s {
		if i == ' ' {
			ss.WriteRune('_')
		} else if i == '&' {
			ss.WriteString("and")
		} else if i == '\'' {
			ss.WriteRune('_')
		} else if (i <= 'z') && (i >= 'a') {
			ss.WriteRune(unicode.ToUpper(i))
		} else {
			ss.WriteRune(i)
		}
	}
	return ss.String()
}

func NormalizeAsFileName(s string) string {
	var ss strings.Builder
	for _, i := range s {
		if i == ' ' {
			ss.WriteRune('_')
		} else if i == '&' {
			ss.WriteString("_and_")
		} else if i == '\'' {
			ss.WriteRune('_')
		} else if (i <= 'Z') && (i >= 'A') {
			ss.WriteRune(unicode.ToLower(i))
		} else {
			ss.WriteRune(i)
		}
	}
	return ss.String()
}

func NormalizeAsSymbolName(s string) string {
	var ss strings.Builder
	for _, i := range s {
		if i == ' ' {
			continue
		} else if i == '\'' {
			continue
		} else {
			ss.WriteRune(i)
		}
	}
	return ss.String()
}

func NormalizeName(s string) string {
	var ss strings.Builder
	for _, i := range s {
		if (i <= 'z') && (i >= 'a') {
			ss.WriteRune(unicode.ToUpper(i))
		} else {
			ss.WriteRune(i)
		}
	}
	// if ss.Len() <= MaxNameLength {
	ss.WriteRune('@')
	// }
	return ss.String()
}

func NormalizeAsPokeName(s string) string {
	var ss strings.Builder
	sr := []rune(s)
	for i := range 10 {
		if i >= len(sr) {
			ss.WriteRune('@')
			continue
		}
		if (sr[i] <= 'z') && (sr[i] >= 'a') {
			ss.WriteRune(unicode.ToUpper(sr[i]))
		} else {
			ss.WriteRune(sr[i])
		}
	}
	return ss.String()
}

func CenterText(s string, nchars int) string {
	if len(s) > nchars {
		return s[:nchars]
	}
	padding := nchars - len(s)
	left := padding / 2
	right := padding - left
	return strings.Repeat(" ", left) + s + strings.Repeat(" ", right)
}
