# data "aws_secretsmanager_secret_version" "rds_creds" {
#   secret_id = "arn:aws:secretsmanager:us-east-1:508541141165:secret:rds!db-c9a4a988-b046-40da-a2e0-ba679edd603e-5dnnDk"
# }

# output "rds_secret" {
#   value = data.aws_secretsmanager_secret_version.rds_creds.secret_id
# }

# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   username             = jsondecode(data.aws_secretsmanager_secret_version.rds_creds.secret_string)["username"]
#   password             = jsondecode(data.aws_secretsmanager_secret_version.rds_creds.secret_string)["password"]
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
# }