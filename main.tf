provider "aws" {
region = "ap-south-1"
access_key = "AKIATTAU7W3M74WQ2CRB"
secret_key = "V/nOliSidARl+YAfCb3oX4D8L+9bqduM/UGnhgMc"
}

resource "aws_instance" "ec2_example" {
  ami                    = "ami-0cca134ec43cf708f"
  instance_type          = var.instance_type
  tags = {
    Name = "Terraform EC2"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 40

  tags = {
    Name = "HelloWorld" 
  }
}




