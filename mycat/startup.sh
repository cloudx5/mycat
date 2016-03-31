#!/bin/sh

cd `dirname $0`

HOME=$PWD
export JAVA_HOME=$HOME/java/jre1.7-x64
export PATH=$JAVA_HOME/bin:$PATH

cd $HOME/bin

./startup_nowrap.sh
