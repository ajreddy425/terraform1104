resource "aws_instance" "web1" {
  ami                         = "ami-06e46074ae430fba6" # us-east-1
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet1.*.id[0]
  associate_public_ip_address = true
  key_name                    = "new_keypair1103"
  count                       = 1
  iam_instance_profile        = aws_iam_instance_profile.test_profile.name
  depends_on = [
    aws_s3_bucket.s3
  ]
  user_data              = file("./scripts/apache1.sh")
  vpc_security_group_ids = [aws_security_group.my_sg.id] // list
  tags = {
    Name = "PubEC2-${count.index + 1}-${local.ws}"
  }
}

// sg

resource "aws_security_group" "my_sg" {
  name        = "my_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my_sg_1504"
  }
}