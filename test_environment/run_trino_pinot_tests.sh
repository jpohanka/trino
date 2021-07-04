#!/bin/bash

docker run -it \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $HOME/.m2:/root/.m2 \
    -v $TRINO_REPO_PATH:/trino \
    --workdir /trino \
    trinotestenv:latest bash -c "./mvnw -Dtest=TestBrokerQueries test -pl :trino-pinot"
