docker run -d \
   --name=sickbeard \
   -v $(pwd)/data:/data \
   -v $(pwd)/config/config.ini:/app/config.ini \
   -p 8081:8081 \
   chamunks/alpine-sickbeard-arm:latest
