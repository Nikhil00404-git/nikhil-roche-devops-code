terraform {
  backend "s3" {
    bucket         = "nikhil-roche-terraform-bucket"
    key            = "dev/Nikhil/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "Nikhil-roche-table1" 
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # region location info
  region = "ap-southeast-2"
}


