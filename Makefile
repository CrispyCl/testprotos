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

generate-docs-sso:
	@echo "Generating sso docs..."
	@protoc --proto_path=proto/sso/ \
		--doc_out=docs --doc_opt=markdown,sso.md \
		sso.proto

generate-docs-users:
	@echo "Generating users docs..."
	@protoc --proto_path=proto/users/ \
		--doc_out=docs --doc_opt=markdown,users.md \
		users.proto

generate-docs-full:
	@echo "Generating full-api docs..."
	@protoc --proto_path=proto/ \
		--doc_out=docs --doc_opt=markdown,full-api.md \
		users/users.proto sso/sso.proto

generate-docs: generate-docs-sso generate-docs-users generate-docs-full
