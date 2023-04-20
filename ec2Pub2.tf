# resource "aws_instance" "web2" {
#   ami                         = "ami-06e46074ae430fba6" # us-east-1
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet2.id
#   associate_public_ip_address = true
#   key_name                    = "new_keypair1103"
#   user_data                   = file("./scripts/apache2.sh")
#   vpc_security_group_ids      = [aws_security_group.my_sg.id] // list
#   tags = {
#     Name = "WebServer-02"
#   }
# }
