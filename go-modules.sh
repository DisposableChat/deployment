#!/bin/sh
cd "../api-users"
go get -u
go get -u github.com/DisposableChat/api-core
go mod tidy -v

cd "../api-auth"
go get -u
go get -u github.com/DisposableChat/api-core
go mod tidy -v