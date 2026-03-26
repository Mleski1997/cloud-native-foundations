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
  }
}

provider "hcloud" {
  token = var.hcloud_token
}