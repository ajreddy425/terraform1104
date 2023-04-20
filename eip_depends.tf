resource "aws_eip" "eip" {
  instance = "i-0780c61ab3b954c2b"
  vpc         = true
  depends_on = [
    aws_instance.web1[0]
  ]
}
