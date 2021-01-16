package models

import "database/sql"

type User struct {
	UserID string `json:"user_id" db:"user_id"`
	FirstName string `json:"first_name" db:"first_name"`
	LastName string `json:"last_name" db:"last_name"`
	Username string `json:"username" db:"username"`
	Email string `json:"email" db:"email"`
	LastLifesign sql.NullString `json:"last_lifesign" db:"last_lifesign"`
	AvgLifesignInterval sql.NullString `json:"avg_lifesign_interval" db:"avg_lifesign_interval"`
	Password string `json:"password" db:"password"`
	RoleID sql.NullString `json:"roles" db:"roles"`
	OldPassword string `json:"oldPassword" db:"oldPassword"`
}
