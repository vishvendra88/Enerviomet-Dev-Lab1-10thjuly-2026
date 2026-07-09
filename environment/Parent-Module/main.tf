module "resource_group_module" {
  source           = "../Child-Module/azurerm_resource_group"
  c-resource_group = var.p-resource_group

}

module "virtual_network_module" {
  depends_on = [module.resource_group_module]

  source            = "../Child-Module/azurerm_virtual_network"
  c-virtual_network = var.p-virtual_network

}

module "subnet-module" {
  depends_on = [ module.resource_group_module,module.virtual_network_module ]
  
  source = "../Child-Module/azurerm_subnet" 

  c-subnet = var.p-subnet
}
