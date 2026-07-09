resource "azurerm_resource_group" "Resource-groups" {
    for_each = var.c-resource_group 
    name= each.value.name 
    location = each.value.location 
  
}
