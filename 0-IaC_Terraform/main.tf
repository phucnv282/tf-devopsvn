terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "hello" {
  ami           = "ami-0556fb70e2e8f34b7"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
