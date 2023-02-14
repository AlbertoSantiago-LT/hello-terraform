terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  

  required_version= ">= 1.2.0"
}


provider "aws" {
  region= "eu-west-1"
}


resourcer "aws_instance" "app_server" {
  ami = ami-0b752bf1df193a6c4
  instances_type = "t2.micro"

  tag = {
    Name = "Terraform"
    APP = "vue2048"
  }
}
