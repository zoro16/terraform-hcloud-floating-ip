# floating-ip-for-server

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.42.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_floating"></a> [floating](#module\_floating) | ../../ | n/a |
| <a name="module_floating_assignment"></a> [floating\_assignment](#module\_floating\_assignment) | ../../ | n/a |
| <a name="module_sv"></a> [sv](#module\_sv) | zoro16/server/hcloud | 1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | Hetzner Cloud API Token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_floating_ip_delete_protection"></a> [floating\_ip\_delete\_protection](#output\_floating\_ip\_delete\_protection) | Enable or disable delete protection. |
| <a name="output_floating_ip_description"></a> [floating\_ip\_description](#output\_floating\_ip\_description) | Description of the Floating IP. |
| <a name="output_floating_ip_home_location"></a> [floating\_ip\_home\_location](#output\_floating\_ip\_home\_location) | Name of home location (routing is optimized for that location). Optional if server\_id argument is passed. |
| <a name="output_floating_ip_id"></a> [floating\_ip\_id](#output\_floating\_ip\_id) | Unique ID of the Floating IP. |
| <a name="output_floating_ip_ip_address"></a> [floating\_ip\_ip\_address](#output\_floating\_ip\_ip\_address) | IP Address of the Floating IP. |
| <a name="output_floating_ip_ip_network"></a> [floating\_ip\_ip\_network](#output\_floating\_ip\_ip\_network) | IPv6 subnet. (Only set if type is ipv6) |
| <a name="output_floating_ip_labels"></a> [floating\_ip\_labels](#output\_floating\_ip\_labels) | User-defined labels (key-value pairs) should be created with. |
| <a name="output_floating_ip_name"></a> [floating\_ip\_name](#output\_floating\_ip\_name) | Name of the Floating IP to be created. |
| <a name="output_floating_ip_server_id"></a> [floating\_ip\_server\_id](#output\_floating\_ip\_server\_id) | Server to assign the Floating IP to. |
| <a name="output_floating_ip_type"></a> [floating\_ip\_type](#output\_floating\_ip\_type) | Type of the Floating IP. `ipv4` or `ipv6` |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
