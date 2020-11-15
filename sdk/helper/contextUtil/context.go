package contextUtil

import (
	"context"
	"fmt"
	"github.com/the-echo-project/echo/api/models"
)

func GetUserIDFromTokenContext(ctx context.Context) (string, error) {
	user, ok := ctx.Value("user").(*models.Token)
	if ok != true {
		return "", fmt.Errorf("value in context not of correct type (models.Token)")
	}
	return user.UserID, nil
}
