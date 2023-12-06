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
  # Replace these credentials by your own
  # issued on https://eu.api.ovh.com/createToken
  application_key    = "<your_application_key>"
  application_secret = "<your_application_secret>"
  consumer_key       = "<your_consumer_key>"
  # But remember it is a bad habit to store this here
  # Better to use ENV VARS, or variables
}
