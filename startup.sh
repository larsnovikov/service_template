#!/bin/bash

sudo docker-compose down;
sudo docker-compose up -d --build;

sudo bash nginx_app/init.sh

sudo bash app/init.sh