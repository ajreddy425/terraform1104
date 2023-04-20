resource "aws_iam_role_policy" "test_policy" {
  name = "test_policy_2004"
  role = aws_iam_role.test_role.id

  policy = file("./scripts/iam_policy.json")
}

