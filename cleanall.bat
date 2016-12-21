@echo off

rem - clean projects
call mvn clean eclipse:clean

rem - clean Eclipse's workspace settings
set CURDIR=%cd%
cd ..
rd /S /Q .metadata
rd /S /Q Servers
cd %CURDIR%
