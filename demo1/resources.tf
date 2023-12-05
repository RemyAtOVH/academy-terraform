# Create the OpenStack keypair
resource "openstack_compute_keypair_v2" "Terraform_OVH_Key" {
  name       = "Terraform_SSHKey"
  public_key = file("~/.ssh/id_rsa.pub")

  provider   = openstack
}

resource "openstack_compute_instance_v2" "Instances" {
  count       = "1"
  name        = "Discovery_${count.index}"
  image_name  = "Ubuntu 21.04"
  flavor_name = "d2-2"
  key_pair    = "Terraform_SSHKey"

  network {
    access_network = true
    port           = "${openstack_networking_port_v2.NET_Public_Port.*.id[count.index]}"
  }

  provider    = openstack
}
