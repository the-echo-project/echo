// Package timeutil provides standardised, consistent handling of time and date actions.
package timeutil

import "time"

// CurrentTime returns the current date & time, RFC3339 formatted.
func CurrentTimeAsRFC3339String() string {
	return time.Now().Format(time.RFC3339)
}

func TimeAsRFC3339String(t time.Time) string {
	return t.Format(time.RFC3339)
}

func ParseRFC3339StringAsTime(timeString string) (time.Time, error) {
	timeParsed, err := time.Parse(time.RFC3339, timeString)
	if err != nil {
		return time.Time{}, err // 0001-01-01 00:00:00 +0000 UTC
	}
	return timeParsed, nil
}

