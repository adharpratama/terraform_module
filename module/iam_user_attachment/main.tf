#resource "aws_iam_policy_attachment" "iam_policy_attachment" {
#  count      = length(var.policy_arn)
#  name       = var.name
#  users      = var.user
#  policy_arn = var.policy_arn[count.index]
#}

resource "aws_iam_user_policy_attachment" "iam_user_policy_attachment" {
  count      = length(var.user)
  user       = var.user[count.index]
  policy_arn = var.policy_arn
}
