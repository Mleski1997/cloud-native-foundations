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

resource "hcloud_server" "main_server" {
  name        = var.server_name
  image       = "ubuntu-24.04"
  server_type = "cx23"
  location    = "nbg1"
  ssh_keys    = [hcloud_ssh_key.main.id]
}

resource "hcloud_ssh_key" "main" {
  name       = "${var.server_name}-ssh-public"
  public_key = var.ssh_public_keys[0]
}