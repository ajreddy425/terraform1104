resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
  availability_zone = local.ls_azs[count.index]
  count             = local.y
  tags = {
    Name = "Public-Subnet-${terraform.workspace}-${count.index + 1}"
  }
}


# resource "aws_subnet" "subnet2" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + local.y)
#   availability_zone = local.ls_azs[count.index]
#   count             = local.y
#   tags = {
#     Name = "Private-Subnet-${terraform.workspace}-${count.index + local.y}"
#   }
# }



