terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = ">=2.0.0"
    }
  }
  required_version = ">= 1.7.0"
}

provider "aws" {
  region = var.region
}