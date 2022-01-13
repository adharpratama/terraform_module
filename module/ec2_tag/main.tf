resource "aws_ec2_tag" "ec2_tag" {
  count       = length(var.key)
  resource_id = var.resource_id
  key         = var.key[count.index]
  value       = var.value[count.index]
}
