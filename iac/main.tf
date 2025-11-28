terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "vinceoobulletin-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
  byte_length = 4
}

