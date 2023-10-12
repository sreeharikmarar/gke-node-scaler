# Go variables
GO      := go
GOFMT   := gofmt
GOFILES := $(wildcard *.go)
GOTEST  := $(GO) test
BIN_DIR := ./bin
GOLANG_LINT := github.com/golangci/golangci-lint/cmd/golangci-lint@v1.52.2

# Application variables
APP_NAME := gns

# Build the application
build:
	$(GO) build -o $(BIN_DIR) ./...

# Run the application
run:
	./$(BIN_DIR)/$(APP_NAME)

# Format the code
lint:
	$(GO) run $(GOLANG_LINT) run

# Run unit tests
test:
	$(GOTEST) ./...

# Clean the binary
clean:
	rm -f $(BIN_DIR)/$(APP_NAME)

.PHONY: build run lint test clean
