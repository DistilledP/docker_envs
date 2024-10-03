#!/bin/bash

PRUNE=$(echo "${1}" | tr '[:upper:]' '[:lower:]')

if [[ "${PRUNE}" == "prune" ]]; then
    echo -e "\nSystem prune"
    docker system prune --all -f
else
    echo -e "\nRemoving dangling volumes"
    docker volume rm $(docker volume ls -qf dangling=true)

    echo -e "\nPruning dangling images"
    docker image prune -f

    echo -e "\nPruning dangling networks"
    docker network prune -f

    echo -e "\nRemoving existed containers"
    docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
fi
