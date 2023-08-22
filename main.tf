terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}




provider "aws" {

  region = var.region
  # I am using aws cli that's why i'm not using access and secret key here 
  # access_key = var.access_key
  # secret_key = var.secret_key
}



module "ec2_aws" {
  source = "./modules/ec2"

  region        = var.region
  instance_type = var.instance_type
  ami_id        = var.ami_id
  tag           = var.tag
  subnet_id     = module.vpc.subnet_id


  # outputs = {
  #     vpc_id    = module.ec2_aws.vpc_id
  #     subnet_id = module.ec2_aws.subnet_id
  #   }
}







module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block

  subnet_cidr_block = var.subnet_cidr_block

  route_table_destination_cidr_block = var.route_table_destination_cidr_block

  ingress_protocol = var.ingress_protocol
}

output "my_vpc_id" {
  value = module.vpc.vpc_id
}


output "my_subnet_id" {
  value = module.vpc.subnet_id
}