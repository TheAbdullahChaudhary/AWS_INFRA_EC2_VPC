# --------Instance details---------
# Singapore region
region        = "ap-southeast-1"
instance_type = "t2.micro"
ami_id        = "ami-0df7a207adb9748c7"
tag           = "server 1"
# access_key = "access_key"
# secret_key = "secret_key"


#--------VPC details---------
vpc_cidr_block                     = "10.0.0.0/16"
subnet_cidr_block                  = "10.0.1.0/24"
route_table_destination_cidr_block = "0.0.0.0/0"
ingress_protocol                   = "tcp"