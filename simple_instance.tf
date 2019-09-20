# Import an Existing Public Key
resource "openstack_compute_keypair_v2" "test-keypair" {
    # provider = "openstack" # Provider name
    name = "SSH_KEY'S_NAME" # SSH key's name
    public_key =  "${file("PATH_TO_YOUR_PUBLIC_KEY")}" # Path of your SSH key
   
}
# Create an instance OpenStack
resource "openstack_compute_instance_v2" "test_terraform_instance" {
    name = "terraform_instance"
    provider = "openstack" # Provider name
    image_name = "IMAGE_NAME" # Image name
    flavor_name = "FLAVOR_NAME" # Flavor name
    # Get the name of the resource openstack_compute_keypair_v2 named test_keypair
    key_pair = "${openstack_compute_keypair_v2.test-keypair.name}"
    network {
        name = "Ext-Net" # Add the network component to contact your machine
    }
}
