variable "prefix" {
    type = string
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  type = string
  description = "The Azure Region in which all resources in this example should be created."
}
variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the CDN Endpoint."
  
}
variable "sku" {
  type = string
  description = "This SKU provides a global CDN with a large number of PoPs"
}

variable "cdn_profile_name" {
  type = string
  description = "The CDN Profile to which to attach the CDN Endpoint."
}
variable "origin_host_name" {
  type = string
  description = "A string that determines the hostname/IP address of the origin server. "
}
variable "http_port" {
  type = string
  description = "The HTTP port of the origin."
  default = 80
}
variable "https_port" {
  type = string
  description = "The HTTPS port of the origin."
  default = 443
}
variable "is_http_allowed" {
  type = bool
  default = true
  description = "Specifies if http allowed" 

}
variable "is_https_allowed" {
  type = bool
  default = true
  description = " Specifies if https allowed."
  
}
variable "content_types_to_compress" {
  type = list(string)
  default = null
  description = "An array of strings that indicates a content types on which compression will be applied"
}
variable "is_compression_enabled" {
  type = string
  default = null
  description = "Indicates whether compression is to be enabled."
}
variable "querystring_caching_behaviour" {
  type = string
  default = null
  description = "Sets query string caching behavior."
}
variable "optimization_type" {
  type = string
  default = null
  description = "types of optimization should this CDN Endpoint"
}
variable "relative_path" {
  type = string
  description = "The relative path applicable to geo filter."
  
}
variable "action" {
  type = string
  description = "The Action of the Geo Filter. Possible values include Allow and Block."
  
}
variable "country_codes" {
  type = list(string)
  description = "A List of two letter country codes (e.g. US, GB) to be associated with this Geo Filter."
}