provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = "t2.medium"

  root_block_device {
    volume_size           = 10
    volume_type          = "gp2"
    encrypted            = true
  }

  tags = {
    Name = "demo-ec2-instance"
  }
}

variable "aws_region" {}
variable "ami_id" {}