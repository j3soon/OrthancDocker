#!/usr/bin/env bash
set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $DIR/..

cd orthanc
docker build . -t j3soon/orthanc:1.9.6
docker build . -t j3soon/orthanc:latest
docker push j3soon/orthanc:1.9.6
docker push j3soon/orthanc:latest
cd ..

cd orthanc-plugins
docker build . -t j3soon/orthanc-plugins:1.9.6
docker build . -t j3soon/orthanc-plugins:latest
docker push j3soon/orthanc-plugins:1.9.6
docker push j3soon/orthanc-plugins:latest
cd ..

cd orthanc-python
docker build . -t j3soon/orthanc-python:1.9.6
docker build . -t j3soon/orthanc-python:latest
docker push j3soon/orthanc-python:1.9.6
docker push j3soon/orthanc-python:latest
cd ..
