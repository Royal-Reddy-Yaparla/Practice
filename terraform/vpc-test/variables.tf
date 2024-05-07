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