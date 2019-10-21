build:
	cd src/main/ && go build -o ../../bin/api_server .
buildso:
	cd src/modules/user && go build -buildmode=plugin -o user.so .
	rm -rf modules/*so && find src -name *so | xargs -I{} cp -f -u {} modules/
start:
	./bin/api_server -d
stop:
	killall api_ipquery
