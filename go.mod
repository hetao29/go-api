module main

go 1.12

replace (
	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20191011191535-87dc89f01550
	golang.org/x/net => github.com/golang/net v0.0.0-20191014212845-da9a3fd4c582
	golang.org/x/sync => github.com/golang/sync v0.0.0-20190911185100-cd5d95a43a6e
	golang.org/x/sys => github.com/golang/sys v0.0.0-20191020212454-3e7259c5e7c2
	golang.org/x/text => github.com/golang/text v0.3.3-0.20190829152558-3d0f7978add9
	golang.org/x/tools => github.com/golang/tools v0.0.0-20191018000036-341939e08647
	golang.org/x/xerrors => github.com/golang/xerrors v0.0.0-20191011141410-1b5146add898
	lib/daemon => ./src/vendor/lib/daemon
	modules/user => ./src/modules/user
	utility => ./src/utility
)

require (
	github.com/gin-gonic/gin v1.4.0
	github.com/go-sql-driver/mysql v1.4.1
	lib/daemon v0.0.0-00010101000000-000000000000
	modules/user v0.0.0-00010101000000-000000000000
	utility v0.0.0-00010101000000-000000000000
)
