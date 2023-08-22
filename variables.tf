#--------EC2 variables---------


variable "region" {
  description = "The AWS region."
  type        = string
}

variable "instance_type" {
  type = string
}

variable "ami_id" {
  type = string
}
variable "tag" {
  type = string

}

# variable "access_key" {
#   type = string

# }

# variable "secret_key" {
#   type = string

# }


#--------VPC variables---------


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
