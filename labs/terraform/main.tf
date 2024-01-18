terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }
}

module "aws_s3_module" {
    source = "terraform-aws-modules/s3-bucket/aws"

    attach_public_policy = "false"
    bucket = "labs323213123" // Generates an error if used.
    
    tags = {
        name = "Lab"
    }
}

provider "aws" {
    region = "us-east-1"
  
}
