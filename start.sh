#!/bin/bash

app="alik"
docker build -t ${app} .
docker run -d -p 4368:80 \
  --name=${app} \
  -v $PWD:/app ${app}