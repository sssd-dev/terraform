output "workspace_id" {
  value = "${azurerm_log_analytics_workspace.test.workspace_id}"
}
output "workspace_key" {
  value = "${azurerm_log_analytics_workspace.test.primary_shared_key}"
}
