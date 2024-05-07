## Terraform VPC module

This Terraform module creates a Virtual Private Cloud (VPC) suitable for a 3-tier application architecture across two Availability Zones (AZs). Additionally, it supports VPC peering based on user requirements. If the user specifies an acceptor VPC ID, the module will establish VPC peering with the provided VPC. Otherwise, it will create VPC peering with the default VPC.

## Steps

1. Create a Virtual Private Cloud (VPC).
2. Attach an Internet gateway to the VPC for external internet access.
3. Define and configure subnets within the VPC, dividing the IP address range.
4. Set up route tables to control traffic between subnets and to the internet.
5. Establish routes within the route tables to direct traffic appropriately.
6. Associate the route tables with their corresponding subnets to enable routing.
7. Allocate an Elastic IP address for static public IP assignment for NAT gateway.
8. Deploy a NAT gateway within one of the public subnets for outbound internet access from private subnets.
9. Associate the NAT gateway with the private subnets to facilitate internet connectivity for resources within them.
10. Establish a peering connection between VPCs to enable communication between them.
11. Configure routes within the route tables of each VPC to direct traffic through the peering connection as needed.

## Inputs



## outputs



## rough steps

- ~~Create VPC~~
- ~~Create Internet gateway and attach to VPC~~
- ~~Create Subnets~~
- ~~Create Route tables~~
- ~~Create Routes~~
- ~~Associate route tables with subnets~~
- ~~Create Elastic IP~~
- ~~Create NAT gateway in one of public subnet~~
- ~~Associate NAT gateway with private subnets~~
- ~~Peering Connection~~
- ~~Routes connect between required VPC route tables~~