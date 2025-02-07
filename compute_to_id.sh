#!/bin/bash
if [ "$#" -lt "1" ] ; then
  echo "$0 host"
  echo "Get vm_id running on compute host"
  exit 1
fi
for host in $@ ; do
  openstack server list --host $host --all-projects -f value -c 'ID'
done