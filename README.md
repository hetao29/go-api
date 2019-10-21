ipQuery
=================

IP查询服务


~~~~
https://github.com/hetao29/ip2location-qqwry
go mod 升级版本
~~~~

下载
----

~~~~
make pull
~~~~

使用
----

~~~~
make start
~~~~

调用方法
--------

~~~~
callback [可选]  jsonp回掉函数，如果不传，则返回json数据
ip       [可选]  查询的ip地址，如果不传，则自动检测
~~~~


成功返回

~~~~
$ curl   "127.0.0.1:9002/?callback=parse&ip=202.101.172.35"
parse({
area_desc: "北京市海淀区",
area_name: "北京",
ip: "123.116.149.164",
ok: true,
op_desc: "联通",
op_name: "联通"
})
~~~~

失败返回

~~~~
$ curl   "127.0.0.1:9002/?callback=parse&ip=213412341234"
parse({
area_desc: "",
area_name: "",
ip: "213412341234",
ok: false,
op_desc: "",
op_name: ""
})
~~~~




Nginx配置
---------

~~~~~
  location /ipquery{
      proxy_set_header X-Real-IP        $remote_addr;
      #proxy_set_header X-Forwarded-For  $proxy_add_x_forwarded_for;
      proxy_pass http://127.0.0.1:9002;
      proxy_redirect off;
  }
~~~~~

如果需要自动检测客户IP，需要 X-Real-Ip 或者 X-Forwarded-For 这个头



