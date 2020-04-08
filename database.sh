 docker run -d --name kong-database-2 \
               --network=kong-net \
               -p 9042:9042 \
               cassandra:3

# docker run --rm \
#    --link kong-database:kong-database \
#    -e "KONG_DATABASE=cassandra" \
#    -e "KONG_PG_HOST=kong-database" \
#    -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database" \
#    kong kong migrations bootstrap
