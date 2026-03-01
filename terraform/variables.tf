variable "hcloud_token" {
  description = "HCL Cloud API token"
  type        = string
  sensitive   = true
}

variable "server_name" {
  description = "Name of the server to create"
  type        = string
}

variable "ssh_public_keys" {
  description = "Name of the SSH key to use for the server"
  type        = list(string)
}

