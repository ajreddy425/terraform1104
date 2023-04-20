resource "null_resource" "null" {
  triggers = {
    instance_id = "i-0780c61ab3b954c2b"
  }

#   provisioner "local-exec" {
#     command = "echo ${aws_instance.web1[0].public_ip} > instance_ip.txt"
#   }
# }

 provisioner "remote-exec" {
    inline = [
      "echo Private IP: $(hostname -i) > instance_private_ip.txt"
    ]
  }
}


