#!/bin/bash

LOG_DIR=${LW_LOG_DIR:-logs}

java -jar -Dspring.profiles.active=standalone,cli -DLOG_DIR=$LOG_DIR lazerwiki.jar -createAdminUser
