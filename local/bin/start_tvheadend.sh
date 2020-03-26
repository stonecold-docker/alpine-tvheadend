#!/bin/sh

RUN_USER_NAME=${RUN_USER_NAME:-forumi0721}

exec tvheadend -p /run/tvheadend.pid -c /conf.d/tvheadend -C -u ${RUN_USER_NAME} -g $(id -gn ${RUN_USER_NAME})

