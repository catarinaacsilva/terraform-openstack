# Terraform and Openstack

Terraform: Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service

OpenStack: cloud operating system open source for creating public and private instances. 

## Requirements

- An OpenStack user
- OpenStack environment variables
- SSH key
- Terraform executable

   1. `wget https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_linux_amd64.zip`

   2. `unzip terraform_0.12.9_linux_amd64.zip`

   3. `sudo mv terraform /usr/local/bin/terraform`

   4. `terraform -v`

- OpenStack executables

    `sudo apt install python-openstackclient`