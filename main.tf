terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "static_website" {
  bucket = "surya-static-site-2025"
  acl    = "private"
  tags = {
    Name = "StaticWebsite"
  }
}
