CLANG ?= clang-14
CFLAGS := -O2 -g -Wall -Werror $(CFLAGS)

all: fmt
	go test ./...

tools:
	go install golang.org/x/tools/cmd/goimports@v0.2.0

fmt: go.mod
	goimports -d -w .
	go mod tidy

go.mod:
	go mod init github.com/sugardon/go-tutorials

# $BPF_CLANG is used in go:generate invocations.
generate: export BPF_CLANG := $(CLANG)
generate: export BPF_CFLAGS := $(CFLAGS)
generate:
	go generate ./cmd/ebpf-xdp-test

