generate-proto-sso:
	@echo "Generating SSO gRPC code..."
	@protoc -I ./proto \
		--go_out ./gen/go --go_opt=paths=source_relative \
		--go-grpc_out ./gen/go --go-grpc_opt=paths=source_relative \
		./proto/sso/sso.proto

generate-proto-users:
	@echo "Generating Users gRPC code..."
	@protoc -I ./proto \
		--go_out ./gen/go --go_opt=paths=source_relative \
		--go-grpc_out ./gen/go --go-grpc_opt=paths=source_relative \
		./proto/users/users.proto

generate-proto: generate-proto-sso generate-proto-users