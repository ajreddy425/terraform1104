# resource "aws_autoscaling_group" "asg" {
#   name                      = "asg-terraform-test"
#   max_size                  = 2
#   min_size                  = 1
#   health_check_grace_period = 100
#   health_check_type         = "ELB"
#   desired_capacity          = 1
#   launch_configuration      = aws_launch_configuration.lc.name
#   vpc_zone_identifier       = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
# tag {
#     key                 = "Name"
#     value               = "asg-1704"
#     propagate_at_launch = true
#   }
# }

# // attching to an elb

# resource "aws_autoscaling_attachment" "asg_attachment_terraform" {
#   autoscaling_group_name = aws_autoscaling_group.asg.id
#   elb                    = aws_elb.elb.id
# }