terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

variable "ami" {
  default = "ami-04d29b6f966df1537"
}

variable "instance_type" {
  default = "t2.micro"
}

output "public_ip" {
  value = aws_instance.web.public_ip
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Terraform"
  }
}
