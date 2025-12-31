variable "environment" {
  description = "Environment name to differentiate resources (e.g., dev, prod)."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "Key-value tags to assign to the resource for identification and management."
  type        = map(any)
}

variable "region" {
  description = "Azure region where resources are deployed (e.g., weu)."
  type        = string
  default     = "weu"
}

variable "resource_group_location" {
  description = "Azure location of the resource group. Changing this recreates the resource."
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Name of the resource group where the Event Hub Namespace will be created."
  type        = string
}

variable "event_hub_namespace_name" {
  description = "The name of the Event Hub Namespace."
  type        = string
}

variable "identity_ids" {
  description = "List of user-assigned managed identity IDs to attach to the namespace."
  type        = list(string)
  default     = []
}

variable "identity_type" {
  description = "Managed Identity type: 'SystemAssigned' or 'UserAssigned'."
  type        = string
  default     = ""
}

variable "settings" {
  description = "Map of dynamic settings for the Event Hub Namespace, including SKU, capacity, network rules, and TLS configuration."
  type        = any
  default     = {}
}
