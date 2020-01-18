# selfhost-docker-compose
Docker-compose configuration files for running several services behind a nginx proxy.

## Prerequisites
- docker
- docker-compose

## Usage
- start a service with ``docker-compose up -d`` in the corresponding folder
- nginx service has to be started first and running for the others to work
- set secret variables in a `.env` in the corresponding folder
