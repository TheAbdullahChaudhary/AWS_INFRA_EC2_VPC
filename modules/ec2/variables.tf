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


variable "subnet_id" {
  type = string

}