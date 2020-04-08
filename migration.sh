 docker run --rm \
     --network=kong-net \
    -e "KONG_DATABASE=cassandra" \
    -e "KONG_PG_HOST=kong-database-2" \
    -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database-2" \
    kong-ubuntu kong migrations bootstrap
