# GKE Node Scaler

GKE Node Scaler is a Go application that interacts with Google Kubernetes Engine (GKE) clusters to schedule GKE nodepool scale down during night for the dev clusters to reduce cloud costs.

## Getting Started

Before running the application, ensure that you have Go installed on your system.

### Prerequisites

- [Go](https://golang.org/doc/install)

### Building and Running

Use the provided Makefile to build, run, and manage the application.

#### Build the Application

```bash
make build
```

This command compiles the Go code and creates an executable binary named gke-node-scaler.


#### Run the Application

```bash
make run
```

Execute the compiled binary to list GKE clusters and nodes.

#### Formatting Code

```bash
make fmt
```

Use this command to format your Go source code using gofmt.

#### Run Unit Tests

```bash
make test
```

Run unit tests for your Go code.

#### Clean Up

```bash
make clean
```

Remove the compiled binary

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow the standard GitHub fork and pull request workflow.

## License

This project is licensed under the Apache License - see the [LICENSE](./LICENSE) file for details.