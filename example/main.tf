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
    git_commit           = "3cbdbba77ec88cafbc8a007d8bb9bd72fc2c1a94"
    git_file             = "example/main.tf"
    git_last_modified_at = "2022-02-11 19:27:51"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "265e56dc-3099-4efe-b116-476178ee73fb"
  }
}
