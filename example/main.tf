terraform {
  required_version = ">= 0.14.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "foo" {
  bucket        = "bar-bc-iac"
  force_destroy = true
  tags = {
    git_commit           = "55efe456cd16a4b5f8edf71ffc1d594c696a3b82"
    git_file             = "example/main.tf"
    git_last_modified_at = "2021-06-16 15:41:06"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "265e56dc-3099-4efe-b116-476178ee73fb"
  }
}
