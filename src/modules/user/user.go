package user

import (
	"fmt"
	"net/http"
	"utility"
	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
)

func init() {
	fmt.Println("world")
	//我们还可以做其他更高阶的事情，比如 platform.RegisterPlugin({"func": Hello}) 之类的，向插件平台自动注册该插件的函数
}
type Tag struct {
	ID   int    `json:"id"`
	Name string `json:"name"`
}
type Result struct {
	Code int   `json:"code"`
	Data []Tag `json:"data"`
}

func Login(c *gin.Context) {
	name := c.Query("name")
	password := c.DefaultQuery("password","pwd...")

	c.JSON(200, gin.H{
		"version":  "v1",
		"status":  "posted",
		"name": name,
		"password":    password,
	})
}
func Loginv2(c *gin.Context) {
	name := c.Query("name")
	password := c.DefaultQuery("password","pwd...")

	c.JSON(200, gin.H{
		"version":  "v2",
		"status":  "posted",
		"name": name,
		"password":    password,
	})
	fmt.Println("hello")
	results, err := utility.Conn.Query("SELECT id, name FROM user")
	if err != nil {
		panic(err.Error()) // proper error handling instead of panic in your app
	}

	defer results.Close();
	var result Result
	for results.Next() {
		var tag Tag
		// for each row, scan the result into our tag composite object
		err = results.Scan(&tag.ID, &tag.Name)
		if err != nil {
			panic(err.Error()) // proper error handling instead of panic in your app
		}
		result.Data = append(result.Data, tag)
		// and then print out the tag's Name attribute
		//log.Printf(tag.Name)
	}

	//bolB, _ := json.Marshal(result)
	c.JSON(http.StatusOK, gin.H{"version": "v1", "data": result})
}
