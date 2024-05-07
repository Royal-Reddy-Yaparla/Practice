variable "cidr_block" {
  default = "10.0.0.0/16"
  type = string
}

variable "enable_dns_hostnames" {
  default = true
  type = bool
}

variable "common_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}