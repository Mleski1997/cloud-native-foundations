output "main_server_public_ip4" {
    description = "public ip4 "
    value       = hcloud_server.main_server.ipv4_address
}