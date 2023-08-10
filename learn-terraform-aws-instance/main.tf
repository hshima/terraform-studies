# Build infrastructure
# https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09538990a0c4fe9be"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}
