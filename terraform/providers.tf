terraform {
  cloud {
    organization = "mleski-devops"
    workspaces {
      name = "cloud-native-foundations"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

