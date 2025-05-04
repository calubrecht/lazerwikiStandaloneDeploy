#!/bin/bash

java -jar -Dspring.profiles.active=standalone,cli -DLOG_DIR=$LOG_DIR lazerwiki.jar -createAdminUser
