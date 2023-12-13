variable "region_name" {

    description = "AWS Region to launch VPC Network"
    type = string
    default = "ap-south-1"
  
}

variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    default = "10.10.0.0/16"
  
}

variable "environment" {
    description = "Environment name for deployment"
    type = string
    default = "dev"
  
}

variable "public_subnets" {

    description = "Public Subnets Details for ENV"
    type = list(string)
    default = ["10.10.0.0/24", "10.10.2.0/24"]
  
}

variable "private_subnets" {

    description = "Private Subnet Details for ENV"
    type = list(string)
    default = [ "10.10.1.0/24", "10.10.3.0/24" ]
  
}

variable "public_az" {
    description = "AZ names for public subnets"
    type = list(string)
    default = [ "ap-south-1a", "ap-south-1b" ]
  
}

variable "private_az" {

    description = "AZ Names for private subnets"
    type = list(string)
    default = [ "ap-south-1a", "ap-south-1b" ]
}
