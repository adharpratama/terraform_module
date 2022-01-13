data "aws_ami" "ami" {
  owners      = var.ami_owner
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami_value]
  }
}

resource "aws_spot_instance_request" "spot_instance_request" {
  count                          = var.count_instance
  ami                            = data.aws_ami.ami.id
  spot_price                     = var.spot_price
  instance_type                  = var.instance_type
  wait_for_fulfillment           = "true"
  instance_interruption_behavior = "stop"
  subnet_id                      = var.subnet_id
  key_name                       = var.key_name
  private_ip                     = var.private_ip
  vpc_security_group_ids         = var.security_group_id
  iam_instance_profile           = var.iam_instance_profile
  user_data                      = var.user_data
  associate_public_ip_address    = var.associate_public_ip_address
  tags = {
    Name = var.instance_name
  }
  root_block_device {
    volume_size = var.volume_size
  }

}

