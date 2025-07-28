#!/bin/bash

rm -rf lazerwiki
mkdir lazerwiki
cp -R lib lazerwiki
cp lazerwiki.db lazerwiki
cp lazerwiki.jar lazerwiki
cp *.sh lazerwiki
cp *.service lazerwiki
tar cfz lazerwiki.tar.gz lazerwiki
