#!/usr/bin/env bash
set -e

mvn clean compile
echo "###### Running without modules"
echo "###### Prints INFO only as expected"

java -cp target/classes:"$(cat target/classpath.txt)" com.github.agavrilov.logback.Main

echo "###### Running with modules"
echo "###### !!! Prints both INFO and DEBUG ignoring the logback.xml config"

java -p target/classes:"$(cat target/classpath.txt)" -m com.github.agavrilov.logback/com.github.agavrilov.logback.Main
