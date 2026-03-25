terraform {
  cloud {
    organization = "mleski-devops"
    workspaces {
      name = "cloud-native-foundations"
    }
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.49"
    }

    local = {
        source = "hashicorp/local"
        version = "~> 2.5"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}