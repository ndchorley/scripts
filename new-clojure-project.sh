#!/bin/bash

PROJECT_NAME=$1

if [ -z $PROJECT_NAME ]
then
    echo "Usage: new-clojure-project.sh PROJECT_NAME"
    exit 1
fi

docker run \
       --rm \
       -v "$PWD:/work" \
       -w "/work" \
       clojure:openjdk-16-lein-2.9.6 \
       lein new app $PROJECT_NAME

