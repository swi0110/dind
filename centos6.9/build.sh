#!/bin/bash

cp ../wrapdocker .
docker build -t centos6.9 .
rm wrapdocker
