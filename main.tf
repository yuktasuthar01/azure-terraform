module "rg" {
  source = "./modules/rg"

  resource_group_name = "learn-d8901b7f-081d-4825-8ae7-2344da2e844b"
  location            = "WestUS"

}

module "vnet" {
  source              = "./modules/vnet"
  location            = module.rg.location
  resource_group_name = module.rg.name
  vnet_name           = "example-vnet1"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
  # address_prefix = "10.0.0.1/16"
  subnets = []

  tags = {
    env = "juhyg"
  }
}

# module "app-services" {
#   source                = "./modules/app-services"
#   app_service_plan      = "Standard"
#   location              = module.rg.location
#   resource_group_name   = module.rg.name
#   app_service_plan_name = "hello-world"
#   app_service_name      = "demo11"
#   app_service_always_on = true

# }


module "virtual-machine" {
  source               = "./modules/virtual-machine"
  vm_name              = "my-vm"
  location             = module.rg.location
  resource_group_name  = module.rg.name
  vm_size              = "Standard_F2"
  admin_username       = "adminuser"
  network_interface_id = "my-nic"

  admin_ssh_public_key = file("~/.ssh/id_rsa.pub")
  storage_account_type = "Standard_LRS"
  os_disk_caching      = "ReadWrite"
  source_image_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/myImage"

  tags = {
    environment = "test"
  }

}

module "vmss" {
  source               = "./modules/vmss-linux"
  vmss_name            = "my-vmss"
  resource_group_name  = module.rg.name
  location             = module.rg.location
  sku                  = "Standard_f2"
  instances            = 3
  admin_username       = "adminuser32"
  admin_password       = "password@123"
  admin_ssh_username   = "adminuser"
  public_key           = file("~/.ssh/id_rsa.pub")
  storage_account_type = "Standard_LRS"
  os_caching           = "ReadWrite"
  nic_name             = "example"
  primary              = "true"
  ip_name              = "internal"
  subnet_id            = "IPv4"
  source_image_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Compute/images/myImage"

}

# module "cdn" {
#   source = "./modules/cdn"
#   resource_group_name = module.rg.name
#   location = module.rg.location
#   cdn_profile_name    = "cdn-name"
#   cdn_endpoint_name   = "demo1"
#   sku                 = "Standard_Akamai"

#" 

module "cosmosdb_postgresql_cluster" {
  source                       = "./modules/cosmosdb_postgresql_cluster"
  postgres_name                = "postgres"
  resource_group_name          = module.rg.name
  location                     = module.rg.location
  administrator_login_password = "Hw323#@"
  node_count                   = 3
  value                        = "on"
  postgres_coordination_name   = "hello"
  postgres_node_name           = "node_name"
  tags = {
    environment = "test"
    project     = "demo"
  }


  firewall_rules = {
    rule1 = {
      start_ip_address = "10.0.17.62"
      end_ip_address   = "10.0.17.64"
    },
    rule2 = {
      start_ip_address = "10.0.16.33"
      end_ip_address   = "10.0.16.38"
    }
  }
  postgres_role_name = "role-name1"
  password           = "nz#21vms"

}

module "window_function_app" {
  source                     = "./modules/window-function-app"
  window_function_name       = "my-window-app"
  location                   = module.rg.location
  resource_group_name        = module.rg.name
  storage_account_name       = "my-account"
  storage_account_access_key = "fsdegdgv"
  # client_certificate_mode     = "optional"
  service_plan_id             = "sdfsfsfs"
  functions_extension_version = 3
  tags = {
    environment = "test"
    project     = "dedekd"
  }

}

