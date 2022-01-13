resource "aws_iam_role" "iam_role" {
  name = var.name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  tags = {
    tag-key = var.name
  }
}

resource "aws_iam_role_policy_attachment" "iam_role_policy_attachment" {
  count      = length(var.policy_arn)
  role       = aws_iam_role.iam_role.name
  policy_arn = var.policy_arn[count.index]
}

resource "aws_iam_instance_profile" "iam_instance_profile" {
  name = var.name
  role = aws_iam_role.iam_role.name
}
