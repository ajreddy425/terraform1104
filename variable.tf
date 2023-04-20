variable "vpc_cidr" {
  description = "enter the vpc cidr block here"
  default     = "10.0.0.0/16"
  type        = string
}

// everything inside the variable block is optional

# variable "subnet_cidr" {
#   description = "enter the cidr block of the subnet"
#   default     = "10.0.0.0/24"
#   type        = string
# }
