#!/bin/bash

# All rights reserved, Amjad Samadi.

which docker-compose &> /dev/null

if [ $? -ne 0 ]; then
    echo "ERROR: docker-compose is not installed."
    exit 1
fi

docker network create mynet

docker-compose up -d

cat <<EOL 

you can access the web application with this URL: http://{YOUR-SYSTEM-IP}:5352

EOL
