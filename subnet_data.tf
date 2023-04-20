# data "aws_vpc" "vpc_id" {
#   id = "vpc-0079e1dbb5cce854d"
# }

# // subnet

# resource "aws_subnet" "subnet" {
#   vpc_id     = data.aws_vpc.vpc_id.id
#   cidr_block = "172.16.0.0/24"
#   tags = {
#     Name = "subnet-01-1804"
#   }
# }


# output "id_vpc" {
#   value = data.aws_vpc.vpc_id.id
# }

