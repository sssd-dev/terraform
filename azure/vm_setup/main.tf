module "testresourcegroup" {
  source = "./resource_group"
  prefix = "${var.prefix}"
  location = "${var.location}"
}

module "testserver" {
  source = "./virtual_machines"
  prefix = "${var.prefix}"
  resource_group_location = "${module.testresourcegroup.rg_location}"
  resource_group_name = "${module.testresourcegroup.rg_name}"
}
module "testworkspace" {
  prefix = "${var.prefix}"
  source = "./workspace"
  resource_group_location = "${module.testresourcegroup.rg_location}"
  resource_group_name = "${module.testresourcegroup.rg_name}"
  analytics_workspace = "${var.analytics_workspace}"
}
resource "azurerm_virtual_machine_extension" "testagent" {
  name = "${var.prefix}"
  location = "${var.location}"
  resource_group_name = "${module.testresourcegroup.rg_name}"
  virtual_machine_name = "vinod-support-vm"
  publisher = "Microsoft.EnterpriseCloud.Monitoring"
  type = "OmsAgentForLinux"
  type_handler_version = "1.6"
  settings = <<-BASE_SETTINGS
    {
    "workspaceId" : "${module.testworkspace.workspace_id}"
    }
    BASE_SETTINGS

    protected_settings = <<-PROTECTED_SETTINGS
    {
    "workspaceKey" : "${module.testworkspace.workspace_key}"
    }
    PROTECTED_SETTINGS
  depends_on = ["module.testserver"]
}
