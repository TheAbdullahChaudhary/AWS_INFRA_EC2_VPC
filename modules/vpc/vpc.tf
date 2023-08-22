# provider "aws" {
#   region = var.region  # Change this to your desired region
# #   access_key = "YOUR_ACCESS_KEY"
# #   secret_key = "YOUR_SECRET_KEY"
# }

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block # Replace with your desired CIDR block
}





resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr_block # Replace with your desired subnet CIDR block
}

resource "aws_security_group" "my_security_group" {
  name_prefix = "my-security-group-"

  vpc_id = aws_vpc.my_vpc.id

  #    You can define inbound and outbound rules here
  #    Example:
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = var.ingress_protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_route" "my_route" {
  route_table_id         = aws_route_table.my_route_table.id
  destination_cidr_block = var.route_table_destination_cidr_block
  gateway_id             = aws_internet_gateway.my_igw.id
}

resource "aws_route_table_association" "my_route_table_association" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}
