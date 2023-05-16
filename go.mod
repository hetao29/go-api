module main

go 1.17

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
	github.com/gin-gonic/gin v1.9.0
	lib/daemon v0.0.0-00010101000000-000000000000
	modules/user v0.0.0-00010101000000-000000000000
	utility v0.0.0-00010101000000-000000000000
)

require (
	github.com/bytedance/sonic v1.8.0 // indirect
	github.com/chenzhuoyu/base64x v0.0.0-20221115062448-fe3a3abad311 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-playground/locales v0.14.1 // indirect
	github.com/go-playground/universal-translator v0.18.1 // indirect
	github.com/go-playground/validator/v10 v10.11.2 // indirect
	github.com/go-sql-driver/mysql v1.6.0 // indirect
	github.com/goccy/go-json v0.10.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/cpuid/v2 v2.0.9 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/pelletier/go-toml/v2 v2.0.6 // indirect
	github.com/twitchyliquid64/golang-asm v0.15.1 // indirect
	github.com/ugorji/go/codec v1.2.9 // indirect
	golang.org/x/arch v0.0.0-20210923205945-b76863e36670 // indirect
	golang.org/x/crypto v0.5.0 // indirect
	golang.org/x/net v0.7.0 // indirect
	golang.org/x/sys v0.5.0 // indirect
	golang.org/x/text v0.7.0 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
