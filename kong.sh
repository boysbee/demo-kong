#!/bin/sh

docker run -d \
--link kong-database:kong-database \
-e "KONG_DATABASE=postgres" \
-e "KONG_PG_HOST=kong-database" \
-p 8000:8000 \
-p 8443:8443 \
-p 8001:8001 \
-p 7946:7946 \
-p 7946:7946/udp \
kong
