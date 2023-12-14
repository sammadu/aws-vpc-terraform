locals {
  subnet_common_tags = {
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}

variable "region_name" {

    description = "AWS Region to launch VPC Network"
    type = string
    
  
}

variable "vpc_cidr_block" {
    description = "VPC CIDR Block"
    type = string
    
  
}

variable "environment" {
    description = "Environment name for deployment"
    type = string
  
  
}

variable "public_subnets" {

    description = "Public Subnets Details for ENV"
    type = map(any)
    
  
}

variable "private_subnets" {

    description = "Private Subnet Details for ENV"
    type = map(any)
    
  
}

variable "pub_sub_tags" {
  description = "Provide tags that needs to be as part of EKS network to manage ELB internet-facing"
  type        = map(any)
  default = {
    "kubernetes.io/role/elb" = "1"
  }
}

variable "priv_sub_tags" {
  description = "Provide tags that needs to be as part of EKS network to manage ELB internal-elb"
  type        = map(any)
  default = {
    "kubernetes.io/role/internal-elb" = "1"
  }
}

variable "private_az" {

    description = "AZ Names for private subnets"
    type = list(string)
    default = [ "ap-south-1a", "ap-south-1b" ]
}
