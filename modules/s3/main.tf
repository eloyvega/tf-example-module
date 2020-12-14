terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

variable "prefix" {}

resource "aws_s3_bucket" "bucket" {
  bucket_prefix = var.prefix
}