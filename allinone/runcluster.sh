#!/bin/bash

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`
. $bin/install-config.sh

if [ $# = 0 ]; then
echo "Usage: runcluster.sh <command>"
exit 1
fi

$bin/runslaves.sh $@

echo "###### Execute command on localhost"
$@
