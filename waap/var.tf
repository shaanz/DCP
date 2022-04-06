variable "ns" { default = "sb-waf-tf" }
variable "domain" { default = "volt.greatlabs.dev" }
variable "app_fqdn" { default = "jsdemo-tf.volt.greatlabs.dev" }
variable "web_app_name" { default = "js-secure" }
variable "app_pool_name" { default = "js-pool" }
variable "origin_dns_name" { default = "js.witcher.sg" }
variable "lb_name" { default = "tf-js-demo" }
variable "waf_name" { default = "tf-waf-policy" }