# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = var.hcloud_token
}


module "sv" {
  source  = "zoro16/server/hcloud"
  version = "1.0.0"

  create_server = true
}


module "floating" {
  source = "../../"

  create_floating_ip = true

  floating_ip_name          = "some-floating-ip"
  floating_ip_type          = "ipv4"
  floating_ip_server_id     = 0
  floating_ip_home_location = "fsn1"
  floating_ip_description   = "some description"
  floating_ip_labels = {
    "name" : "cool-floating-ip"
  }
  floating_ip_delete_protection = false
}

module "floating_assignment" {
  source = "../../"

  create_floating_ip_assignment = true

  floating_ip_assignment_floating_ip_id = module.floating.floating_ip_id
  floating_ip_assignment_server_id      = module.sv.server_id

}
