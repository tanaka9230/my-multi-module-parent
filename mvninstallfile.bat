@echo off

# main proc. (list your external libs.)
call :mvninstallfile tests test-another-java-app 0.0 jar
call :mvninstallfile tests JavaTest 0.0 jar
goto :EOF

:mvninstallfile
echo [mvn -P nop install:install-file -Dfile=lib\%2-%3.%4 -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -Dpackaging=%4 -DgeneratePom=true]
call mvn -P nop install:install-file -Dfile=lib\%2-%3.%4 -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -Dpackaging=%4 -DgeneratePom=true
