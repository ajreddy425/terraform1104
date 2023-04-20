resource "aws_iam_role" "test_role" {
  name = "test-role-2004"

  assume_role_policy = file("./scripts/assume_role.policy.json")

  tags = {
    tag-key = "test-role-2004"
  }
}