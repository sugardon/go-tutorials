all: fmt
	go test ./...

tools:
	go install golang.org/x/tools/cmd/goimports@v0.2.0

fmt: go.mod
	goimports -d -w .
	go mod tidy

go.mod:
	go mod init github.com/sugardon/go-tutorials
