FROM golang:1.18-buster AS builder
WORKDIR /home/app
COPY helloworld.go ./
RUN go mod init main
RUN go build -o ./hello_world
ENTRYPOINT ["/home/app/hello_world"]