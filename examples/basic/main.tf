terraform {
  required_version = ">= 1.6.3"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "eventhub_namespace" {
  source = "../../"

  environment              = "dev"
  resource_group_name      = "rg-eventhub-demo"
  event_hub_namespace_name = "demo-eh-namespace"
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
