# Go variables
GO      := go
GOFMT   := gofmt
GOFILES := $(wildcard *.go)
GOTEST  := $(GO) test
BIN_DIR := ./bin

# Application variables
APP_NAME := gke-node-scaler

# Build the application
build:
	$(GO) build -o $(BIN_DIR)/$(APP_NAME) ./cmd/main.go

# Run the application
run:
	./$(APP_NAME)

# Format the code
fmt:
	$(GOFMT) -w $(GOFILES)

# Run unit tests
test:
	$(GOTEST) ./...

# Clean the binary
clean:
	rm -f $(BIN_DIR)/$(APP_NAME)

.PHONY: build run fmt test clean
