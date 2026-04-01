variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
  sensitive   = true
}

variable "server_name" {
  description = "Name of the server to create"
  type        = string
}

variable "ssh_public_keys" {
  description = "SSH public keys (content) for Hetzner panel + cloud-init deployer user"
  type        = list(string)

}

variable "deployer_user" {
  description = "First-boot user created by cloud-init (logujesz się nim przed Ansible)"
  type        = string
  default     = "deployer"
}

