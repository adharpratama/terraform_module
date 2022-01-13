#resource "aws_iam_policy_attachment" "iam_policy_attachment" {
#  count      = length(var.policy_arn)
#  name       = var.name
#  users      = var.user
#  policy_arn = var.policy_arn[count.index]
#}

# resource "aws_iam_user_policy_attachment" "iam_user_policy_attachment" {
  # count      = length(var.user)
  # user       = var.user[count.index]
  # policy_arn = var.policy_arn
# }

resource "aws_volume_attachment" "ebs_attachment" {
  device_name = var.device_name
  volume_id   = var.volume_id
  instance_id = var.instance_id
}