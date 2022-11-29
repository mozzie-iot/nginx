# Huebot NGINX

Run Docker commands from repo root

Note: it's worth setting `network_mode` to `"host"` so that other services (hub-core, mqtt) can be referenced via localhost. Otherwise, you'd need to refernce them by container name and if that service is down then the NGINX service will not start

## Run (development):
`docker-compose up -d`

## Build:

`docker build -t ghcr.io/harness-iot/nginx:[version] -t ghcr.io/harness-iot/nginx:latest .`

## Push:

1. `docker push ghcr.io/harness-iot/nginx:[version]`
2. `docker push ghcr.io/harness-iot/nginx:latest` (just tags as 'latest')

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`
