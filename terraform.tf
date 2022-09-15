terraform {
/*
  backend "s3" {
    bucket = "terraform-training-circleci-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-training"
    dynamodb_table = "terraform-training-circleci-terraform-lock-table"
  }
*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30.0"
    }
  }

  required_version = ">= 1.2.8"
}

