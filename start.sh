#!/usr/bin/env bash

chown -R www-data:www-data /project
find /project -type f -exec chmod a+rw {} \;
find /project -type d -exec chmod a+rwx {} \;

/usr/sbin/apache2ctl -D FOREGROUND
