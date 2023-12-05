# Declare the required Providers
terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.51.1"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  auth_url    = "https://auth.cloud.ovh.net/v3.0/"

  # Credentials are acquired by a previous `source openrc.sh`
}