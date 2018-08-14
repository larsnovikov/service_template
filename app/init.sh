#!/bin/bash
while true; do
    read -p "Is it first start? [y/n]" yn
    case $yn in
        [Yy]* )
         cd app

         # get framework
         git clone https://github.com/slimphp/Slim.git web

         # get composer
         cd web
         composer install;

         # init start point
         mkdir public
         cd public
         echo "<?php
echo 'Service template ready for dev!';" > index.php

          # set chmod
          cd ../../
          chmod -R 0777 web
          rm -rf html

         break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

exit;
