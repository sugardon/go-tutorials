# go-tutorials

## Run

1. up
   ```bash
   docker compose up -d
   ```
1. exec
   ```bash
   docker-compose exec docker-ebpf /bin/bash
   # inside docker container
   # # make generate 
   # # go run ./cmd/ebpf-xdp-test/ eth0
   ```
1. down
   ```bash
   docker compose down
   ```
