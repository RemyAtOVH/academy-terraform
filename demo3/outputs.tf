output "lb_ip" {
  value = openstack_networking_floatingip_v2.tf_lb_floatingip.address
  description = "Octavia Load Balancer IP: "
}