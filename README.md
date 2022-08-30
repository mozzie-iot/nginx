# Harness NGINX

Run Docker commands from repo root

## Build:
`docker build -t ghcr.io/harness-iot/nginx -f ./ubuntu-22.04/Dockerfile .`

## Run (development):
`docker run -d --name nginx -p 80:80 --restart=always ghcr.io/harness-iot/nginx`

## Push:
`docker push ghcr.io/harness-iot/nginx:latest`