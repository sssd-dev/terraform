variable "resource_group_name" {
  default = "vinod-support"
  type    = "string"
}

variable "location" {
  default = "eastus"
  type    = "string"
}
variable "prefix" {
  default = "vinod-support"
  type    = "string"
}
variable "cluster_name" {
  default = "az-k8"
  type    = "string"
}

variable "agent_count" {
  default = "2"
  type    = "string"
}

variable "dns_prefix" {
  default = "aks-k8"
  type    = "string"
}

variable "ssh_public_key" {
  default = "id_rsa.pub"
}
variable "analytics_workspace" {
  default = "vinod-support"
}