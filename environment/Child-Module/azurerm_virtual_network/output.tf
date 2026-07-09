output "vnet_ids" {
    value = {
        for  k,v in azurerm_virtual_network.virtual_network : k=>v.id
        
    }
  
}
