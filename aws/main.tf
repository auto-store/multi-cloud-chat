provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "chat_app" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.keypair

  tags = {
    Name = var.instance_name
  }

  user_data     = "${file("${path.module}/scripts/startup.sh")}"

}