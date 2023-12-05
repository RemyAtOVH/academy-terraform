# Declare the required Providers
terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.51.1"
    }
    ovh = {
      source  = "ovh/ovh"
      version = "~> 0.31.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  auth_url    = "https://auth.cloud.ovh.net/v3.0/"

  # Credentials are acquired by a previous `source openrc.sh`
}

# Configure the OVHcloud Provider
provider "ovh" {
  endpoint           = "ovh-eu" # Endpoint of the provider
  application_key    = "bf6eeec86243c8aa"
  application_secret = "2587b5e3050f7a72137f480aee556af1"
  consumer_key       = "8cd8038c6e539d062285ca8daa6d7335"
}
