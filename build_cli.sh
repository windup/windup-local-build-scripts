#!/bin/bash
cd ../windup
mvn -DskipTests clean install
cd ../windup-rulesets
mvn -DskipTests clean install
cd ../windup-distribution
mvn -DskipTests clean install
cd target
unzip rhamt-cli-*.zip
