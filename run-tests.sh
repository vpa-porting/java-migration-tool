#!/bin/sh
# Thin CLI wrapper around the real test suite - see README.md. The same tests are runnable from
# IntelliJ IDEA / Android Studio via their own JUnit test runner (gutter icons, the Gradle tool
# window, or the "All Tests" run configuration checked into .idea/runConfigurations).
set -eu
cd "$(dirname "$0")"
./gradlew test "$@"
