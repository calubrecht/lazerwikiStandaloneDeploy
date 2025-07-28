#!/bin/bash

if [ $(id -u)  -ne 0 ]
then
  echo "This script must be run as root"
  exit
fi

echo Hi root
mkdir -p /opt/lazerwiki

adduser --no-create-home --system --group lazerwiki

cp -R lazerwiki.sh lazerwiki.jar lazerwiki.db lib /opt/lazerwiki
chown -R lazerwiki:lazerwiki /opt/lazerwiki
chmod -R 664 /opt/lazerwiki/*
chmod -R +X /opt/lazerwiki/*
chmod 660 /opt/lazerwiki/lazerwiki.db

./createAdminUser.sh

cp lazerwiki.service /etc/systemd/system/
systemctl enable lazerwiki
systemctl start lazerwiki
