
# // ami of ec2
# resource "aws_ami_from_instance" "ami" {
#   name               = "terraform-ami-1704"
#   source_instance_id = "i-07baa25a86c66c73a"
# }

# // launch configurations

# resource "aws_launch_configuration" "lc" {
#   name                        = "launch_config_1704"
#   image_id                    = "ami-07eb759b1eb8d83fd"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "new_keypair1103"
#   security_groups             = [aws_security_group.my_sg.id]

#   # tags = {
#   #   Name = "lc-1704"
#   # }
# }

