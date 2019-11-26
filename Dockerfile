FROM golang:1.13 as gobuild
ADD invoke.go /src/invoke.go
RUN cd /src && CGO_ENABLED=0 GOOS=linux go build -o invoke invoke.go

FROM debian:buster as pascalbuild
RUN apt-get update -y -q
RUN apt-get install -y -q fpc

ADD roman.pas /src/roman.pas
RUN cd /src && fpc roman.pas

FROM alpine:3.10
COPY --from=gobuild /src/invoke /app/invoke
COPY --from=pascalbuild /src/roman /app/roman

WORKDIR /app
CMD ["/app/invoke"]
