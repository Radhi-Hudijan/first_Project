terraform {
required_providers {
  aws ={
    source = "hashicorp/aws"
    version = "~> 4.16"
  }
}

required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-ease-1"
}

resource "aws_instance" "testAppServer" {
    instance_type = "t3.micro"
    ami = "ami-830c94e3"
    tags = {
      Name = "WebServer"
    }
  
}