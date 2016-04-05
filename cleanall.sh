#!/bin/sh

# clean projects
mvn clean eclipse:clean

# clean Eclipse's workspace settings
CURDIR=`pwd`
cd ..
rm -R .metadata
rm -R Servers
cd $CURDIR
