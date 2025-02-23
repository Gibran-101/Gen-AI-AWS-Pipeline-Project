# providers.tf
provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Specify your desired version
    }
  }
  required_version = ">= 1.0.0"
}