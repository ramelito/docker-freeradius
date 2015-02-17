Docker Freeradius v2
====================

Current Freeradius Version 2.2.5

* Ubuntu 14.04.1
* MySQL 5.6

## Start MySQL

`docker run --name freeradius-mysql -e MYSQL_ROOT_PASSWORD=password -d mysql`

## Start Freeradius in debug mode

`docker run -it --link freeradius-mysql:mysql -e MYSQL_RADIUS_USER=raduser -e MYSQL_RADIUS_USER_PASSWORD=radpass -e RADIUS_SECRET=secret123 --name freeradius -p 1812-1813/udp ramelito/docker-freeradius`

## in daemon mode
`docker run -d --link freeradius-mysql:mysql -e MYSQL_RADIUS_USER=raduser -e MYSQL_RADIUS_USER_PASSWORD=radpass -e RADIUS_SECRET=secret123 --name freeradius -p 1812-1813/udp ramelito/docker-freeradius freeradius -f`
