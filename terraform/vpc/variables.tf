variable "cidr_block" {
  default = "10.0.0.0/16" # we can override
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

variable "igt_tags" {
  default = {}
}

variable "public_subnet_tags" {
  default = {}
}

variable "cidr_public" {
  type = list
}

variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}