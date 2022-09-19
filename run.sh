#!/usr/bin/env bash
set -e

mvn clean compile
echo "###### Running without modules"
echo "###### Prints OK: INFO"

java -cp target/classes:"$(cat target/classpath.txt)" com.github.agavrilov.logback.Main

echo "###### Running with modules"
echo "###### !!! Error"

java -p target/classes:"$(cat target/classpath.txt)" -m com.github.agavrilov.logback/com.github.agavrilov.logback.Main
