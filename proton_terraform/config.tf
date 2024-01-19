terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }

  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      "proton:environment" = var.environment.name
    }
  }
}

variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}