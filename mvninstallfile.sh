#!/bin/sh

mvninstallfile() {
    echo "[mvn -P nop install:install-file -Dfile=lib/$2-$3.$4 -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -Dpackaging=$4 -DgeneratePom=true]"
    mvn -P nop install:install-file -Dfile=lib/$2-$3.$4 -DgroupId=$1 -DartifactId=$2 -Dversion=$3 -Dpackaging=$4 -DgeneratePom=true
}

# main proc. (list your external libs.)
mvninstallfile tests test-another-java-app 0.0 jar
mvninstallfile tests JavaTest 0.0 jar
