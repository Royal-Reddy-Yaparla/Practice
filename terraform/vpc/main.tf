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
        Name = "${local.name}-public-${local.azs[count.index]}"
   }
  )
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igt.id
  }


  tags = merge(
    var.common_tags,
    var.public_route_table_tags,
    {
        Name = "${local.name}-public"
   }
  )
}

resource "aws_subnet" "private" {
    count = length(var.cidr_private)
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr_private[count.index]

    availability_zone = local.azs[count.index]
    tags = merge(
    var.common_tags,
    var.private_subnet_tags,
    {
        Name = "${local.name}-private-${local.azs[count.index]}"
   }
  )
}

resource "aws_subnet" "database" {
    count = length(var.cidr_database)
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr_database[count.index]

    availability_zone = local.azs[count.index]
    tags = merge(
    var.common_tags,
    var.database_subnet_tags,
    {
        Name = "${local.name}-database-${local.azs[count.index]}"
   }
  )
}