provider "aws" {
    region = "us-east-1"
  
}

module "aws_s3_module" {
    source = "hashicorp/aws"

    attach_public_policy = "false"
    # bucket = "Lab_S3" // Generates an error if used.
    
    tags = {
        name = "Lab"
    }
}

resource "aws_s3_bucket" "Lab_S3" {
        
    tags = {
      Name = "Lab"
    }
 
}
