package db

import (
	"fmt"
	"github.com/the-echo-project/echo/internal/log"
	"reflect"
)

/*
QueryParametersFromDBStructWithExclusions return postgres-formatted parameters, and values, from a struct containing the db tag.

Example:

	type some_table struct {
		Name string `db:"name"`
		Age string `db:"age"`
	}

	p, v, _ := DBParametersFromDBStructWithExclusions(some_table{Name: "greg", Age: "54"}, []string{})

	// p returns []string{"name = $1", "age = $2"}
	// v returns []interface{"greg", "54"}
	...
 */
func QueryParametersFromDBStructWithExclusions(s interface{}, columnExclusions []string) (set []string, values []interface{}, err error) {
	rt := reflect.TypeOf(s)
	rv := reflect.ValueOf(s)

	if rt.Kind().String() != "struct" {
		log.This.Warning("Type is not a struct: %s", rt.Kind().String())
		return nil, nil, fmt.Errorf("type is not struct")
	}

	dbUpdateValues := map[string]interface{}{}
	isExcluded := func(s string)bool{
		for i := range columnExclusions {
			if s == columnExclusions[i] {
				log.This.Info("Dropped excluded field from PATCH request: %s", columnExclusions[i])
				return true
			}
		}
		return false
	}
	for i := 0; i < rv.NumField(); i++ {
		if !rv.Field(i).IsZero() && !isExcluded(rt.Field(i).Tag.Get("db")) {
			dbUpdateValues[rt.Field(i).Tag.Get("db")] = rv.Field(i).String()
		}
	}

	count := 0
	for k, v := range dbUpdateValues {
		count++
		values = append(values, v)
		set = append(set, fmt.Sprintf("%s = $%d", k, count))
	}
	return
}


