docker stop nginx-rtmp-server || true
docker rm nginx-rtmp-server || true

# Build the Docker image
docker build -t nginx-rtmp-server:latest .

docker run -d --name nginx-rtmp-server \
    -p 8080:80 \
    -p 1935:1935 \
    -p 5000:5000 \
    nginx-rtmp-server

