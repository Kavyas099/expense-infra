variable "common_tags" {
  default = {
    project_name = "expense"
    environment = "dev"
    terraform =  true
  }
}

variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}


variable "domain_name" {
    default = "koti.lat"
}

variable "zone_id" {
  default =  "Z04757596NZDGVB9VM0A"

}