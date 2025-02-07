#!/bin/bash
if [ "$#" -lt "1" ] ; then
  echo "$0 host"
  echo "Get info from vm running on compute host"
  exit 1
fi
for host in $@ ; do
  for vm_id in `compute_to_id $host` ; do
    id_to_info $vm_id
  done
done