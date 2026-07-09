output "c_rgs_ids" {
value = {
    for k,v in azurerm_resource_group.Resource-groups : k=>v.id 
}
}
