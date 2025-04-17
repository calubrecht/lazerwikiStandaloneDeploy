#!/bin/bash

DB_LOC=./lazerwiki.db
LOG_DIR=${LW_LOG_DIR:-logs}
DATA_DIR=${LW_DATA_DIR:-data}

java -jar -Dspring.profiles.active=standalone -DLOG_DIR=$LOG_DIR lazerwiki.jar us.calubrecht.lazerwiki.LazerWikiApplication
