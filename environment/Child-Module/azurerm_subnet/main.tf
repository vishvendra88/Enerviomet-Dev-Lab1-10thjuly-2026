resource "azurerm_subnet" "subnet" {
    for_each = var.c-subnet 
    name = each.value.name 
    resource_group_name = each.value.rglocation
    virtual_network_name = each.value.virtual-network 
    address_prefixes = each.value.address-prefixes 

  
}
