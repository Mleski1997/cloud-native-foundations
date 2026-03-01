output "main_server" {
    description = "public ip4 "
    value       = hcloud_server.main_server.ipv4_address
}