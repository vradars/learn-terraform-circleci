terraform {
  backend "s3" {
    bucket = "terramino-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terramino-terraform-lock-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30.0"
    }
  }

  required_version = ">= 1.2.8"
}

