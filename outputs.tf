################################################
# Floating IP
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip
################################################

output "floating_ip_id" {
  description = "Unique ID of the Floating IP."
  value       = try(hcloud_floating_ip.floating[0].id, hcloud_floating_ip.floating[*].id, null)
}

output "floating_ip_name" {
  description = "Name of the Floating IP to be created."
  value       = try(hcloud_floating_ip.floating[0].name, hcloud_floating_ip.floating[*].name, "")
}

output "floating_ip_type" {
  description = "Type of the Floating IP. `ipv4` or `ipv6`"
  value       = try(hcloud_floating_ip.floating[0].type, hcloud_floating_ip.floating[*].type, "")
}

output "floating_ip_server_id" {
  description = "Server to assign the Floating IP to."
  value       = try(hcloud_floating_ip.floating[0].server_id, hcloud_floating_ip.floating[*].server_id, null)
}

output "floating_ip_home_location" {
  description = "Name of home location (routing is optimized for that location). Optional if server_id argument is passed."
  value       = try(hcloud_floating_ip.floating[0].home_location, hcloud_floating_ip.floating[*].home_location, "")
}

output "floating_ip_description" {
  description = "Description of the Floating IP."
  value       = try(hcloud_floating_ip.floating[0].description, hcloud_floating_ip.floating[*].description, "")
}

output "floating_ip_ip_address" {
  description = "IP Address of the Floating IP."
  value       = try(hcloud_floating_ip.floating[0].ip_address, hcloud_floating_ip.floating[*].ip_address, "")
}

output "floating_ip_ip_network" {
  description = "IPv6 subnet. (Only set if type is ipv6)"
  value       = try(hcloud_floating_ip.floating[0].ip_network, hcloud_floating_ip.floating[*].ip_network, "")
}

output "floating_ip_labels" {
  description = "User-defined labels (key-value pairs) should be created with."
  value       = try(hcloud_floating_ip.floating[0].labels, hcloud_floating_ip.floating[*].labels, null)
}

output "floating_ip_delete_protection" {
  description = "Enable or disable delete protection."
  value       = try(hcloud_floating_ip.floating[0].delete_protection, hcloud_floating_ip.floating[*].delete_protection, false)
}



################################################
# Floating IP Assignment
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip_assignment
################################################

output "floating_ip_assignment_id" {
  description = "Unique ID of the Floating IP Assginment."
  value       = try(hcloud_floating_ip_assignment.floating_assignment[0].id, hcloud_floating_ip_assignment.floating_assignment[*].id, null)
}

output "floating_ip_assignment_floating_ip_id" {
  description = "The ID of the Floating IP to be assigned."
  value       = try(hcloud_floating_ip_assignment.floating_assignment[0].floating_ip_id, hcloud_floating_ip_assignment.floating_assignment[*].floating_ip_id, null)
}

output "floating_ip_assignment_server_id" {
  description = "The Server to assign the Floating IP to."
  value       = try(hcloud_floating_ip_assignment.floating_assignment[0].server_id, hcloud_floating_ip_assignment.floating_assignment[*].server_id, null)
}
