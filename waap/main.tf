
  #export VES_P12_PASSWORD=password
  #export VOLT_API_P12_FILE= location of key file 
  #export VOLT_API_URL=https://tenant.console.ves.volterra.io/api

terraform {
  required_providers {
    volterra = {
      source = "volterraedge/volterra"
      version = "0.11.5"
    }
  }
}

variable "api_url"{
  default="https://tenant.console.ves.volterra.io/api"
}

variable "api_p12_file"{
  default=" location of key file 
}

module "web-app-security" {
  source                 = "volterraedge/web-app-security/volterra"
  web_app_name           = var.web_app_name
  volterra_namespace     = var.ns
  app_domain             = var.app_fqdn
  enable_hsts            = false
  origin_server_dns_name = var.origin_dns_name

}

output "web_app_url" {
  value = module.web-app-security.app_url
}
