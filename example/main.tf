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
    git_commit           = "fc4c9589b4edbdad37a580027c8e35ac2896d84b"
    git_file             = "example/main.tf"
    git_last_modified_at = "2022-01-27 20:46:55"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
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
    git_commit           = "fc4c9589b4edbdad37a580027c8e35ac2896d84b"
    git_file             = "example/main.tf"
    git_last_modified_at = "2022-01-27 20:46:55"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
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
  tags = {
    git_commit           = "c39ef7abc9c0f5716f0c2ad45b2b103a30ef69de"
    git_file             = "example/main.tf"
    git_last_modified_at = "2022-01-28 14:56:02"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "6776f83d-d58b-4079-810b-8e5510685952"
  }
}

resource "aws_s3_bucket" "aaa" {
  bucket        = "bbb-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
  tags = {
    git_commit           = "3f2b4b769f36f96f72d4bb8db5212c9471bff05d"
    git_file             = "example/main.tf"
    git_last_modified_at = "2022-01-28 15:54:41"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "7a495e26-00f8-49fa-9aa2-942740d65410"
  }
}