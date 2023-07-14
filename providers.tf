#Terraform Block
terraform {
 # required_version = "1.3" #Minimum Required Version 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0"
    }
  }
}

#Provider Block
provider "aws" {
  # Configuration "
  region  = var.aws_region
  #profile = "machala"
}

