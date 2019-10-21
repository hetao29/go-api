package utility

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
)

	var Conn *sql.DB
	var err error;
type Db struct{
}

func (db *Db) Init() {
	//我们还可以做其他更高阶的事情，比如 platform.RegisterPlugin({"func": Hello}) 之类的，向插件平台自动注册该插件的函数
	fmt.Println("db init")
	Conn, err = sql.Open("mysql", "root:@tcp(127.0.0.1:3401)/test")
	if err != nil {
		fmt.Println(err.Error())
	}
	Conn.SetMaxIdleConns(100)
}
func (db * Db) Config(){
}
