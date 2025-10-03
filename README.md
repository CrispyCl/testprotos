# testprotos

This repository contains:

- `.proto` files for gRPC services  
- Generated gRPC code (Go)  
- API documentation (Markdown)

---

## Repository Structure
```
.
├── proto/ # Source .proto files
│ ├── users/
│ └── sso/
├── gen/ # Generated code
│ └── go/
├── docs/ # Documentation (Markdown)
└── README.md
```

---

## Usage

### 1. Import in your project

Add this repository as a dependency:

```bash
go get github.com/CrispyCl/testprotos@latest
```

Then import in your Go code:
```go
import usersv1 "github.com/CrispyCl/testprotos/gen/go/users"
```

### 2. Generate code locally

We use protoc with plugins. Example for Go:
```bash
make generate-proto
```

- `protoc` version 25.0 or higher
- Plugins:
    - `protoc-gen-go`
    - `protoc-gen-go-grpc`

## Docs

Full API documentation is available [here](./docs/full-api.md).
