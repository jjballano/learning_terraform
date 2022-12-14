terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.3.6"
}

provider "aws" {
  profile = "personal"
  region = "eu-west-1"
}

resource "aws_instance" "example_app_server" {
  ami = "ami-01cae1550c0adea9c"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}