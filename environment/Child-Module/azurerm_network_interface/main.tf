resource "azurerm_network_interface" "network-interface" {
    for_each = var.c-network-interface 
    name = each.value.name 
    location = each.value.location 
    resource_group_name = each.value.rglocation 

    ip_configuration {
      name= each.value.ipconfigname
      subnet_id = var.subnetid[each.value.nameid]
      public_ip_address_id = var.pubid[each.value.pipid]
      private_ip_address_allocation = each.value.allocation
    }
  
}
