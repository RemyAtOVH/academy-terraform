variable ovh_public_cloud_project_id{
  type = string
  default = "61fc4602634148acae0426ace8e1b2a0"
}

variable openstack_region {
  type = string
  default = "GRA9"
}

variable resource_prefix {
  type = string
  default = "tf_lb_"
}
variable image_name {
  type = string
  default = "Ubuntu 22.10"
}
variable instance_type {
  type = string
  default = "d2-2"
}
variable external_network {
  type = string
  default = "Ext-Net"
}

variable "instance_nb" {
  default = 2
}