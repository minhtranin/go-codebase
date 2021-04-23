package api

import (
	ctrls "easycast/src/ctrls/auth"
	"easycast/src/errs"
	"net/http"

	"github.com/labstack/echo"
)

func UserLogin(c echo.Context) error {
	res, err := ctrls.UserLogin(c)
	if err != nil {
		return errs.Send(err.Result())
	}

	return c.JSON(http.StatusOK, res)
}

func UserRegister(c echo.Context) error {
	res, err := ctrls.UserRegister(c)
	if err != nil {
		return errs.Send(err.Result())
	}

	return c.JSON(http.StatusOK, res)
}
