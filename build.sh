#!/bin/sh
# usage: ./build.sh [test]
set -eu

cd "$(dirname "$0")"

case "${1:-}" in
    "") ;;
    test) exec go test -v ./... ;;
    *)
        echo "usage: $0 [test]" >&2
        exit 2
        ;;
esac

go vet ./...
mkdir -p build
CGO_ENABLED=0 go build -o build/edo .
