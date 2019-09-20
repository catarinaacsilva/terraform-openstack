# Terraform and Openstack

Terraform: Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service

OpenStack: cloud operating system open source for creating public and private instances. 

## Requirements

- An OpenStack user
- OpenStack environment variables
- SSH key: generate your key pair
- Terraform executable

   1. `wget https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_linux_amd64.zip`

   2. `unzip terraform_0.12.9_linux_amd64.zip`

   3. `sudo mv terraform /usr/local/bin/terraform`

   4. `terraform -v`

- OpenStack executables

    `sudo apt install python-openstackclient`

## Virtual Environment

1. `python3 -m venv venv`

2. `source venv/bin/activate`

## Create an Terraform environment

1. `terraform env new test_terraform`

## Run file with OpenStack environment variables
`. terraform-openrc.sh`

*complete this file with information about openstack (you can obtain this in your private account at openstack)*

## Create an instance

1. `pip install python-novaclient`
2. `pip install python-glanceclient`
3. To find all flavor names, or instances types, you can enter the following command :

    `nova flavor-list`

4. To find all image name you can enter the following command :

    `glance image-list`

5. Create file simple_instance.tf

* See this file and fill with your information*


## Run in a new session

1. `. terraform-openrc.sh`
3. `nova flavor-list`


