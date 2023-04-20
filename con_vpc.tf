# resource "aws_vpc" "con_vpc" {
#     cidr_block = "192.168.0.0/24"
#     instance_tenancy = "default"
#     count = data.aws_caller_identity.current.account_id == "508541141165" ? 1:0 // true_con:false_con

#     tags = {
#         Name = "con-vpc-2004"
#     }

# }