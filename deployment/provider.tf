provider "aws" {
  region  = "ap-southeast-2"
  profile = "default"
}

terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
