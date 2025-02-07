#!/bin/bash
if [ "$#" -lt "1" ] ; then
  echo "$0 port"
  exit 1
fi
port="${1}"

#snmpwalk -v 2c -c ReCaScoreSwitch -On 172.16.0.1 .1.3.6.1.2.1.2.2.1.2.$port 2>/dev/null | awk -F'STRING: ' '{print $2}'
snmp_port_to_name 172.16.0.1 ReCaScoreSwitch $port
#.1.3.6.1.2.1.2.2.1.2.625 = STRING: "10GE12/0/47"