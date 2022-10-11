# Harness NGINX

Run Docker commands from repo root

## Build:

`docker build -t ghcr.io/harness-iot/nginx:[version] -t ghcr.io/harness-iot/nginx:latest .`

## Run (development):

`docker run -d --name nginx -p 80:80 --restart=always ghcr.io/harness-iot/nginx:[version]|latest`

## Push:

1. `docker push ghcr.io/harness-iot/nginx:[version]`
2. `docker push ghcr.io/harness-iot/nginx:latest` (just tags as 'latest')

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`
