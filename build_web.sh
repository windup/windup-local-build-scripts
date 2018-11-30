#!/bin/bash

#Run this script from the parent directory of the local Repo directories listed below

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
