module "rg" {
  source = "./modules/rg"

  resource_group_name = "learn-906b846f-0065-46f7-b819-6d845d0e2d2d"
  location            = "WestUS"

}

module "vnet" {
  source              = "./modules/vnet"
  location            = module.rg.location
  resource_group_name = module.rg.name
  vnet_name           = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
  # address_prefix = "10.0.0.1/16"
  subnets = []

  tags = {
    env = "juhyg"
  }
}

module "app-services" {
  source = "./modules/app-services"
  app_service_plan = "Standard"
  location              = module.rg.location
  resource_group_name   = module.rg.name
  app_service_plan_name = "hello-world"
  app_service_name      = "demo11"
  app_service_always_on = true
}
