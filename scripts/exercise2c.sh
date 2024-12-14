#!/bin/sh
git remote add production bitnami@44.222.254.205:/home/bitnami/nchicas.git
git push production main
scp scripts/.htaccess bitnami@44.222.254.205:/home/bitnami/htdocs/nchicas