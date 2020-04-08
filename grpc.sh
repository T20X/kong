curl -XPOST localhost:8001/services \
  --data name=grpc \
  --data protocol=grpc \
  --data host=192.168.56.6 \
  --data read_timout=999999999
  --data port=50051

curl -XPOST localhost:8001/services/grpc/routes \
  --data protocols=grpc \
  --data name=catch-all \
  --data paths=/

 curl -X POST localhost:8001/routes/catch-all/plugins \
  --data name=file-log \
  --data enabled=false \
  --data config.path=/tmp/grpc-say-hello.log

 curl -X POST localhost:8001/services/grpc/plugins \
  --data name=kong-response-size-limiting \
  --data enabled=true 
