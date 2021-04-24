#!/bin/bash

set -eo pipefail

set -x

URI_ROOT_PATH=
export URI_ROOT_PATH

APP_ROOT=/opt/app-root

if [ x"$JUPYTERHUB_SERVICE_PREFIX" != x"" ]; then
    URI_ROOT_PATH=${JUPYTERHUB_SERVICE_PREFIX%/}
fi

cd ${APP_ROOT}/gateway

source scl_source enable rh-nodejs10

exec npm start
