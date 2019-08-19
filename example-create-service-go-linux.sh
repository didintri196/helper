#!/bin/sh
### BEGIN INIT INFO
# Provides:          name_service
# Required-Start:    $network $syslog
# Required-Stop:     $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start go server at boot time
# Description:       your cool web app
### END INIT INFO

case "$1" in
  start)
    exec /var/www/project_name/main &
    ;;
  stop)
    kill $(lsof -t -i:4000)
    ;;
  *)
    echo $"Usage: $0 {start|stop}"
    exit 1
esac
exit 0

### TUTORIAL USE
# Create this file /etc/init.d/
# Command update-rc.d namaservice.sh defaults
