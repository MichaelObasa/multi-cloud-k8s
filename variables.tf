variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "azure-k8s-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "azure-aks-cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "azureaksdns"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 1
}
