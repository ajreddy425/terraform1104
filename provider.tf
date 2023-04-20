provider "aws" {
  region = "us-east-1"
  # alias = "us-east-1"
}

# provider "aws" {
#   region = "us-west-1"
#   alias = "us-west-1"

# }

terraform {
  backend "s3" {
    bucket         = "terraform-statefile1304"
    key            = "path/to/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-statelock"
  }
}

