# resource "aws_s3_bucket_versioning" "versioning_example" {
#   bucket = aws_s3_bucket.s3[count.index]
#   versioning_configuration {
#     status = "Enabled"
#   }
# }