FROM golang:1.13-alpine3.10 as builder
LABEL maintainer="hetal<hetao@hetao.name>"
LABEL version="1.0"

WORKDIR /data/ipquery/

COPY Makefile .
COPY go.mod .
COPY src src

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \ 
	&& apk update && apk add tree \
	&& tree -L 5 && cd src/ipquery && go build -o ../../bin/ipquery . \
	&& rm -rf /var/lib/apk/*

FROM alpine:3.10 as prod

RUN apk --no-cache add ca-certificates

WORKDIR /data/ipquery/

RUN mkdir bin
COPY --from=0 /data/ipquery/bin/ipquery bin/

COPY bin/qqwry.dat /data/ipquery/bin/

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || exit 1

EXPOSE 80/tcp

CMD ["/data/ipquery/bin/ipquery"]
