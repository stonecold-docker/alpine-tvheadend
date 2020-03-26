#!/bin/sh

RUN_USER_NAME=${RUN_USER_NAME:-forumi0721}

exec su-exec ${RUN_USER_NAME} socat TCP-LISTEN:9983,reuseaddr,fork UNIX-CLIENT:/conf.d/tvheadend/epggrab/xmltv.sock

