package checkers

import "github.com/the-echo-project/echo/internal/db"

func UserTableIsEmpty() (bool, error) {
	rows, err := db.EchoDB.Query("SELECT COUNT(*) as count FROM users")
	if err != nil {
		return false, err
	}

	var count int
	for rows.Next() {
		err := rows.Scan(&count)
		if err != nil {
			return false, err
		}
	}

	if count == 0 {
		return true, nil
	} else {
		return false, nil
	}
}
