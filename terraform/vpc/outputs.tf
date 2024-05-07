output "vpc_id" {
  value = aws_vpc.main.id
}

output "igt_id" {
  value = aws_internet_gateway.igt.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}