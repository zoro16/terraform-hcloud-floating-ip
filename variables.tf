################################################
# Floating IP
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip
################################################

variable "create_floating_ip" {
  description = "A boolean to check whether to create a Floating IP or not."
  type        = bool
  default     = false
}

variable "floating_ip_name" {
  description = "Name of the Floating IP to be created."
  type        = string
  default     = ""
}

variable "floating_ip_type" {
  description = "Type of the Floating IP. `ipv4` or `ipv6`"
  type        = string
  default     = "ipv4"

  validation {
    condition     = contains(["ipv4", "ipv6"], var.floating_ip_type)
    error_message = "Floating IP type could only be `ipv4` or `ipv6`. Please use a valid type."
  }

}

variable "floating_ip_server_id" {
  description = "Server to assign the Floating IP to."
  type        = number
  default     = null
}

variable "floating_ip_home_location" {
  description = "Name of home location (routing is optimized for that location). Optional if server_id argument is passed."
  type        = string
  default     = ""

  validation {
    condition     = contains(["fsn1", "nbg1", "hel1", "ash", "hil", ""], var.floating_ip_home_location)
    error_message = "Floating IP type could only be `ipv4` or `ipv6`. Please use a valid type."
  }

}

variable "floating_ip_description" {
  description = "Description of the Floating IP."
  type        = string
  default     = ""
}

variable "floating_ip_labels" {
  description = "User-defined labels (key-value pairs) should be created with."
  type        = map(string)
  default     = {}
}

variable "floating_ip_delete_protection" {
  description = "Enable or disable delete protection."
  type        = bool
  default     = false
}

################################################
# Floating IP Assignment
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip_assignment
################################################

variable "create_floating_ip_assignment" {
  description = "A boolean to check whether to create a Floating IP Assignment or not."
  type        = bool
  default     = false
}


variable "floating_ip_assignment_floating_ip_id" {
  description = "The ID of the Floating IP to be assigned."
  type        = number
  default     = null
}

variable "floating_ip_assignment_server_id" {
  description = "The Server to assign the Floating IP to."
  type        = number
  default     = null
}
