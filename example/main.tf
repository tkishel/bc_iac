terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "foo" {
  bucket        = "bar-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
  tags = {
    git_commit           = "55efe456cd16a4b5f8edf71ffc1d594c696a3b82"
    git_file             = "example/main.tf"
    git_last_modified_at = "2021-06-16 15:41:06"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "pc_iac"
    yor_trace            = "265e56dc-3099-4efe-b116-476178ee73fb"
  }
}

resource "aws_s3_bucket" "xxx" {
  bucket        = "yyy-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
  tags = {
    git_commit           = "954c181987396446eb8e45635fbaf388fd226934"
    git_file             = "example/main.tf"
    git_last_modified_at = "2021-10-21 19:45:08"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "pc_iac"
    yor_trace            = "93977a37-0ec3-4dc2-9ecf-ebef7fa2d429"
  }
}

resource "aws_s3_bucket" "zzz" {
  bucket        = "aaa-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
}

resource "aws_s3_bucket" "aaa" {
  bucket        = "bbb-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
}