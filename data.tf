data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

data "aws_region" "reg_name" {}

output "region_name" {
  value = local.x
}

data "aws_availability_zones" "available" {
  state = "available"
}

output "list_of_azs" {
  value = local.ls_azs
}

output "no_of_azs" {
  value = local.y

}

output "vpc_id" {
  value = aws_vpc.main.id
}

# output "inst_id" {
#   value = aws_instance.web1.id
# }