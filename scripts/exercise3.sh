#!/bin/sh
echo "\n# Dozzle service configuration\n" >> docker-compose.yml
cat scripts/dozzle.txt >> docker-compose.yml
docker compose up -d
docker ps