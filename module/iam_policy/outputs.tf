output "policy_arn" {
  value = [for i in aws_iam_policy.policy : i.arn]
}
