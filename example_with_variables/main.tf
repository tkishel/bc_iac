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
}

resource "azurerm_resource_group" "foo" {
  name     = "azrg"
  location = var.azure_region
}

resource "azurerm_storage_account" "foo" {
  name                     = "azsa"
  resource_group_name      = "azrg"
  location                 = var.azure_region
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "google_storage_bucket" "foo" {
  name          = "bar-bc-iac"
  location      = var.google_region
  force_destroy = true
}