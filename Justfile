# mdshow task runner. Run `just` to list recipes.

default:
    @just --list

# Build the binary into ./mdshow
build:
    go build -o mdshow ./cmd/mdshow

# Run the tool: just run README.md
run *args:
    go run ./cmd/mdshow {{args}}

test:
    go test ./...

lint:
    golangci-lint run ./...

fmt:
    gofmt -w .

# Regenerate golden files, then review the diff before committing
update-golden:
    go test ./... -update
