# Harness NGINX

Run Docker commands from repo root

## Run (development):
Note: use the `docker-compose.yml` file for local development only as it will set the `network_mode` to `"host"` so NGINX can point to localhost outside the container. <br/>
In repo root, run `docker-compose up -d`

## Build:

`docker build -t ghcr.io/harness-iot/nginx:[version] -t ghcr.io/harness-iot/nginx:latest .`

## Push:

1. `docker push ghcr.io/harness-iot/nginx:[version]`
2. `docker push ghcr.io/harness-iot/nginx:latest` (just tags as 'latest')

## Notes

- For `denied: permission_denied: The token provided does not match expected scopes.` error, login into Docker with `docker login ghcr.io`
