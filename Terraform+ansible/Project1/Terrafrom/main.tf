provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUONU6GGHCHVZM6GV"
  secret_key = "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"
}

resource "aws_instance" "demo-teraform" {
    ami = var.instance_ami
  instance_type = var.instanceType
  
}
# resource "aws_key_pair" "kp" {
#   key_name = "ansible_key"
#   public_key = 
#   depends_on = [ null_resource.ansible_inventory ]
# }

resource "null_resource" "ansible_inventory" {
  provisioner "local-exec" {
    command = "echo '${join("\n", aws_instance.demo-teraform[*].public_ip)}' >> /Users/brathod/Documents/Terraform+ansible/Project1/Anisble/hosts"
    # command = ""
  }

  depends_on = [aws_instance.demo-teraform]
}



