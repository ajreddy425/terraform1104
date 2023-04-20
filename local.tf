locals {
  x      = data.aws_region.reg_name
  ls_azs = data.aws_availability_zones.available.names
  y      = length(data.aws_availability_zones.available.names)
  ws     = terraform.workspace
}


