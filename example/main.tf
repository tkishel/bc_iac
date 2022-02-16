terraform {
  required_version = ">= 0.14.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "foo" {
  bucket        = "bar-bc-iac"
  force_destroy = true
}
