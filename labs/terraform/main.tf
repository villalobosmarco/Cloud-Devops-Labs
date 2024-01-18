provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucket" "Lab_S3" {
        
    tags = {
      Name = "Lab"
    }
 
}
