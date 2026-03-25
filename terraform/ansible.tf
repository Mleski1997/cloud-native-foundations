resource "local_file" "ansible_inventory" {
  content = <<EOT
[servers]
cloud-native-foundations ansible_host=${hcloud_server.main_server.ipv4_address}
EOT

  filename = "../ansible/inventory/hosts"
}