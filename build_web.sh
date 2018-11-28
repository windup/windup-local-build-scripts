#!/bin/bash
cd ../windup-web
mvn -DskipTests clean install
cd ../windup-openshift
mvn -DskipTests clean install
cd ../windup-web-distribution
mvn -DskipTests clean install
cd target
unzip rhamt-web-*.zip
