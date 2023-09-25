################################################
# Floating IP
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip
################################################

output "floating_ip_id" {
  description = "Unique ID of the Floating IP."
  value       = module.floating.floating_ip_id
}

output "floating_ip_name" {
  description = "Name of the Floating IP to be created."
  value       = module.floating.floating_ip_name
}

output "floating_ip_type" {
  description = "Type of the Floating IP. `ipv4` or `ipv6`"
  value       = module.floating.floating_ip_type
}

output "floating_ip_server_id" {
  description = "Server to assign the Floating IP to."
  value       = module.floating.floating_ip_server_id
}

output "floating_ip_home_location" {
  description = "Name of home location (routing is optimized for that location). Optional if server_id argument is passed."
  value       = module.floating.floating_ip_home_location
}

output "floating_ip_description" {
  description = "Description of the Floating IP."
  value       = module.floating.floating_ip_description
}

output "floating_ip_ip_address" {
  description = "IP Address of the Floating IP."
  value       = module.floating.floating_ip_ip_address
}

output "floating_ip_ip_network" {
  description = "IPv6 subnet. (Only set if type is ipv6)"
  value       = module.floating.floating_ip_ip_network
}

output "floating_ip_labels" {
  description = "User-defined labels (key-value pairs) should be created with."
  value       = module.floating.floating_ip_labels
}

output "floating_ip_delete_protection" {
  description = "Enable or disable delete protection."
  value       = module.floating.floating_ip_delete_protection
}
