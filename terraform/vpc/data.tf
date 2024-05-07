data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "selected" {
  subnet_id = aws_vpc.default.id
}
