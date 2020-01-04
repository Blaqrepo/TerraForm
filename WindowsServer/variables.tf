variable "vsphere_unverified_ssl" {
  default = "true"
}
variable "vsphere_username" {
  default = "Gibby"
}
variable "vsphere_password" {}
variable "vsphere_datacenter" {
  default = "Dyson Family"
}
variable "vsphere_server" {
  default = "blaqvca.dysonfamily.net"
}
variable "os" {
  default = "Microsoft Windows Server 2016 or later (64-bit)"
}
variable "vsphere_compute_cluster" {
  default = "Dyson"
}
variable "vsphere_datastore_cluster" {
  default = "Dyson-DS"
}
variable "vsphere_network" {
  default = "VM Network"
}
variable "vsphere_resource_pool" {
  default = "Resources"
}
variable "server_name" {
  default = "SWVDCXVGSTTTT85"
}
variable "num_cpus" {
  default = 2
}
variable "memory" {
  default = 8192
}
variable "vmware_template" {
  default = "WinServer_2016"
}
variable "computer_name" {
  default = "TestServer"
}
variable "company" {
  default = "Dyson Family"
}
