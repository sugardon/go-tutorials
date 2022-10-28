FROM ubuntu:22.04

RUN apt update && apt install -y software-properties-common
# golang
RUN add-apt-repository ppa:longsleep/golang-backports
# development tools
RUN apt update && apt install -y make golang clang lldb lld iproute2 iputils-ping net-tools curl
# network tools
RUN apt update && apt install -y iproute2 iputils-ping net-tools curl

WORKDIR /workspace
# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify
