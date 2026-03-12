#!/bin/sh
# Maven Wrapper script for Unix-based systems
# This script downloads and runs Maven without requiring a global Maven installation

set -e

# Determine the project base directory
if [ -z "$MAVEN_PROJECTBASEDIR" ]; then
  MAVEN_PROJECTBASEDIR="$(cd "$(dirname "$0")" && pwd)"
  export MAVEN_PROJECTBASEDIR
fi

MAVEN_WRAPPER_JAR="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.jar"
MAVEN_WRAPPER_PROPERTIES="$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.properties"

# If the wrapper jar doesn't exist, download it
if [ ! -f "$MAVEN_WRAPPER_JAR" ]; then
  if [ -f "$MAVEN_WRAPPER_PROPERTIES" ]; then
    WRAPPER_URL=$(grep "wrapperUrl" "$MAVEN_WRAPPER_PROPERTIES" | cut -d'=' -f2-)
    echo "Downloading Maven Wrapper from $WRAPPER_URL"
    if command -v wget > /dev/null; then
      wget -O "$MAVEN_WRAPPER_JAR" "$WRAPPER_URL"
    elif command -v curl > /dev/null; then
      curl -o "$MAVEN_WRAPPER_JAR" "$WRAPPER_URL"
    fi
  fi
fi

# Find java
if [ -n "$JAVA_HOME" ]; then
  JAVACMD="$JAVA_HOME/bin/java"
else
  JAVACMD="$(command -v java)"
fi

exec "$JAVACMD" \
  $MAVEN_OPTS \
  -jar "$MAVEN_WRAPPER_JAR" \
  "$@"
