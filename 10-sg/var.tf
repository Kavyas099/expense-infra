

variable "common_tags" {
  default = {
    project = "expense"
    environment = "dev"
    terraform = "true"
  }
}

variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "sg_description" {
  default = "this is sg"
}