#!/bin/sh

curl -X DELETE "https://api.cloudflare.com/client/v4/zones/${CLOUDFLARE_ZONE}/purge_cache" \
     -H "X-Auth-Email: ${CLOUDFLARE_AUTH_EMAIL}" \
     -H "X-Auth-Key: ${CLOUDFLARE_AUTH_KEY}" \
     -H "Content-Type: application/json" \
     --data '{"files":["https://get.freeshop.pw","https://get.freeshop.pw/latest","https://get.freeshop.pw/latest.txt","https://get.freeshop.pw/'${TRAVIS_TAG}'"]}'
