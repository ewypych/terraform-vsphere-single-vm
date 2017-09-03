variable "viuser" {}
variable "vipassword" {}
variable "viserver" {
  default = "vcs1.local.domain"
}

// default VM name in vSphere
variable "vmname" {
  default = "test-vm"
}

// default VM hostname
variable "vmhostname" {
  default = "test-host"
}

// default Resource Pool
variable "vmrp" {
  default = "YOUR_RP"
}

// default VM domain for guest customization
variable "vmdomain" {
  default = "local.domain"
}

// default datastore to deploy vmdk
variable "vmdatastore" {
  default = "DS_SILVER_01"
}

// default VM Template
variable "vmtemp" {
  default = "CENTOS-TEMP"
}

// map of the datastore clusters (vmdatastore = "vmdscluster")
variable "vmdscluster" {
  type = "map"
  default = {
    DS_SILVER_01 = "DS_CLUSTER_SILVER"
    DS_SILVER_02 = "DS_CLUSTER_SILVER"
    DS_GOLD_01 = "DS_CLUSTER_GOLD"
    DS_GOLD_02 = "DS_CLUSTER_GOLD"
  }
}

// map of the compute clusters (vmrp = "vmcluster")
variable vmcluster {
  type = "map"
  default = {
    YOUR_RP = "RESOURCE_CLUSTER_GOLD"
    ANOTHER_RP = "RESOURCE_01_CLUSTER_GOLD"
    THIRD_RP = "RESOURCE_CLUSTER_SILVER"
  }
}

// map of the first three octets of the IP address (with netmask /24, vmdomain = "vmaddrbase")
variable "vmaddrbase" {
  type = "map"
  default = {
    local.domain = "192.168.0."
    second.domain = "192.168.1."
  }
}

// host octet in the IP address
variable "vmaddroctet" {
  default = "200"
}

// map of the IP gateways (vmdomain = "vmgateway")
variable "vmgateway" {
  type = "map"
  default = {
    local.domain = "192.168.0.1"
    second.domain = "192.168.1.1"
  }
}

// map of the DNS1 addresses (vmdomain = "vmdns1")
variable "vmdns1" {
  type = "map"
  default = {
    local.domain = "192.168.0.5"
    second.domain = "192.168.1.5"
  }
}

// map of the DNS2 addresses (vmdomain = "vmdns2")
variable "vmdns2" {
  type = "map"
  default = {
    local.domain = "192.168.0.6"
    second.domain = "192.168.1.6"
  }
}

// map of the VM Network (vmdomain = "vmnetlabel")
variable "vmnetlabel" {
  type = "map"
  default = {
    local.domain = "NET_Backend_01"
  }
}
