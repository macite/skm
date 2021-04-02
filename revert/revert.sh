#!/bin/bash

APP_PATH=`echo $0 | awk '{split($0,patharr,"/"); idx=1; while(patharr[idx+1] != "") { if (patharr[idx] != "/") {printf("%s/", patharr[idx]); idx++ }} }'`
APP_PATH=`cd "$APP_PATH"; pwd`

if [ "$(($1))" -eq 1 ]; then
    cd "$APP_PATH"
    git fetch --unshallow
    git checkout pre-fs-use
else
    "$APP_PATH/help.sh"
    exit 1
fi
