#!/bin/bash
set -e

go version

export PATH="$PATH:/tmp/sdk/go_appengine"
export APPENGINE_DEV_APPSERVER=/tmp/sdk/go_appengine/dev_appserver.py

go test -v google.golang.org/appengine/...
go test -v -race google.golang.org/appengine/...

goapp version
goapp test -v google.golang.org/appengine/...
