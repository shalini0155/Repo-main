rgs ={
    rg1 ={
        name = "rg-shalini"
        location = "eastus"
    
    }
     rg2 ={
        name = "rg-shalini2"
        location = "eastus"
    
    }
}

vnets ={
    vnet1 ={
        name ="shalinivnet"
        location="eastus"
        resource_group_name ="rg-shalini"
        address_space =["10.0.0.0/16"]
    }
      vnet2 ={
        name ="shalinivnet2"
        location="eastus"
        resource_group_name ="rg-shalini2"
        address_space =["10.124.0.0/16"]
    }
}
snets = {
    snet1 ={
        name = "frontend"
        resource_group_name ="rg-shalini"
        virtual_network_name ="shalinivnet"
        address_prefixes =["10.0.1.0/24"]
    }
     snet2 ={
        name = "backend"
        resource_group_name ="rg-shalini2"
        virtual_network_name ="shalinivnet2"
        address_prefixes =["10.0.1.0/24"]
    }
}