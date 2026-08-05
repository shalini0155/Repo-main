module "resource_group" {
    source = "../../modules/azurerm_resource_group"
  rgs ={ 
    rg1 ={
        name = "rg-shalini"
        location = "eastus"
    
    } 

  } 
  
}

module "virtual_network" {
    depends_on = [ module.resource_group ]
    source = "../../modules/azurerm_virtual_network"
    vnets ={
    vnet1 ={
        name ="shalinivnet"
        location="eastus"
        resource_group_name ="rg-shalini"
        address_space =["10.0.0.0/16"]
    }
  
}
}

module "subnet" {
    depends_on = [ module.virtual_network ]
    source = "../../modules/azurerm_subnet"
  snets = {
    snet1 ={
        name = "frontend"
        resource_group_name ="rg-shalini"
        virtual_network_name ="shalinivnet"
        address_prefixes =["10.0.1.0/24"]
    }
}
}