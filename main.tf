################################################
# Floating IP
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip
################################################


resource "hcloud_floating_ip" "floating" {
  count = var.create_floating_ip ? 1 : 0

  name              = var.floating_ip_name
  type              = var.floating_ip_type
  server_id         = var.floating_ip_server_id
  home_location     = var.floating_ip_home_location
  description       = var.floating_ip_description
  labels            = var.floating_ip_labels
  delete_protection = var.floating_ip_delete_protection
}

################################################
# Floating IP Assignment
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip_assignment
################################################

resource "hcloud_floating_ip_assignment" "floating_assignment" {
  count = var.create_floating_ip_assignment ? 1 : 0

  floating_ip_id = var.floating_ip_assignment_floating_ip_id
  server_id      = var.floating_ip_assignment_server_id
}
