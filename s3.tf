resource "aws_s3_bucket" "s3" {
  bucket = "my-tf-2004-bucket"
  count  = var.create_bucket ? 1 : 0

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}

variable "create_bucket" {
  type    = bool
  default = true

}

