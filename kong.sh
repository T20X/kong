docker run -d --name kongu2 \
     --network=kong-net \
    -e "KONG_DATABASE=cassandra" \
    -e "KONG_PG_HOST=kong-database-2" \
    -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database-2" \
    -e "KONG_PROXY_ACCESS_LOG=/dev/stdout" \
    -e "KONG_ADMIN_ACCESS_LOG=/dev/stdout" \
    -e "KONG_PROXY_ERROR_LOG=/dev/stderr" \
    -e "KONG_PROXY_LISTEN=0.0.0.0:9080 http2, 0.0.0.0:9081 http2 ssl" \
    -e "KONG_ADMIN_ERROR_LOG=/dev/stderr" \
    -e "KONG_LOG_LEVEL=info" \
    -e "KONG_ADMIN_LISTEN=0.0.0.0:8001, 0.0.0.0:8444 ssl" \
    -v /home/maine/kong/share:/var/share \
    -p 8000:8000 \
    -p 8440:8443 \
    -p 9080:9080 \
    -p 8001:8001 \
    -p 8444:8444 \
    kong-ubuntu
