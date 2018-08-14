#!/bin/bash

read -p "Enter server_name for app container[service-template.loc]: " serverName
serverName=${serverName:-service-template.loc}

sudo docker exec -ti tmp_nginx_app sed -i -e "s/server-name-loc/$serverName/g" /etc/nginx/sites-available/app.conf
exit;