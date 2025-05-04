#!/bin/bash

if [ $(id -u)  -ne 0 ]
then
  echo "This script must be run as root"
  exit
fi

echo Hi root
mkdir -p /opt/lazerwiki

adduser --system --group lazerwiki

cp -R lazerwiki.sh lazerwiki.jar lazerwiki.db lib /opt/lazerwiki
chown -R lazerwiki:lazerwiki /opt/lazerwiki

./createAdminUser

cp lazerwiki.service /etc/systemd/system/
systemctl enable lazerwiki
systemctl start lazerwiki
