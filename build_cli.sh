#!/bin/bash

#Run this script from the parent directory of the local Repo directories listed below

readonly MVN_COMMAND="mvn clean install -DskipTests"

cd windup
$MVN_COMMAND || exit 1
cd ..

cd windup-rulesets
$MVN_COMMAND || exit 1
cd ..

cd windup-distribution
$MVN_COMMAND || exit 1

cd windup-cli/target
unzip windup-cli-*.zip
