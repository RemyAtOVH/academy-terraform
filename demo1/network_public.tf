resource "openstack_networking_port_v2" "NET_Public_Port" {
  count          = "1"
  name           = "Discovery_${count.index}"
  network_id     = "${data.openstack_networking_network_v2.NET_Public.id}"
  admin_state_up = "true"

  provider       = openstack
}

data "openstack_networking_network_v2" "NET_Public" {
  name     = "Ext-Net"

  provider = openstack
}
