#!/bin/sh
touch .env
echo "REACT_APP_TEXT=Hello, nchicas!" > .env
npm install && npm run build
scp -r build/ bitnami@44.222.254.205:/home/bitnami/htdocs/nchicas
#scp scripts/.htaccess bitnami@44.222.254.205:/home/bitnami/htdocs/nchicas