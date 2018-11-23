output "public_ip" {
  value = "${azurerm_network_interface.main.private_ip_address}"
}
output "name" {
  value = "${azurerm_network_interface.main.name}"
}
