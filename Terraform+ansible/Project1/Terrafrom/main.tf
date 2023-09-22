provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUONU6GGHCHVZM6GV"
  secret_key = "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"
}

resource "aws_instance" "demo-teraform" {
    ami = var.instance_ami
  instance_type = var.instanceType
  
} 




