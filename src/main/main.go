/*
QQWry.dat里面全部采用了little-endian字节序
文件结构说明：
http://lumaqq.linuxsir.org/article/qqwry_format_detail.html
*/

package main

import (
	"github.com/gin-gonic/gin"
	"flag"
	"lib/daemon"
	"modules/user"
	"utility"
)

func main() {

	//var bindaddr *string
	var isDaemon bool
	flag.BoolVar(&isDaemon, "d", false, "daemon mode, default false")
	//bindaddr = flag.String("b", "0.0.0.0:991", "listen port")
	db := utility.Db{};
	db.Config()
	db.Init();
	flag.Parse()
	if isDaemon {
		lib.Daemon(0, 1)
	}

	router := gin.Default()
	v1 := router.Group("/v1")
	{
		v1.GET("/login", user.Login)
	}
	v2 := router.Group("/v2")
	{
		v2.GET("/login", user.Loginv2)
	}
	router.Run(":991")

}
