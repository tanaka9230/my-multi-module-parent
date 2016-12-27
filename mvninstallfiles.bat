@echo off
setlocal

:: main proc. (list your external libs.)
call :mvninstallfile tests test-another-java-app 0.0 jar
call :mvninstallfile tests JavaTest 0.0 jar
goto :EOF

:mvninstallfile
set LIB_FILE=lib\%2-%3.%4
set POM_FILE=lib\%2-%3.pom
if exist "%POM_FILE%" ( 
    echo [mvn -P nop install:install-file -Dfile=%LIB_FILE% -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -Dpackaging=%4 -DpomFile=%POM_FILE%]
    call mvn -P nop install:install-file -Dfile=%LIB_FILE% -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -Dpackaging=%4 -DpomFile=%POM_FILE%
) else (
    echo [mvn -P nop install:install-file -Dfile=%LIB_FILE% -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -Dpackaging=%4 -DgeneratePom=true]
    call mvn -P nop install:install-file -Dfile=%LIB_FILE% -DgroupId=%1 -DartifactId=%2 -Dversion=%3 -Dpackaging=%4 -DgeneratePom=true
)
