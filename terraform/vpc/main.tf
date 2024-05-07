resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  # refer to instances by their hostname instead of their IP address
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
        Name = local.name
   }
  )
}

resource "aws_internet_gateway" "igt" {
  vpc_id = aws_vpc.main.id
  tags = merge(
    var.common_tags,
    var.igt_tags,
    {
        Name = local.name
   }
  )
}

resource "aws_subnet" "public" {
    count = length(var.cidr_public)
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr_public[count.index]
    map_public_ip_on_launch = true
    availability_zone = local.azs[count.index]
    tags = merge(
    var.common_tags,
    var.public_subnet_tags,
    {
        Name = "${local.name}-${local.azs[count.index]}"
   }
  )
  
}