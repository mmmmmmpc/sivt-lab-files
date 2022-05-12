#!/bin/bash
set -e
echo " ##### Configuring AVI ##### "
arcas --env vsphere --file vsphere-dvs-tkgm.json --avi_configuration --verbose
sleep 15
echo " ##### Configuring Management Cluster ##### "
arcas --env vsphere --file vsphere-dvs-tkgm.json --tkg_mgmt_configuration --verbose
sleep 15
echo " ##### Configuring Shared Service Cluster ##### "
arcas --env vsphere --file vsphere-dvs-tkgm.json --shared_service_configuration --verbose
sleep 15
echo " ##### Pre-configuring Workload Cluster ##### "
arcas --env vsphere --file vsphere-dvs-tkgm.json --workload_preconfig --verbose
sleep 15
echo " ##### Configuring Workload Cluster ##### "
arcas --env vsphere --file vsphere-dvs-tkgm.json --workload_deploy --verbose
