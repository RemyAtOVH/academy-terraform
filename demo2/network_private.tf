resource "ovh_cloud_project_network_private" "NET_Private" {
  service_name = "61fc4602634148acae0426ace8e1b2a0"
  name         = "private_network"
  regions      = ["GRA1"]
  vlan_id      = 168  # vRack identifier

  provider     = ovh
}

# Create a subnet work in the previous network
resource "ovh_cloud_project_network_private_subnet" "NET_Private_Subnet" {
  network_id   = "${ovh_cloud_project_network_private.NET_Private.id}"
  service_name = "61fc4602634148acae0426ace8e1b2a0"  # Project ID
  start        = "192.168.168.100"                   # Subnet start IP
  end          = "192.168.168.200"                   # Subnet end IP
  network      = "192.168.168.0/24"                  # Global network
  dhcp         = true                                # DHCP activation
  region       = "GRA1"

  provider     = ovh
}
