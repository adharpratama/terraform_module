resource "aws_iam_policy" "policy" {
  count       = length(var.name)
  name        = var.name[count.index]
  path        = "/"
  description = var.description[count.index]
  policy      = var.policy_path[count.index]
}
