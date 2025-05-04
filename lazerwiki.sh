#!/bin/bash

DB_LOC=./lazerwiki.db
LOG_DIR=${LW_LOG_DIR:-logs}
DATA_DIR=${LW_DATA_DIR:-data}
WEBSERVER_PORT=${LW_WEBSERVER_PORT:-8080}

java -jar -Dspring.profiles.active=standalone -DLOG_DIR=$LOG_DIR -Dserver.port=$WEBSERVER_PORT lazerwiki.jar
