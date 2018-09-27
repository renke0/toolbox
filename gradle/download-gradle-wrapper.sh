#!/usr/bin/env bash

export gradle_version="$1"
echo "> downloading gradle-${gradle_version}-src.zip"
mkdir -p gradle/wrapper
curl -L -o gradle.zip "http://services.gradle.org/distributions/gradle-${gradle_version}-src.zip"
unzip -j "gradle.zip" "gradle-${gradle_version}/gradlew" -d "./"
unzip -j "gradle.zip" "gradle-${gradle_version}/gradle/wrapper/*" -d "./gradle/wrapper/"
chmod +x gradlew
