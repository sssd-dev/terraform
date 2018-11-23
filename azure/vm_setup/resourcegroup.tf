resource "azurerm_resource_group" "vinod" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}
