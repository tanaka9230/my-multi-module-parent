#!/bin/sh

# clean projects
mvn clean eclipse:clean

# clean myself
rm .project
rm -R .settings

# clean Eclipse's workspace settings
CURDIR=`pwd`
cd ..
rm -R .metadata
rm -R Servers
cd $CURDIR
