# I am declaring region in ec2 info.
# variable "region" {
#   description = "The AWS region."
#   type        = string
# }



variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}


variable "route_table_destination_cidr_block" {
  description = "CIDR block for the route table"
  type        = string
}


variable "ingress_protocol" {
  type = string
}
