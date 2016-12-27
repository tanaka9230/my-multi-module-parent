@echo off
setlocal

:: clean projects
call mvn clean eclipse:clean

:: clean myself
del .project
rd /S /Q .settings

:: clean Eclipse's workspace settings
set CURDIR=%cd%
cd ..
rd /S /Q .metadata
rd /S /Q Servers
cd %CURDIR%
