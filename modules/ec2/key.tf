resource "aws_key_pair" "key_tf_local" {
  key_name   = "tf_key"
  public_key = file("${path.module}/tf_key.pub")
}