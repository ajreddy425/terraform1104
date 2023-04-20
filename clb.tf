# resource "aws_elb" "elb" {
#   name            = "terraform-elb"
#   security_groups = [aws_security_group.my_sg.id]
#   subnets         = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
#   #   availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]

#   #   access_logs {
#   #     bucket        = "foo"
#   #     bucket_prefix = "bar"
#   #     interval      = 60
#   #   }

#   #   listener {
#   #     instance_port     = 80
#   #     instance_protocol = "http"
#   #     lb_port           = 80
#   #     lb_protocol       = "http"
#   #   }

#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#     # ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
#   }

#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:80/index.html"
#     interval            = 30
#   }

#   instances                   = [aws_instance.web1.id, aws_instance.web2.id]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "terraform-elb"
#   }
# }