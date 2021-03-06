#!/bin/bash

set -o errexit

setup_dependencies() {
  echo "INFO:
  Setting up dependencies.
  "
  sudo apt update -y && \
    apt install realpath \
                python \
                python-pip -y && \
    apt install --only-upgrade docker-ce -y

  sudo pip install docker-compose || true

  docker info
  docker-compose --version
}

update_docker_configuration() {
  echo "INFO:
  Updating docker configuration
  "

  echo '{
  "experimental": true,
  "storage-driver": "overlay2",
  "max-concurrent-downloads": 50,
  "max-concurrent-uploads": 50
}' | sudo tee /etc/docker/daemon.json
  sudo service docker restart
}

main() {
  setup_dependencies
  update_docker_configuration

  echo "SUCCESS:
  Done! Finished setting up Travis machine.
  "
}

main