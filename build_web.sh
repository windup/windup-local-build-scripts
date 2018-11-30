#!/bin/bash

#Before running this script ensure the docker daemon is running

readonly MVN_COMMAND="mvn clean install -DskipTests"

cd windup-web
$MVN_COMMAND || exit 1
cd ..

cd windup-openshift
$MVN_COMMAND || exit 1
cd ..

cd windup-web-distribution
$MVN_COMMAND || exit 1

cd target

unzip rhamt-web-*.zip
