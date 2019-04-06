docker build -t docker-demo .
docker images
docker run -d -p 80:80 docker-demo
docker ps