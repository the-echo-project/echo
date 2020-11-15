package contextUtil

import (
	"context"
	"github.com/the-echo-project/echo/api/models"
	"testing"
)

func TestSuccessGetUserIDFromTokenContext(t *testing.T) {
	TestModel := &models.Token{
		UserID: "1234",
	}
	ctx := context.WithValue(context.Background(), "user", TestModel)

	UserID, err := GetUserIDFromTokenContext(ctx)
	if err != nil {
		t.Logf("Expected nil error, got %s", err)
		t.Fail()
	}
	if UserID != TestModel.UserID {
		t.Logf("Expect UserID %s, got UserID %s", TestModel.UserID, UserID)
		t.Fail()
	}
}
