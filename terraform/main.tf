resource "hcloud_server" "main_server" {
  name        = var.server_name
  image       = "ubuntu-24.04"
  server_type = "cx23"
  location    = "nbg1"
  ssh_keys    = [hcloud_ssh_key.main.id]

  user_data = templatefile("${path.module}/cloud-init.yaml.tftpl", {
    deployer_user       = var.deployer_user
    deployer_public_key = var.ssh_public_keys[0]
  })
}

resource "hcloud_ssh_key" "main" {
  name       = "${var.server_name}-ssh-public"
  public_key = var.ssh_public_keys[0]
}