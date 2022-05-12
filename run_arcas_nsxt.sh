
#!/bin/bash
set -e
echo " ##### Preconfiguring NSX-t ##### "
arcas --env vcf --file vsphere-nsxt-tkgm.json --vcf_pre_configuration --verbose
sleep 15
echo " ##### Configuring AVI ##### "
arcas --env vcf --file vsphere-nsxt-tkgm.json --avi_configuration --verbose
sleep 15
echo " ##### Configuring Management Cluster ##### "
arcas --env vcf --file vsphere-nsxt-tkgm.json --tkg_mgmt_configuration --verbose
sleep 15
echo " ##### Configuring Shared Service Cluster ##### "
arcas --env vcf --file vsphere-nsxt-tkgm.json --shared_service_configuration --verbose
sleep 15
echo " ##### Pre-configuring Workload Cluster ##### "
arcas --env vcf --file vsphere-nsxt-tkgm.json --workload_preconfig --verbose
sleep 15
echo " ##### Configuring Workload Cluster ##### "
arcas --env vcf --file vsphere-nsxt-tkgm.json --workload_deploy --verbose
