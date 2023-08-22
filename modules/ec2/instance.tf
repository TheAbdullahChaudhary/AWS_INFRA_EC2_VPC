resource "aws_instance" "instance1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #   assigning vpc
  # subnet_id = aws_subnet.my_subnet.id

  subnet_id = var.subnet_id
  # use key pair

  key_name = aws_key_pair.key_tf_local.key_name

  tags = {
    Name = var.tag
  }
}