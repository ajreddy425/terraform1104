// write vpc (FAQ 5/5)

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr // var.varible_name
  instance_tenancy = "default"
  # provider = aws.us-east-1

  tags = {
    Name   = "vpc-1404-${local.ws}"
    Region = "us-east-1"
  }
}


// resouces names must be unique across all resource blocks
// ctrl+/ is put all values in comment/uncomment



  