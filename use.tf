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


# calling module 

    module "my-nikhil-module-ec2" {
    source = "./modules/ec2"
    Nikhil-ami-id = "ami-0a25a306450a2cba3"
    vm-name = "Nikhil-vm-1"
    vm-size = "t2.nano"
    ec2-key-name = "nikhil-day3-key"
    privet-key-algo = "RSA"
    key-size = 4096
    my-vpc-id = "vpc-02d56e9aa1ce2f114"
    my-sec-group-name = "my-sec-group"
    novm=2
}
