#!/bin/bash
if [ "$#" -lt "1" ] ; then
  echo "$0 mac"
  exit 1
fi
mac=${1}
echo `snmp_mac_to_ip 172.16.0.1 ReCaScoreSwitch $mac`