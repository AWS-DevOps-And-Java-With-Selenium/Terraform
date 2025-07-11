terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.2.0"
    }
  }

  # This is for to configure our tfstate file in a centralized location to secure the file.
#   backend "s3" {
#     bucket  = "aws-devops"
#     key = "devops_practice_key"
#     region = "us-east-1"
#     dynamodb_table = "devops-practice"
#   }
}

provider "aws" {
  region = var.ec2_parms.region
}