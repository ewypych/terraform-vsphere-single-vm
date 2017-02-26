TERRAFORM vSPHERE BUILD
=======================

This is a basic build, which you can use to deploy a single VM in the vSphere infrastructure. Please notice that here you do not have many options like additional disk or copy .vmdk file. Anyway you do not need to specify every variables in the each build - there are a lot of maps which help to provision your infrastructure.

This build can be helpful with:

- deploy a new VM for some tests,
- deploy many VM, one by one,
- join infrastructure deploying to the Ansible builds,
- be a part of some tests, based on VMs
- many other cases.

You can find more details on my page, where I described [how to deploy vSphere VM with Terraform](https://emilwypych.com/2017/02/26/deploying-vsphere-vm-with-terraform/).

WARNING! Works only with Linux VMs!

Requirements
----------

Valid installation of vSphere with vCenter Server

Variables
---------

There are couple of variables. Some of them have default values. You should check all of them and ensure yourself that everything is valid for you Infrastructure deploy. This version has maps of variables, for example:

```
variable "vmgateway" {
  type = "map"
  default = {
    local.domain = "192.168.0.1"
    second.domain = "192.16.1.1"
  }
}
```

You need to create a file named terraform.tfvars in which you put your secrets and another custom variables. You can overwrite variables from the vars.tf file.

Please remember, that the most important variable is a vmdomain var (maps base on it), but you should specify the following variables:

```
viuser
vipassword
vmname
vmdomain
vmrp
vmdatastore
vmtemp
```

License
----------

[MIT](https://tldrlegal.com/license/mit-license)

Author
-------

[Emil Wypych](https://emilwypych.com)
