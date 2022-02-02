terraform {
  required_version = ">= 0.13.0"
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
  bucket        = "bar-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
  tags = {
    git_commit           = "fc4c9589b4edbdad37a580027c8e35ac2896d84b"
    git_file             = "example_with_variables/main.tf"
    git_last_modified_at = "2022-01-27 20:46:55"
    git_last_modified_by = "tkishel@gmail.com"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "ea10e553-1d2e-433e-8928-992c75fb4e66"
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
    yor_trace            = "69478f9d-9695-4f15-9fda-872289850a22"
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
    yor_trace            = "4b63aa6e-c18c-4cf4-8c92-3367b020251e"
  }
}

resource "google_storage_bucket" "foo" {
  name          = "bar-pc-iac"
  location      = var.google_region
  force_destroy = true
  labels = {
    git_commit           = "fc4c9589b4edbdad37a580027c8e35ac2896d84b"
    git_file             = "example_with_variables__main_tf"
    git_last_modified_at = "2022-01-27-20-46-55"
    git_last_modified_by = "tkishel"
    git_modifiers        = "tkishel"
    git_org              = "tkishel"
    git_repo             = "bc_iac"
    yor_trace            = "5f653d4a-4141-4daa-a1b4-19e1b2007332"
  }
}








# For comparison:
# acl: "public-read-write" vs "private"
# versioning enabled: true vs false

####
# Disable Global Protect
# To Avoid:
# Error: Error building account: Error getting authenticated object ID: Error parsing json result from the Azure CLI: Error waiting for the Azure CLI: exit status 1
####
