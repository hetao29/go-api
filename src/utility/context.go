package utility

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"net/http"
)
type Context struct{
		Writer http.ResponseWriter;
		Request *http.Request;
		Db *sql.DB
}
func (con *Context) GetDb() (*sql.DB){
	return con.Db;
}
