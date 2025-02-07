#!/bin/bash
if [ "$#" -lt "1" ] ; then
  echo "$0 host"
  echo "Get tenant name from vm running on compute host"
  exit 1
fi
for vm_id in `compute_to_id $1` ; do
  tenant_id=`openstack server show $vm_id -f value -c project_id`
  openstack project show $tenant_id -f value -c name
done