#!/bin/bash

readonly MVN_COMMAND="mvn clean install -DskipTests"

cd windup
$MVN_COMMAND || exit 1
cd ..

cd windup-rulesets
$MVN_COMMAND || exit 1
cd ..

cd windup-distribution
$MVN_COMMAND || exit 1

cd target
unzip rhamt-cli-*.zip
