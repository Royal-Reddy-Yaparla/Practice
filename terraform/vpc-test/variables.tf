variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
    project_name = "robokart"
    environment = "dev"
    terraform = true
  }
}

variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  default = "robokart"
}
variable "environment" {
  default = "dev"
}

variable "cidr_public" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}