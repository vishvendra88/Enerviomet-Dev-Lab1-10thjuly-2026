resource "azurerm_public_ip" "pipip" {
    for_each = var.c-public-ip
    name = each.value.name 
    location = each.value.location 
    resource_group_name =each.value.rglocation 
    allocation_method =each.value.allocation-method
  
}
