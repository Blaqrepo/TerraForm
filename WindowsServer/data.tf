data "vsphere_datacenter" "dc" {
  name = var.vsphere_datacenter
}

data "vsphere_compute_cluster" "compute-cluster" {
  name          = var.vsphere_compute_cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}

#Sets the datastore that will be used when building this VM
data "vsphere_datastore_cluster" "datastore-cluster" {
  name          = var.vsphere_datastore_cluster
  datacenter_id = data.vsphere_datacenter.dc.id
}

#Sets the resource pool that this VM will be using.  Currently pointing the the default resource pool
data "vsphere_resource_pool" "pool" {
  name          = "${var.vsphere_compute_cluster}/${var.vsphere_resource_pool}"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = var.vmware_template
  datacenter_id = data.vsphere_datacenter.dc.id
}
