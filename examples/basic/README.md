# Terraform Azure Event Hub Namespace Module – Basic Example

This example demonstrates a **basic deployment** of an Azure Event Hub Namespace with system-assigned identity, standard SKU, auto-inflate, network rules, and TLS 1.2.

## Description

- Creates an Event Hub Namespace in a specified resource group
- Configures SKU, capacity, auto-inflate, and throughput units
- Supports system-assigned or user-assigned managed identities
- Configures network rules including virtual network and IP-based rules
- TLS version is configurable
- Suitable for development or test environments

## Example Usage

```yaml
module "eventhub_namespace" {
  source = "../../"

  environment               = "dev"
  resource_group_name       = "rg-eventhub-demo"
  event_hub_namespace_name  = "demo-eh-namespace"
  default_tags = {
    project = "demo"
    env     = "dev"
  }

  identity_type = "SystemAssigned"

  settings = {
    sku                      = "Standard"
    capacity                 = 1
    auto_inflate_enabled     = true
    maximum_throughput_units = 20
    minimum_tls_version      = "1.2"
    network_rulesets = {
      default_action                 = "Deny"
      trusted_service_access_enabled = true
      virtual_network_rule = [
        {
          subnet_id = "/subscriptions/xxxx/resourceGroups/rg-demo/providers/Microsoft.Network/virtualNetworks/vnet-demo/subnets/subnet-backend"
        }
      ]
      ip_rule = [
        { ip_mask = "192.168.1.0/24", action = "Allow" }
      ]
    }
  }
}
```