#!/bin/bash

mvninstallfile() {
    LIB_FILE=lib/$2-$3.$4
    POM_FILE=lib/$2-$3.pom
    if [ -e $POM_FILE ]; then
        echo "[mvn -P nop install:install-file -Dfile=$LIB_FILE -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -Dpackaging=$4 -DpomFile=$POM_FILE]"
        mvn -P nop install:install-file -Dfile=$LIB_FILE -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -Dpackaging=$4 -DpomFile=$POM_FILE
    else
        echo "[mvn -P nop install:install-file -Dfile=$LIB_FILE -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -Dpackaging=$4 -DgeneratePom=true]"
        mvn -P nop install:install-file -Dfile=$LIB_FILE -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -Dpackaging=$4 -DgeneratePom=true
    fi
}

# main proc. (list your external libs.)
mvninstallfile tests test-another-java-app 0.0 jar
mvninstallfile tests JavaTest 0.0 jar
