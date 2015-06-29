#!/bin/bash

if [[ $# < 1 ]]; then
  echo "$0 <ambari-server>"
  exit
fi

SCRIPT_DIR=`dirname $0`
SCRIPT_DIR=`cd $SCRIPT_DIR; pwd`

AMBARI_SERVER=$1
echo "Configuring Ambari Agent to use server: $AMBARI_SERVER ..."

CMD="sed -i s/localhost/$AMBARI_SERVER/g /etc/ambari-agent/conf/ambari-agent.ini"
echo "Configuring Ambari Server..."
#echo "Running $CMD"
echo
pdsh -l root -R ssh -w ^$SCRIPT_DIR/../conf/hosts $CMD

echo "Restarting Ambari Agent..."
echo
CMD="ambari-agent restart"
pdsh -l root -R ssh -w ^$SCRIPT_DIR/../conf/hosts $CMD

