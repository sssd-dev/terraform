resource "azurerm_log_analytics_workspace" "test" {
  name                = "${var.analytics_workspace}"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "PerGB2018"
  retention_in_days   = 30
}