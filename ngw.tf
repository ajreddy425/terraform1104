# resource "aws_nat_gateway" "ngw" {
#   allocation_id = aws_eip.eip.id
#   subnet_id     = aws_subnet.subnet1.id

#   tags = {
#     Name = "NGW-8am"
#   }

# }

