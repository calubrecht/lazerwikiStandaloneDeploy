To package Lazerwiki as a standalone service, checkout and build the ... (run the bootJar gradle target) and ... (run the buildWar script).

copy lazerwiki/build/libs/lazerwiki-X.X.X.X.jar to lazerwiki.jar in root of this repo.
copy lazerwiki/src/main/sql/lazerwiki/db to root of this repo.
copy lazerwiki-ui/dist/lazerwiki-ui-standalone.jar to lib/ in this repo

if java jre (version 17 or higher) is not on the path, add full path to JRE to appropriate service script

Linux:
  - run lazerwiki.sh
  - To run as a service
    - copy lazerwiki.service to /etc/systemd/system/? and enable through systemctl.
    - Create lazerwiki service user
    - Create /var/log/spring and /opt/lazerwiki/data as root and give write permisissions to lazerwiki user

Windows:
  - run lazerwiki.bat
  - To run as a service....
