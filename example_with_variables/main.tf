terraform {
  required_version = ">= 0.14.0"
}

provider "aws" {
  region = var.aws_region
}

provider "azurerm" {
  features {}
}

provider "google" {
  region = var.google_region
}

resource "aws_s3_bucket" "foo" {
  bucket        = "bar-bc-iac"
  force_destroy = true
  tags = {
    git_commit           = "3cbdbba77ec88cafbc8a007d8bb9bd72fc2c1a94"
    git_file             = "example_with_variables/main.tf"
    git_last_modified_at = "2022-02-11 19:27:51"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "89e00f04-e5a3-4b41-8405-ecd99e958ffb"
  }
}

resource "azurerm_resource_group" "foo" {
  name     = "azrg"
  location = var.azure_region
  tags = {
    git_commit           = "fc4c9589b4edbdad37a580027c8e35ac2896d84b"
    git_file             = "example_with_variables/main.tf"
    git_last_modified_at = "2022-01-27 20:46:55"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "c353b691-0db9-4dc0-9436-0d4151cc7e45"
  }
}

resource "azurerm_storage_account" "foo" {
  name                     = "azsa"
  resource_group_name      = "azrg"
  location                 = var.azure_region
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    git_commit           = "fc4c9589b4edbdad37a580027c8e35ac2896d84b"
    git_file             = "example_with_variables/main.tf"
    git_last_modified_at = "2022-01-27 20:46:55"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "f273d0f4-c6ed-4dae-b22b-de3bfc86daf6"
  }
}

resource "google_storage_bucket" "foo" {
  name          = "bar-bc-iac"
  location      = var.google_region
  force_destroy = true
  labels = {
    git_commit           = "3cbdbba77ec88cafbc8a007d8bb9bd72fc2c1a94"
    git_file             = "example_with_variables__main_tf"
    git_last_modified_at = "2022-02-11-19-27-51"
    git_last_modified_by = "tkishel"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "1c9f4d8d-81ea-49b8-aba1-e888d58f0ad9"
  }
}