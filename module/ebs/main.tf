resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name = var.name
  }
}

resource "aws_ebs_snapshot" "snapshot" {
  volume_id = aws_ebs_volume.ebs_volume.id

  tags = {
    Name = aws_ebs_volume.ebs_volume.tags.Name
  }
}