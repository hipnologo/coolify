#!/bin/bash
## Do not modify this file. You will lost the ability to autoupdate!

docker run --pull always -v /data/coolify/source:/data/coolify/source -v /var/run/docker.sock:/var/run/docker.sock -ti --rm ghcr.io/coollabsio/coolify-builder bash -c "APP_TAG=$1 docker compose --env-file /data/coolify/source/.env -f /data/coolify/source/docker-compose.yml -f /data/coolify/source/docker-compose.prod.yml up -d --pull always --remove-orphans --force-recreate"