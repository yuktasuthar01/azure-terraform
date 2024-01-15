resource "azurerm_cdn_profile" "example" {
  name                = "${var.prefix}-cdn"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  
}
resource "azurerm_cdn_endpoint" "example" {
  name                = "${var.prefix}-cdn"
  profile_name        = var.cdn_profile_name
  location            = var.location
  resource_group_name = var.resource_group.name
  is_http_allowed = var.is_http_allowed
  is_https_allowed = var.is_https_allowed
  content_types_to_compress = var.content_types_to_compress
  is_compression_enabled = var.is_compression_enabled
  querystring_caching_behaviour = var.querystring_caching_behaviour
  optimization_type = var.optimization_type
  origin {
    name       = "${var.prefix}origin1"
    host_name  = var.origin_host_name
    http_port  = var.http_port
    https_port = var.https_port
  }
  geo_filter {
    relative_path = var.relative_path
    action = var.action
    country_codes = var.country_codes 
  }
}
