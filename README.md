## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.57.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_eventhub_namespace.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.57.0/docs/resources/eventhub_namespace) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.57.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.57.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Key-value tags to assign to the resource for identification and management. | `map(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name to differentiate resources (e.g., dev, prod). | `string` | `"dev"` | no |
| <a name="input_event_hub_namespace_name"></a> [event\_hub\_namespace\_name](#input\_event\_hub\_namespace\_name) | The name of the Event Hub Namespace. | `string` | n/a | yes |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | List of user-assigned managed identity IDs to attach to the namespace. | `list(string)` | `[]` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | Managed Identity type: 'SystemAssigned' or 'UserAssigned'. | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Azure region where resources are deployed (e.g., weu). | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Azure location of the resource group. Changing this recreates the resource. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group where the Event Hub Namespace will be created. | `string` | n/a | yes |
| <a name="input_settings"></a> [settings](#input\_settings) | Map of dynamic settings for the Event Hub Namespace, including SKU, capacity, network rules, and TLS configuration. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_primary_connection_string"></a> [default\_primary\_connection\_string](#output\_default\_primary\_connection\_string) | The primary connection string |
| <a name="output_default_primary_connection_string_alias"></a> [default\_primary\_connection\_string\_alias](#output\_default\_primary\_connection\_string\_alias) | The primary connection string alias |
| <a name="output_default_primary_key"></a> [default\_primary\_key](#output\_default\_primary\_key) | The primary key |
| <a name="output_default_secondary_connection_string"></a> [default\_secondary\_connection\_string](#output\_default\_secondary\_connection\_string) | The primary connection string |
| <a name="output_default_secondary_connection_string_alias"></a> [default\_secondary\_connection\_string\_alias](#output\_default\_secondary\_connection\_string\_alias) | The secondary connection string alias |
| <a name="output_default_secondary_key"></a> [default\_secondary\_key](#output\_default\_secondary\_key) | The secondary key |
| <a name="output_id"></a> [id](#output\_id) | The EventHub Namespace ID. |
| <a name="output_name"></a> [name](#output\_name) | The EventHub Namespace name. |
