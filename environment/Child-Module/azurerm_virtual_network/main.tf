resource "azurerm_virtual_network" "virtual_network" {
    for_each = var.c-virtual_network 
    name = each.value.name 
    location = each.value.location 
    resource_group_name = each.value.rglocation 
    address_space = each.value.address-space 
    
  
}
