# terraform-hcloud-floating-ip

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.42.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.42.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_floating_ip.floating](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip) | resource |
| [hcloud_floating_ip_assignment.floating_assignment](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/floating_ip_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_floating_ip"></a> [create\_floating\_ip](#input\_create\_floating\_ip) | A boolean to check whether to create a Floating IP or not. | `bool` | `false` | no |
| <a name="input_create_floating_ip_assignment"></a> [create\_floating\_ip\_assignment](#input\_create\_floating\_ip\_assignment) | A boolean to check whether to create a Floating IP Assignment or not. | `bool` | `false` | no |
| <a name="input_floating_ip_assignment_floating_ip_id"></a> [floating\_ip\_assignment\_floating\_ip\_id](#input\_floating\_ip\_assignment\_floating\_ip\_id) | The ID of the Floating IP to be assigned. | `number` | `null` | no |
| <a name="input_floating_ip_assignment_server_id"></a> [floating\_ip\_assignment\_server\_id](#input\_floating\_ip\_assignment\_server\_id) | The Server to assign the Floating IP to. | `number` | `null` | no |
| <a name="input_floating_ip_delete_protection"></a> [floating\_ip\_delete\_protection](#input\_floating\_ip\_delete\_protection) | Enable or disable delete protection. | `bool` | `false` | no |
| <a name="input_floating_ip_description"></a> [floating\_ip\_description](#input\_floating\_ip\_description) | Description of the Floating IP. | `string` | `""` | no |
| <a name="input_floating_ip_home_location"></a> [floating\_ip\_home\_location](#input\_floating\_ip\_home\_location) | Name of home location (routing is optimized for that location). Optional if server\_id argument is passed. | `string` | `""` | no |
| <a name="input_floating_ip_labels"></a> [floating\_ip\_labels](#input\_floating\_ip\_labels) | User-defined labels (key-value pairs) should be created with. | `map(string)` | `{}` | no |
| <a name="input_floating_ip_name"></a> [floating\_ip\_name](#input\_floating\_ip\_name) | Name of the Floating IP to be created. | `string` | `""` | no |
| <a name="input_floating_ip_server_id"></a> [floating\_ip\_server\_id](#input\_floating\_ip\_server\_id) | Server to assign the Floating IP to. | `number` | `null` | no |
| <a name="input_floating_ip_type"></a> [floating\_ip\_type](#input\_floating\_ip\_type) | Type of the Floating IP. `ipv4` or `ipv6` | `string` | `"ipv4"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_floating_ip_assignment_floating_ip_id"></a> [floating\_ip\_assignment\_floating\_ip\_id](#output\_floating\_ip\_assignment\_floating\_ip\_id) | The ID of the Floating IP to be assigned. |
| <a name="output_floating_ip_assignment_id"></a> [floating\_ip\_assignment\_id](#output\_floating\_ip\_assignment\_id) | Unique ID of the Floating IP Assginment. |
| <a name="output_floating_ip_assignment_server_id"></a> [floating\_ip\_assignment\_server\_id](#output\_floating\_ip\_assignment\_server\_id) | The Server to assign the Floating IP to. |
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
