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
		}
		ss.WriteRune(i)
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
	if ss.Len() < 11 {
		ss.WriteRune('@')
	}
	return ss.String()
}
