output "publicip_ids" {
    value ={

        for k, v in azurerm_public_ip.pipip: k =>v.id
    }
  
}
